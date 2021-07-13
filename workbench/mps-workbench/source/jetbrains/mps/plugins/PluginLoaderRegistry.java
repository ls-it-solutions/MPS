/*
 * Copyright 2003-2021 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.plugins;

import com.intellij.configurationStore.JdomSerializer;
import com.intellij.ide.ApplicationInitializedListener;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.extensions.ExtensionPoint;
import com.intellij.openapi.fileEditor.ex.FileEditorManagerEx;
import com.intellij.openapi.progress.EmptyProgressIndicator;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.util.IconLoader;
import com.intellij.openapi.wm.ex.WindowManagerEx;
import com.intellij.openapi.wm.impl.ProjectFrameHelper;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.classloading.ModuleClassLoader;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.plugins.PluginLoaderRegistry.EventAccumulation.Snapshot;
import jetbrains.mps.plugins.applicationplugins.BaseApplicationPlugin;
import jetbrains.mps.plugins.projectplugins.BaseProjectPlugin;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.SolutionKind;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.JavaNameUtil;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Queue;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.toCollection;

/**
 * Represents a single class loading listener to trigger the plugin reload in
 * {@link jetbrains.mps.plugins.applicationplugins.ApplicationPluginManager}
 * and {@link jetbrains.mps.plugins.projectplugins.ProjectPluginManager}. It does that via the {@link jetbrains.mps.plugins.PluginReloadingListener} interface.
 * <p>
 * It listens for class loading events, calculate the plugin contributors which need to be updated and notifies these managers.
 * <p>
 */
public class PluginLoaderRegistry implements Disposable {
  private static final Logger LOG = Logger.getLogger(PluginLoaderRegistry.class);

  private final ClassLoaderManager myClassLoaderManager;
  private final ModelAccess myModelAccess;

  private final DeployListener myClassesListener = new SchedulingUpdateListener();
  private final Set<PluginContributor> myCurrentContributors = new LinkedHashSet<>();
  private final Set<PluginLoader> myCurrentLoaders = new LinkedHashSet<>();
  private final List<PluginReloadingListener> myReloadingListeners = new CopyOnWriteArrayList<>();

  private final AtomicBoolean myUpdateIsScheduledInEDT = new AtomicBoolean(false);
  private final AtomicBoolean myAppInitialized = new AtomicBoolean();

  public PluginLoaderRegistry() {
    // FIXME Now, PluginLoaderRegistry is app component. Seems easy to convert to a
    //       service, however, doesn't make too much sense unless we convert
    //       ApplicationPluginManager and ProjectPluginManager as well.
    //       Switching to extension points for these managers might be an option
    //       although I don't clearly see how to approach per-project PPM and app-wide
    //       APM in a single extpoint (two would be too much, imo).
    // Note, registerAppInitListener fits service story quite well - it would be the
    // listener to activate PLR service by issuing an update.
    MPSCoreComponents coreComponents = MPSCoreComponents.getInstance();
    Platform mpsPlatform = coreComponents.getPlatform();
    myClassLoaderManager = mpsPlatform.findComponent(ClassLoaderManager.class);
    SRepository repo = mpsPlatform.findComponent(MPSModuleRepository.class);
    assert repo != null;
    myModelAccess = repo.getModelAccess();

    myClassLoaderManager.addListener(myClassesListener);
    registerAppInitListener();
    assert myCurrentContributors.isEmpty();
  }

  private void registerAppInitListener() {
    ApplicationInitializedListener applicationInitializedListener = new MyApplicationInitializedListener();
    getExtensionPoint().registerExtension(applicationInitializedListener);
  }

  @NotNull
  private static ExtensionPoint<Object> getExtensionPoint() {
    return ApplicationManager.getApplication().getExtensionArea().getExtensionPoint("com.intellij.applicationInitializedListener");
  }

  private static Set<PluginContributor> createPluginContributors(Collection<ReloadableModule> modules) {
    List<ReloadableModule> sortedModules = new PluginSorter(modules).sortByDependencies();

    List<PluginContributor> contributors = new ArrayList<>();
    for (ReloadableModule module : sortedModules) {
      PluginContributor contributor = createPluginContributor(module);
      if (contributor != null) {
        contributors.add(contributor);
      }
    }

    return new LinkedHashSet<>(contributors);
  }

  private void fireAfterPluginsLoaded(Delta<PluginContributor> contributorsDelta) {
    List<PluginContributor> contributorsToLoad = new ArrayList<>(contributorsDelta.toLoad);
    for (PluginReloadingListener listener : myReloadingListeners) {
      listener.afterPluginsLoaded(contributorsToLoad);
    }
  }

  private void fireBeforePluginsUnloaded(Delta<PluginLoader> loadersDelta,
                                         Delta<PluginContributor> contributorsDelta) {
    List<PluginContributor> contributorsToUnload = loadersDelta.toUnload.isEmpty() ? new ArrayList<>(contributorsDelta.toUnload)
                                                                                   : new ArrayList<>(myCurrentContributors);
    if (!loadersDelta.toLoad.isEmpty()) {
      contributorsToUnload.addAll(myCurrentContributors);
    }
    for (PluginReloadingListener listener : myReloadingListeners) {
      listener.beforePluginsUnloaded(contributorsToUnload);
    }
  }

  public void addReloadingListener(@NotNull PluginReloadingListener listener) {
    myReloadingListeners.add(listener);
  }

  public void removeReloadingListener(PluginReloadingListener listener) {
    myReloadingListeners.remove(listener);
  }


  @Nullable
  private static PluginContributor createPluginContributor(@NotNull ReloadableModule module) {
    if (module.getStatus().isDeployed()) {
      LOG.trace("Creating plugin contributor from " + module);
      return new ModulePluginContributor(module);
    }
    return null;
  }

  /**
   * Registers new loader asynchronously in EDT.
   * Before the registration we load all contributors which have been loaded up to that moment
   */
  public void register(@NotNull final PluginLoader loader) {
    LOG.debug("Registering the " + loader);
    myLoaderDelta.load(Collections.singleton(loader));
    update();
  }

  /**
   * Unregisters the loader asynchronously in EDT.
   * Before the unregistration we unload all contributors which have remained loaded at that moment
   */
  public void unregister(@NotNull final PluginLoader loader) {
    LOG.debug("Unregistering the " + loader);
    myLoaderDelta.unload(Collections.singleton(loader));
    forceUpdate();
  }

  /**
   * Loads the given plugin contributors one by one. Asynchronously via the platform edt queue.
   */
  private void loadContributors(Set<PluginContributor> contributors, Set<PluginLoader> pluginLoaders, ProgressMonitor monitor) {
    if (pluginLoaders.isEmpty() || contributors.isEmpty()) {
      return;
    }
    final long beginTime = System.nanoTime();
    try {
      monitor.start("Loading", pluginLoaders.size());
      for (final PluginLoader loader : pluginLoaders) {
        List<PluginContributor> contribList = Collections.unmodifiableList(new ArrayList<>(contributors));
        loader.loadPlugins(contribList);
        monitor.advance(1);
      }
    } finally {
      monitor.done();
      LOG.info(String.format("Loading of %d plugins took %.3f s", contributors.size(), (System.nanoTime() - beginTime) / 1e9));
    }
  }

  /**
   * Unloads the given plugin contributors one by one. Asynchronously via the platform edt queue.
   */
  private void unloadContributors(final Set<PluginContributor> contributors, Set<PluginLoader> pluginLoaders, ProgressMonitor monitor) {
    if (pluginLoaders.isEmpty() || contributors.isEmpty()) {
      return;
    }
    monitor.start("Unloading", pluginLoaders.size());
    long beginTime = System.nanoTime();
    try {
      for (final PluginLoader loader : pluginLoaders) {
        List<PluginContributor> contribList = Collections.unmodifiableList(new ArrayList<>(contributors));
        loader.unloadPlugins(contribList);
        monitor.advance(1);
      }
    } finally {
      monitor.done();
      LOG.info(String.format("Unloading of %d plugins took %.3f s", contributors.size(), (System.nanoTime() - beginTime) / 1e9));
    }
  }

  private Set<PluginContributor> calcContributorsToUnload(Set<PluginContributor> currentContributors, Set<ReloadableModule> toUnload) {
    List<PluginContributor> toUnloadContributors = new ArrayList<>();
    for (PluginContributor contributor : currentContributors) {
      if (contributor instanceof ModulePluginContributor) {
        ReloadableModule module = ((ModulePluginContributor) contributor).getModule();
        if (toUnload.contains(module)) {
          toUnloadContributors.add(contributor);
        }
      }
    }
    Collections.reverse(toUnloadContributors);
    return new LinkedHashSet<>(toUnloadContributors);
  }

  private Set<PluginContributor> getContributorsFromExtPoint() {
    class ExtPointContributor extends PluginContributor {
      private final ComponentContributorExtension myExtension;

      private ExtPointContributor(ComponentContributorExtension extension) {
        myExtension = extension;
      }

      @Override
      public BaseProjectPlugin createProjectPlugin() {
        if (myExtension.myProjectPartContributor != null) {
          return instantiateSafe(myExtension.myProjectPartContributor);
        }
        return null;
      }

      @Override
      public BaseApplicationPlugin createApplicationPlugin() {
        if (myExtension.myApplicationPartContributor != null) {
          return instantiateSafe(myExtension.myApplicationPartContributor);
        }
        return null;
      }

      private <T> T instantiateSafe(String contributorClassName) {
        try {
          Class<T> cls = myExtension.findClass(contributorClassName);
          return cls.newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
          String msg = String.format("Failed to load class %s from plugin %s", contributorClassName, getContributingPluginId());
          PluginLoaderRegistry.LOG.error(msg, ex);
          return null;
        }
      }

      @Override
      public int hashCode() {
        String contributingPlugin = getContributingPluginId();
        return Objects.hash(contributingPlugin, myExtension.myApplicationPartContributor, myExtension.myProjectPartContributor);
      }

      @Override
      public boolean equals(Object obj) {
        if (obj == this) {
          return true;
        }
        if (false == obj instanceof ExtPointContributor) {
          return false;
        }
        ExtPointContributor other = (ExtPointContributor) obj;
        return other.getContributingPluginId().equals(getContributingPluginId())
               && Objects.equals(myExtension.myApplicationPartContributor, other.myExtension.myApplicationPartContributor)
               && Objects.equals(myExtension.myProjectPartContributor, other.myExtension.myProjectPartContributor);
      }

      @Override
      public String toString() {
        String app = JavaNameUtil.shortName(myExtension.myApplicationPartContributor);
        String proj = JavaNameUtil.shortName(myExtension.myProjectPartContributor);
        return String.format("ext-point contributor (%s, %s) from %s", app, proj, getContributingPluginId());
      }

      private String getContributingPluginId() {
        return myExtension.getPluginDescriptor().getPluginId().getIdString();
      }
    }
    HashSet<PluginContributor> rv = new HashSet<>();
    for (ComponentContributorExtension ext : ComponentContributorExtension.POINT.getExtensions()) {
      rv.add(new ExtPointContributor(ext));
    }
    return rv;
  }

  /**
   * here we come from the CLM notifications #onLoaded, #onUnloaded
   */
  private void update() {
    if (myUpdateIsScheduledInEDT.compareAndSet(false, true)) {
      ApplicationManager.getApplication().runReadAction(this::runTaskLater);
    }
  }

  /**
   * here we come from loaders registering/unregistering
   *
   * we would like on app/project dispose to unload all extensions in time so we ignore if another update is already scheduled
   */
  private void forceUpdate() {
    LOG.debug("force update");
    if (!ThreadUtils.isInEDT()) {
      update();
    } else {
      ThreadUtils.assertEDT();
      UpdatingTask task = new UpdatingTask(null);
      if (isAppLoaded()) {
        // here we are also when #disposeComponent is called in AppPlManager
        // async will not do, the app will be disposed then, so sync update with a good old UI freeze
        myUpdateIsScheduledInEDT.set(true);
        task.update(new EmptyProgressMonitor());
      } else {
        // here we are on any not first project open
        update();
      }
    }
  }

  // we need to get out of application read since it is impossible to #invokeAndWait from read, lets postpone
  private void runTaskLater() {
    assert (ApplicationManager.getApplication().isReadAccessAllowed());
    LOG.debug("running the task later");
    ProgressIndicator globalProgressIndicator = ProgressManager.getGlobalProgressIndicator();
    // trying to pass the current indicator, for example this helps us to reload plugins within the global project open indicator
    ApplicationManager.getApplication().executeOnPooledThread(() -> runTask(globalProgressIndicator));
  }

  // now we are not in read
  private void runTask(@Nullable ProgressIndicator oldIndicator) {
    if (ApplicationManager.getApplication() == null || ApplicationManager.getApplication().isDisposed()) {
      return;
    }
    assert (!ApplicationManager.getApplication().isReadAccessAllowed());
    assert !ThreadUtils.isInEDT(); // we are in EDT iff we have write

    LOG.trace("running task with old/new indicator");
    UpdatingTask task = new UpdatingTask(null);
    if (!isAppLoaded()) {
      LOG.trace("rescheduling task");
      return;
    }
    assert isAppLoaded();
    if (oldIndicator == null) {
      // trying to find any indicator
      oldIndicator = ProgressManager.getGlobalProgressIndicator();
    }
    if (oldIndicator != null && oldIndicator.isShowing()) {
      // lets run under the old indicator
      LOG.trace("running with the old");
      task.run(oldIndicator);
    } else {
      // usually this section is called after rebuild/make
      // we have no indicator -- lets create one
      LOG.trace("running with the new");
      // This task is instance of UpdatingTask => instance of Task.Modal
      // As result method Task#queue require to be invoked inside write thread: see CoreProgressManager#run(Task)
      ApplicationManager.getApplication().invokeLaterOnWriteThread(() -> task.queue());
    }
  }

  // we don't want to do anything until components are all #initialized
  // this is just to guarantee that we will have only one plugin reload before we open a project
  // consider the period when app is not loaded a dead zone for this class, the plugin update are disabled during that moment
  private boolean isAppLoaded() {
    return myAppInitialized.get();
  }

  /**
   * This task flushes all added/removed loaders and added/removed contributors
   * @see #update
   */
  private class UpdatingTask extends Task.Modal {
    UpdatingTask(@Nullable Project project) {
      super(project, "Reloading MPS Plugins", false);
    }

    @Override
    public void run(@NotNull ProgressIndicator indicator) {
      // here we just try to update the caption and freeze edt to do our reload of extensions there
      assert !ThreadUtils.isInEDT();
      boolean showing = indicator.isShowing();
      if (!showing) {
        // we cannot do anything, lets just freeze without any progress
        ApplicationManager.getApplication().invokeAndWait(() -> update(new EmptyProgressMonitor()));
      } else {
        try {
          indicator.pushState();
          indicator.setText("Reloading MPS Plugins"); // we hope that the user will see the text but that is unlikely
//          this also does not work
//          try {
//            TimeUnit.MILLISECONDS.sleep(200);
//          } catch (InterruptedException e) {
//            e.printStackTrace();
//          }
          ApplicationManager.getApplication().invokeAndWait(() -> update(new EmptyProgressMonitor()));
        } finally {
          indicator.popState();
        }
      }
    }

    public void update(@NotNull ProgressMonitor monitor) {
      try {
        ThreadUtils.assertEDT();
        if (ApplicationManager.getApplication().isDisposed()) return;
        myUpdateIsScheduledInEDT.compareAndSet(true, false);
        monitor.start("Reloading MPS Plugins", 6);
        ProgressManager.checkCanceled();
        myModelAccess.runReadAction(() -> {
          myClassLoaderManager.runTransaction(() -> {
            // NOTE: when we call #reset we are bound to process those changes, otherwise we lose them
            // for instance, that is the reason we cannot call #checkCancelled here
            Delta<PluginLoader> loadersDelta = myLoaderDelta.reset();
            @NotNull Snapshot snapshot = myAccumulation.reset();
            try {
              // this is in clm transaction, so we do not get any updates on the delta with modules
              Delta<ReloadableModule> moduleDelta = snapshot.getDelta();

              if (loadersDelta.isEmpty() && moduleDelta.isEmpty()) {
                LOG.debug("Nothing to do in update");
                return;
              }
              monitor.advance(1);

              Set<PluginContributor> toUnloadContributors = calcContributorsToUnload(myCurrentContributors, getPluginModules(moduleDelta.toUnload));
              Set<PluginContributor> toLoadContributors = createPluginContributors(getPluginModules(moduleDelta.toLoad));
              Delta<PluginContributor> contributorsDelta = new Delta<>(toLoadContributors, toUnloadContributors);

              LOG.info("Running Update Task : loaders " + loadersDelta + "; contributors : " + contributorsDelta + "; " + Thread.currentThread());
              fireBeforePluginsUnloaded(loadersDelta, contributorsDelta);
              monitor.step("Unloading...");
              removeLoaders(monitor, loadersDelta);
              removeContributors(monitor, contributorsDelta);
              clearIDEMenusFromOurActionRefs();
              clearIDEASerializationCaches();
              clearIDEAIconsGlobalCache(snapshot.getCLsToBeDisposed());
              monitor.step("Loading...");
              addLoaders(monitor, loadersDelta);
              addIdeaExtPointPluginContributors(monitor);
              addContributors(monitor, contributorsDelta);
              fireAfterPluginsLoaded(contributorsDelta);
            } catch (Throwable t) {
              LOG.error("caught some error during #update", t);
            } finally {
              snapshot.invokePostRunnables();
            }
          });
        });
      } catch (VirtualMachineError e) {
        throw e;
      } catch (ProcessCanceledException ignored) {
      } catch (Throwable t) {
        LOG.error("Problem while reloading mps-plugins in EDT", t);
      } finally {
        monitor.done();
      }
    }

    private void addContributors(@NotNull ProgressMonitor monitor, @NotNull Delta<PluginContributor> contributorsDelta) {
      Set<PluginContributor> contributorsToAdd = new LinkedHashSet<>(contributorsDelta.toLoad);
      contributorsToAdd.removeAll(myCurrentContributors);
      LOG.debug("Loading " + contributorsToAdd.size() + " new contributors to " + myCurrentLoaders.size() + " current loaders");
      loadContributors(contributorsToAdd, myCurrentLoaders, monitor.subTask(1));
      myCurrentContributors.addAll(contributorsToAdd);
    }

    private void addIdeaExtPointPluginContributors(@NotNull ProgressMonitor monitor) {
      Set<PluginContributor> factories = new LinkedHashSet<>(getContributorsFromExtPoint());
      factories.removeAll(myCurrentContributors);
      LOG.debug("Loading " + factories.size() + " Factories");
      loadContributors(factories, myCurrentLoaders, monitor.subTask(1));
      myCurrentContributors.addAll(factories);
    }

    private void addLoaders(@NotNull ProgressMonitor monitor, @NotNull Delta<PluginLoader> loadersDelta) {
      Set<PluginLoader> loadersToAdd = loadersDelta.toLoad;
      loadersToAdd.removeAll(myCurrentLoaders);
      LOG.debug("Loading " + myCurrentContributors.size() + " current contributors to new " + loadersToAdd.size() + " loaders");
      loadContributors(myCurrentContributors, loadersToAdd, monitor.subTask(1));
      myCurrentLoaders.addAll(loadersToAdd);
    }

    private void removeContributors(@NotNull ProgressMonitor monitor, @NotNull Delta<PluginContributor> contributorsDelta) {
      Set<PluginContributor> contributorsToRemove = contributorsDelta.toUnload;
      contributorsToRemove.retainAll(myCurrentContributors); // just a precaution
      LOG.debug("Unloading " + contributorsToRemove.size() + " contributors from " + myCurrentLoaders.size() + " current loaders");
      unloadContributors(contributorsToRemove, myCurrentLoaders, monitor.subTask(1));
      myCurrentContributors.removeAll(contributorsToRemove);
    }

    private void removeLoaders(@NotNull ProgressMonitor monitor, @NotNull Delta<PluginLoader> loadersDelta) {
      Set<PluginLoader> loadersToRemove = loadersDelta.toUnload;
      loadersToRemove.retainAll(myCurrentLoaders); // just a precaution
      LOG.debug("Unloading " + myCurrentContributors.size() + " current contributors from " + loadersToRemove.size() + " loaders");
      unloadContributors(myCurrentContributors, loadersToRemove, monitor.subTask(1));
      myCurrentLoaders.removeAll(loadersToRemove);
    }

    private void clearIDEAIconsGlobalCache(@NotNull Collection<ModuleClassLoader> classLoadersToBeDisposed) {
      for (ModuleClassLoader cl : classLoadersToBeDisposed) {
        IconLoader.detachClassLoader(cl);
      }
      for (Project project : ProjectManager.getInstanceIfCreated().getOpenProjects()) {
        FileEditorManagerEx.getInstanceEx(project).refreshIcons();
      }
    }

    private void clearIDEASerializationCaches() {
      try {
        Optional<JdomSerializer> jdomSerializer = ServiceLoader.load(JdomSerializer.class, JdomSerializer.class.getClassLoader()).findFirst();
        jdomSerializer.ifPresent(JdomSerializer::clearSerializationCaches);
      } catch (Throwable t) {
        LOG.error("Caught exception while clearing IDEA serialization caches", t);
      }
  }

    private void clearIDEMenusFromOurActionRefs() {
      try {
        WindowManagerEx windowManager = WindowManagerEx.getInstanceEx();
        for (Project project : ProjectManager.getInstance().getOpenProjects()) {
          ProjectFrameHelper frame = windowManager.getFrameHelper(project);
          if (frame != null) {
            frame.updateView();
          }
        }

        ProjectFrameHelper frame = windowManager.getFrameHelper(null);
        if (frame != null) {
          frame.updateView();
        }
      } catch (Throwable t) {
        LOG.error("Caught exception while clearing IDE menus", t);
      }
    }
  }

  private Set<ReloadableModule> getPluginModules(Collection<ReloadableModule> modules) {
    return modules.stream()
                  .filter(this::isPluginModule)
                  .collect(toCollection(LinkedHashSet::new));
  }

  private boolean isPluginModule(SModule module) {
    if (module instanceof ReloadableModule) {
      if (module instanceof Language) {
        return true;
      }

      if (module instanceof Solution) {
        SolutionKind kind = ((Solution) module).getKind();
        return kind != SolutionKind.NONE;
      }
    }
    return false;
  }

  @Override
  public void dispose() {
    myClassLoaderManager.removeListener(myClassesListener);
  }

  private class SchedulingUpdateListener implements DeployListener {
    @Override
    public void onUnloaded(@NotNull ResourceTrackerCallback callback, @NotNull ProgressMonitor monitor) {
      Set<ModuleClassLoader> classLoaders2Dispose = callback.acquire2(PluginLoaderRegistry.this);
      myAccumulation.onUnload(classLoaders2Dispose);
      myAccumulation.schedulePostRunnable(() -> callback.release(PluginLoaderRegistry.this));
    }

    @Override
    public void onLoaded(@NotNull Set<ReloadableModule> loadedModules, @NotNull ProgressMonitor monitor) {
      myAccumulation.onLoad(loadedModules);
      update();
    }
  }

  private final EventAccumulation myAccumulation = new EventAccumulation();
  private final Delta<PluginLoader> myLoaderDelta = new Delta<>();

  static class EventAccumulation {
    final Delta<ReloadableModule> myDelta = new Delta<>();
    final List<ModuleClassLoader> myCLsToBeDisposed = new ArrayList<>(); // to be disposed in the next invocation of UpdatingTask#update
    final Queue<Runnable> myPostRunnableQueue = new LinkedList<>();

    public synchronized void onUnload(@NotNull Set<ModuleClassLoader> disposingCLs) {
      Set<ReloadableModule> unloadedModules = disposingCLs.stream()
                                                          .map(ModuleClassLoader::getModule)
                                                          .collect(Collectors.toSet());
      myDelta.unload(unloadedModules);
      myCLsToBeDisposed.addAll(disposingCLs);
    }

    public void onLoad(Set<ReloadableModule> loadedModules) {
      myDelta.load(loadedModules);
    }

    public synchronized void schedulePostRunnable(@NotNull Runnable r) {
      myPostRunnableQueue.add(r);
    }

    public synchronized EventAccumulation.Snapshot reset() {
      List<Runnable> postRunnablesToRun = shapshotPostRunnables();
      Delta<ReloadableModule> delta0 = shapshotDelta();
      List<ModuleClassLoader> cls2dispose = snapshotCLs();
      return new Snapshot() {
        @NotNull
        @Override
        public Delta<ReloadableModule> getDelta() {
          return delta0;
        }

        @NotNull
        @Override
        public List<ModuleClassLoader> getCLsToBeDisposed() {
          return cls2dispose;
        }

        @Override
        public void invokePostRunnables() {
          for (Runnable r : postRunnablesToRun) {
            r.run();
          }
        }
      };
    }

    @NotNull
    private List<ModuleClassLoader> snapshotCLs() {
      List<ModuleClassLoader> cls2dispose = new ArrayList<>(myCLsToBeDisposed);
      myCLsToBeDisposed.clear();
      return cls2dispose;
    }

    @NotNull
    private Delta<ReloadableModule> shapshotDelta() {
      return myDelta.reset();
    }

    @NotNull
    private List<Runnable> shapshotPostRunnables() {
      List<Runnable> postRunnablesToRun = new ArrayList<>();
      Runnable first;
      while ((first = myPostRunnableQueue.poll()) != null) {
        postRunnablesToRun.add(first);
      }
      return postRunnablesToRun;
    }

    interface Snapshot {
      @NotNull Delta<ReloadableModule> getDelta();

      @NotNull
      List<ModuleClassLoader> getCLsToBeDisposed();

      void invokePostRunnables();
    }
  }

  private static final class Delta<T> {
    private final Set<T> toUnload;
    private final Set<T> toLoad;

    public Delta() {
      toUnload = new LinkedHashSet<>();
      toLoad = new LinkedHashSet<>();
    }

    public Delta(@NotNull Delta<T> delta) {
      this(delta.toLoad, delta.toUnload);
    }

    public Delta(@NotNull Set<T> toLoad, @NotNull Set<T> toUnload) {
      this.toLoad = new LinkedHashSet<>(toLoad);
      this.toUnload = new LinkedHashSet<>(toUnload);
    }

    public synchronized void clear() {
      toUnload.clear();
      toLoad.clear();
    }

    public synchronized void load(Set<T> ts) {
      toLoad.addAll(ts);
    }

    public synchronized void unload(Set<T> ts) {
      toUnload.addAll(ts);
      toLoad.removeAll(ts);
    }

    public synchronized void apply(Set<T> tsToChange) {
      tsToChange.addAll(toLoad);
      tsToChange.removeAll(toUnload);
    }

    public synchronized boolean isEmpty() {
      return toLoad.isEmpty() && toUnload.isEmpty();
    }

    @Override
    public String toString() {
      return "[toLoad: " + toLoad.size() + "; toUnload:" + toUnload.size() + "]";
    }

    @NotNull
    public synchronized Delta<T> reset() {
      Delta<T> tDelta = new Delta<>(toLoad, toUnload);
      toLoad.clear();
      toUnload.clear();
      return tDelta;
    }
  }

  private class MyApplicationInitializedListener implements ApplicationInitializedListener {
    /**
     * Somehow TaskModal#queue does not work properly during app initialization (see #runTask).
     * So I call UpdatingTask#run explicitly
     */
    @Override
    public void componentsInitialized() {
      myAppInitialized.set(true);
      new UpdatingTask(null).run(new EmptyProgressIndicator());
//      getExtensionPoint().unregisterExtension(MyApplicationInitializedListener.class); // cleared up by IJ
    }
  }
}
