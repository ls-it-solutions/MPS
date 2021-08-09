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
package jetbrains.mps.nodefs;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileListener;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.openapi.vfs.VirtualFileSystem;
import com.intellij.openapi.vfs.newvfs.events.VFileEvent;
import com.intellij.util.LocalTimeCounter;
import com.intellij.util.messages.MessageBus;
import com.intellij.util.messages.Topic;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.RepoListenerRegistrar;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.event.NodeChangeCollector;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.event.AbstractModelChangeEvent;
import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public final class NodeVirtualFileSystem extends VirtualFileSystem implements Disposable {
  /**
   * Custom notification topic for events from this FS. We use it instead of VirtualFileManager.VFS_CHANGES to deal with
   * {@link com.intellij.openapi.command.impl.FileUndoProvider} invalidating undo actions for any beforeFileDeleted event from an FS which is not
   * backed up by LocalHistory (see {@code FileUndoProvider#beforeFileDeletion()} and {@code FileUndoProvider#shouldProcess()}.
   * <p>
   * The drawback of custom dispatch is that IDEA in general would not know about changes in this FS, however, this was the case anyway when
   * the class has been DeprecatedVirtualFileSystem subclass (which did send out VirtualFileListener events for listeners that we explicitly added to the FS ,
   * but did not publish anything to VFS_CHANGES topic)
   * The benefit is that our solution is independent from IDEA.
   * <p>
   * Alternative approaches are:
   * - get IDEA LocalHistory/FileUndoProvider fixed (discussion pending; LocalHistory may re-dispatch events to dependent
   * FileUndoProvider only in case it knows the file - FUP would require this anyway in shouldProcess()).
   * - do not dispatch beforeFileDeleted (utilize the fact FUP#fileDeleted does nothing for events like the one we send out).
   * This approach is quite fragile, though facilitates this class to behave mostly like a regular VFS.
   */
  public static final Topic<NodeFileEventListener> NODE_FS_CHANGES = new Topic<>("MPS Node VFS changes", NodeFileEventListener.class);

  public static NodeVirtualFileSystem getInstance() {
    return (NodeVirtualFileSystem) VirtualFileManager.getInstance().getFileSystem(NodeVirtualFileSystem.PROTOCOL);
  }

  public static boolean isFromNodeFileSystem(VFileEvent event) {
    return PROTOCOL.equals(event.getFileSystem().getProtocol());
  }

  private static final String PROTOCOL = "mps";

//  private final Map<VirtualFileListener, VirtualFileListener> myListenerWrappers = ContainerUtil.newConcurrentMap();

  /*
   * For transition period, left container of virtual files coming from MPSModuleRepository.getInstance(), and use it
   * as default when supplied repository is not found (regardless of whether supplied repo matches MPSModuleRepository instance) for
   * compatibility with existing code, that doesn't manage SRepository well. Shall drop as soon as MPSModuleRepository instance is history
   * (or at least managed and not exposed to user code).
   */
  @ToRemove(version = 3.4)
  private final RepositoryVirtualFiles myGlobalRepoFiles;

  private final Object myRepoVFLock = new Object();
  // I don't expect this collection to grow significantly, hence just List
  private final List<RepositoryVirtualFiles> myPerRepositoryFiles = new CopyOnWriteArrayList<>();
  private final Map<RepositoryVirtualFiles, MyRepositoryListener> myFiles2ListenerMap = new HashMap<>();
  private final SRepositoryContentAdapter myRepositoryListener;
  private final NodeFileEventListener myEventPublisher;
  private boolean myDisposed = false;

  public NodeVirtualFileSystem() {
    final Platform mpsPlatform = ApplicationManager.getApplication().getComponent(MPSCoreComponents.class).getPlatform();
    myGlobalRepoFiles = new RepositoryVirtualFiles(this, mpsPlatform.findComponent(MPSModuleRepository.class));
    myRepositoryListener = new MyRepositoryListener(myGlobalRepoFiles);
    new RepoListenerRegistrar(myGlobalRepoFiles.getRepository(), myRepositoryListener).attach();
    MessageBus messageBus = ApplicationManager.getApplication().getMessageBus();
    myEventPublisher = messageBus.syncPublisher(NODE_FS_CHANGES);
  }

  /**
   * no-op - as long as we dispatch events using {@linkplain #NODE_FS_CHANGES custom notification topic}, we explicitly
   * do not support listeners added this way - they likely assume VFS_CHANGES notifications. Besides, use of
   * BulkFileListener for {@linkplain #NODE_FS_CHANGES our notification topic} is provisional to minimize changes in case we revert back to
   * {@link VirtualFileManager#VFS_CHANGES}. If we stick to custom notifications, we likely use custom listener interface.
   */
  @Override
  public void addVirtualFileListener(@NotNull VirtualFileListener listener) {
    // copied from NewVirtualFileSystem#addVirtualFileListener
//    VirtualFileListener wrapper = new VirtualFileFilteringListener(listener, this);
//    VirtualFileManager.getInstance().addVirtualFileListener(wrapper, this);
//    myListenerWrappers.put(listener, wrapper);
  }

  /**
   * no-op, see {@link #addVirtualFileListener(VirtualFileListener)} for details
   */
  @Override
  public void removeVirtualFileListener(@NotNull VirtualFileListener listener) {
//    VirtualFileListener wrapper = myListenerWrappers.remove(listener);
//    if (wrapper != null) {
//      VirtualFileManager.getInstance().removeVirtualFileListener(wrapper);
//    }
  }

  void register(@NotNull RepositoryVirtualFiles repoFiles) {
    MyRepositoryListener listener;
    synchronized (myRepoVFLock) {
      // assert not more than 1 file container per repository
      RepositoryVirtualFiles existing = findForRepository(repoFiles.getRepository());
      if (existing != null) {
        throw new IllegalArgumentException("Attempt to register another VirtualFile container for the same repository");
      }
      // sort of stack, most recent first. just for fun, no hidden assumptions.
      myPerRepositoryFiles.add(0, repoFiles);
      listener = new MyRepositoryListener(repoFiles);
      myFiles2ListenerMap.put(repoFiles, listener);
    }
    new RepoListenerRegistrar(repoFiles.getRepository(), listener).attach();
  }

  void unregister(@NotNull RepositoryVirtualFiles repoFiles) {
    MyRepositoryListener listener;
    synchronized (myRepoVFLock) {
      myPerRepositoryFiles.remove(repoFiles);
      listener = myFiles2ListenerMap.remove(repoFiles);
    }
    if (listener != null) {
      new RepoListenerRegistrar(repoFiles.getRepository(), listener).detach();
    }
  }

  public MPSNodeVirtualFile getFileFor(@NotNull SRepository repository, @NotNull final SNode node) {
    return getFileFor(repository, node.getReference());
  }

  public MPSNodeVirtualFile getFileFor(@NotNull SRepository repository, @NotNull final SNodeReference nodePointer) {
    final RepositoryVirtualFiles rvf = findForRepository(repository);
    return rvf != null ? rvf.getFileFor(nodePointer) : myGlobalRepoFiles.getFileFor(nodePointer);
  }

  public MPSModelVirtualFile getFileFor(@NotNull SRepository repository, @NotNull final SModelReference modelReference) {
    final RepositoryVirtualFiles rvf = findForRepository(repository);
    return rvf != null ? rvf.getFileFor(modelReference) : myGlobalRepoFiles.getFileFor(modelReference);
  }

  @Nullable
  private RepositoryVirtualFiles findForRepository(@NotNull SRepository repo) {
    synchronized (myRepoVFLock) {
      for (RepositoryVirtualFiles rvf : myPerRepositoryFiles) {
        if (repo.equals(rvf.getRepository())) {
          return rvf;
        }
      }
    }
    return null;
  }

  @Override
  public void dispose() {
    new RepoListenerRegistrar(myGlobalRepoFiles.getRepository(), myRepositoryListener).detach();
    myDisposed = true;
  }

  @Override
  @NotNull
  @NonNls
  public String getProtocol() {
    return PROTOCOL;
  }

  @Override
  @Nullable
  public VirtualFile findFileByPath(final @NotNull @NonNls String path) {
    for (RepositoryVirtualFiles rvf : myPerRepositoryFiles) { // going by snapshot here and checking all persisted repositories
      VirtualFile file = new ModelAccessHelper(rvf.getRepository()).runReadAction(() -> {
        synchronized (myRepoVFLock) {
          if (myPerRepositoryFiles.contains(rvf)) { // double check
            return rvf.findFileByPath(path);
          }
          return null;
        }
      });
      if (file != null) {
        return file;
      }
    }
    return new ModelAccessHelper(myGlobalRepoFiles.getRepository()).runReadAction(() -> myGlobalRepoFiles.findFileByPath(path));
  }

  @NotNull
  @Override
  public String extractPresentableUrl(@NotNull String path) {
    // Paths in our filesystem start with a colon-separated prefix, which is not against the rules (there's not documentation in VirtualFile to
    // stipulate a contract on file path), however, IDEA does expect it to be much like a local path, e.g. by converting *final* VirtualFile.getPresentableUrl()
    // to java.nio.file.Path (see com.intellij.openapi.fileEditor.impl.EditorsSplitters#updateFileName(), MPS-31691)
    final int idx;
    if (path.startsWith(MPSModelVirtualFile.MODEL_PREFIX)) {
      idx = MPSModelVirtualFile.MODEL_PREFIX.length();
    } else if (path.startsWith(MPSNodeVirtualFile.NODE_PREFIX)) {
      idx = MPSNodeVirtualFile.NODE_PREFIX.length();
    } else {
      idx = 0;
    }
    return super.extractPresentableUrl(idx == 0 ? path : path.substring(idx));
  }

  @Override
  public void refresh(boolean asynchronous) {
    // no-op
  }

  @Override
  @Nullable
  public VirtualFile refreshAndFindFileByPath(@NotNull String path) {
    return null;
  }

  @Override
  protected void deleteFile(Object requestor, @NotNull VirtualFile vFile) throws IOException {
    throw new UnsupportedOperationException();
  }

  @Override
  protected void moveFile(Object requestor, @NotNull VirtualFile vFile, @NotNull VirtualFile newParent) throws IOException {
    throw new UnsupportedOperationException();
  }

  @Override
  protected void renameFile(Object requestor, @NotNull VirtualFile vFile, @NotNull String newName) throws IOException {
    throw new UnsupportedOperationException();
  }

  @NotNull
  @Override
  protected VirtualFile createChildFile(Object requestor, @NotNull VirtualFile vDir, @NotNull String fileName) throws IOException {
    throw new UnsupportedOperationException();
  }

  @NotNull
  @Override
  protected VirtualFile createChildDirectory(Object requestor, @NotNull VirtualFile vDir, @NotNull String dirName) throws IOException {
    throw new UnsupportedOperationException();
  }

  @NotNull
  @Override
  protected VirtualFile copyFile(Object requestor, @NotNull VirtualFile virtualFile, @NotNull VirtualFile newParent, @NotNull String copyName) throws
                                                                                                                                               IOException {
    throw new UnsupportedOperationException();
  }

  @Override
  public boolean isReadOnly() {
    return true; // the value from DeprecatedVirtualFileSystem.isReadOnly()
  }

  private void updateModificationStamp(Collection<MPSNodeVirtualFile> files) {
    // identical timestamp for all roots touched simultaneously
    final long vfsStamp = LocalTimeCounter.currentTime();
    final long localStamp = System.currentTimeMillis();
    for (MPSNodeVirtualFile vf : files) {
      vf.setModificationStamp(vfsStamp);
      vf.setTimeStamp(localStamp);
    }
  }

  private class MyRepositoryListener extends SRepositoryContentAdapter {
    private final RepositoryVirtualFiles myRepoFiles;
    private final NodeChangeCollector myChangeCollector = new NodeChangeCollector();

    /**
     * FIXME the only reason we don't use single listener instance (we can obtain proper SRepository from the change event's model/node)
     * FIXME is that our project repository implementation is not capable of event sending, all events come from global repository.
     * Thus, it would be impossible to find proper RepositoryVirtualFiles instance. Shall fix ProjectRepository and its base impl
     * to send events on its own.
     */
    public MyRepositoryListener(RepositoryVirtualFiles repoFiles) {
      myRepoFiles = repoFiles;
    }

    @Override
    protected boolean isIncluded(SModule module) {
      return !module.isReadOnly();
    }

    @Override
    protected void startListening(SModel model) {
      // we listen to SModelListener#modelReplaced
      model.addModelListener(this);
      // we care about node changes
      model.addChangeListener(this);
    }

    @Override
    protected void stopListening(SModel model) {
      model.removeChangeListener(this);
      model.removeModelListener(this);
      forget(model);
    }

    // XXX I keep this method instead of direct access to myRepoFiles field in a desperate hope to have single repo listener some day,
    //     which would pick RVF instance based on model's repository. And that's the reason I check for null return value
    @Nullable
    private RepositoryVirtualFiles findRepoFiles(SModel m) {
      if (m.getRepository() == null) {
        return null;
      }
      return findRepoFiles(m.getRepository());
    }

    @Nullable
    private RepositoryVirtualFiles findRepoFiles(SRepository repository) {
      // TODO single listener instance and find RVF by repo
      return myRepoFiles;
    }

    private void forget(SModel modelDescriptor) {
      final RepositoryVirtualFiles rvf = findRepoFiles(modelDescriptor);
      if (rvf == null) {
        return;
      }
      VFSNotifier vfsNotifier = rvf.getNotifier(new VFSNotifier(rvf));
      vfsNotifier.deleted(rvf.getKnownVirtualFilesIn(modelDescriptor.getReference()));
      vfsNotifier.execute();
    }

    // SModelListener#modelReplaced
    @Override
    public void modelReplaced(SModel md) {
      final RepositoryVirtualFiles rvf = findRepoFiles(md);
      if (rvf == null) {
        return;
      }
      final Collection<MPSNodeVirtualFile> filesInModel = rvf.getKnownVirtualFilesIn(md.getReference());
      updateModificationStamp(filesInModel);

      Collection<MPSNodeVirtualFile> deletedFiles = new ArrayList<>();
      Collection<MPSNodeVirtualFile> changedFiles = new ArrayList<>();
      for (MPSNodeVirtualFile vf : filesInModel) {
        // XXX reconsider vf.getNode() (with SRepository in file construction time), vf.getNode(myRepository) and explicit resolve here
        if (vf.getNode() == null) {
          deletedFiles.add(vf);
        } else {
          changedFiles.add(vf);
        }
      }
      VFSNotifier vfsNotifier = rvf.getNotifier(new VFSNotifier(rvf));
      vfsNotifier.deleted(deletedFiles);
      vfsNotifier.changed(changedFiles);
      vfsNotifier.execute();
    }

    @Override
    public void commandStarted(SRepository repository) {
      myChangeCollector.start();
    }

    @Override
    public void commandFinished(SRepository repository) {
      myChangeCollector.stop();
      final List<AbstractModelChangeEvent> events = myChangeCollector.purge();
      final RepositoryVirtualFiles rvf = findRepoFiles(repository);
      if (rvf == null || events.isEmpty()) {
        return;
      }
      Collection<MPSNodeVirtualFile> deletedFiles = new ArrayList<>();
      Collection<MPSNodeVirtualFile> changedFiles = new ArrayList<>();
      for (AbstractModelChangeEvent evt : events) {
        if (evt instanceof SPropertyChangeEvent) {
          // candidate for rename
          MPSNodeVirtualFile vf = rvf.getVirtualFile(((SPropertyChangeEvent) evt).getNode().getReference());
          if (vf == null) {
            vf = rvf.getVirtualFile(((SPropertyChangeEvent) evt).getNode().getContainingRoot().getReference());
          }
          if (vf != null) {
            changedFiles.add(vf);
          }
        } else if (evt instanceof SNodeRemoveEvent) {
          // SNode.getReference() for deleted node produces invalid pointer
          MPSNodeVirtualFile vf = rvf.getVirtualFile(new SNodePointer(evt.getModel().getReference(), ((SNodeRemoveEvent) evt).getChild().getNodeId()));
          if (vf != null) {
            deletedFiles.add(vf);
          } else if (((SNodeRemoveEvent) evt).getParent() != null) {
            vf = rvf.getVirtualFile(((SNodeRemoveEvent) evt).getParent().getContainingRoot().getReference());
            if (vf != null) {
              changedFiles.add(vf);
            }
          }
        } else if (evt instanceof SNodeAddEvent) {
          // SNode.getReference() for (later) deleted node produces invalid pointer
          MPSNodeVirtualFile vf = rvf.getVirtualFile(new SNodePointer(evt.getModel().getReference(), ((SNodeAddEvent) evt).getChild().getNodeId()));
          if (vf != null) {
            deletedFiles.remove(vf);
          } else {
            vf = rvf.getVirtualFile(((SNodeAddEvent) evt).getChild().getContainingRoot().getReference());
            if (vf != null) {
              changedFiles.add(vf);
            }
          }
        } else if (evt instanceof SReferenceChangeEvent) {
          MPSNodeVirtualFile vf = rvf.getVirtualFile(((SReferenceChangeEvent) evt).getNode().getReference());
          if (vf == null) {
            vf = rvf.getVirtualFile(((SReferenceChangeEvent) evt).getNode().getContainingRoot().getReference());
          }
          if (vf != null) {
            changedFiles.add(vf);
          }
        }
      }
      VFSNotifier vfsNotifier = rvf.getNotifier(new VFSNotifier(rvf));
      vfsNotifier.deleted(deletedFiles);
      vfsNotifier.changed(changedFiles);
      vfsNotifier.execute();
    }

    @Override
    public void propertyChanged(@NotNull SPropertyChangeEvent event) {
      updateFileTimestampOfAffectedNodes(event, event.getNode().getReference(), new SNodePointer(event.getNode().getContainingRoot()));
      myChangeCollector.propertyChanged(event);
    }

    @Override
    public void referenceChanged(@NotNull SReferenceChangeEvent event) {
      updateFileTimestampOfAffectedNodes(event, event.getNode().getReference(), new SNodePointer(event.getNode().getContainingRoot()));
      myChangeCollector.referenceChanged(event);
    }

    @Override
    public void nodeAdded(@NotNull SNodeAddEvent event) {
      if (event.isRoot()) {
        // added root of no interest - there could be no file for it yet.
        return;
      }
      final SNode affectedNode = event.getParent();
      updateFileTimestampOfAffectedNodes(event, new SNodePointer(affectedNode), new SNodePointer(affectedNode.getContainingRoot()));
    }

    @Override
    public void nodeRemoved(@NotNull SNodeRemoveEvent event) {
      // SNode.getReference() for deleted node produces invalid pointer
      final SNodeReference removedNode = new SNodePointer(event.getModel().getReference(), event.getChild().getNodeId());
      updateFileTimestampOfAffectedNodes(event, removedNode, event.isRoot() ? removedNode : new SNodePointer(event.getParent().getContainingRoot()));
      myChangeCollector.nodeRemoved(event);
    }

    /*
     * SModelAdapter that used to update timestamps was deliberately extracted out of end of command listener. Guess, either to
     * update TS immediately or to support multiple TS changes within single command. That's why I keep this immediate TS update approach
     * in the new repository listener, too.
     *
     * XXX 1. Do we need to update TS on model imports change? Present openapi listener doesn't support these changes, but old code didn't care either
     * XXX 2. Why don't we update TS of MPSModelVirtualFile?
     */
    private void updateFileTimestampOfAffectedNodes(AbstractModelChangeEvent event, /*not null*/ SNodeReference changed, @Nullable SNodeReference root) {
      final RepositoryVirtualFiles rvf = findRepoFiles(event.getModel());
      if (rvf == null) {
        return;
      }
      ArrayList<MPSNodeVirtualFile> files = new ArrayList<>(2);
      final MPSNodeVirtualFile vf1 = rvf.getVirtualFile(changed);
      if (vf1 != null) {
        files.add(vf1);
      }
      if (root != null && root.equals(changed)) {
        MPSNodeVirtualFile vf2 = rvf.getVirtualFile(root);
        if (vf2 != null && !vf2.equals(vf1)) {
          files.add(vf2);
        }
      }
      updateModificationStamp(files);
    }
  }

  private class VFSNotifier implements Runnable {
    private final RepositoryVirtualFiles mySource;
    private final Set<MPSNodeVirtualFile> myDeletedFiles = new HashSet<>();
    private final Set<MPSNodeVirtualFile> myChangedFiles = new HashSet<>();
    private final AtomicBoolean myPendingChanges = new AtomicBoolean();

    public VFSNotifier(@NotNull RepositoryVirtualFiles source) {
      mySource = source;
    }

    public synchronized void deleted(Collection<MPSNodeVirtualFile> deletedFiles) {
      if (!deletedFiles.isEmpty()) {
        myPendingChanges.set(true);
      }
      myDeletedFiles.addAll(deletedFiles);
    }

    public synchronized void changed(Collection<MPSNodeVirtualFile> changed) {
      if (!changed.isEmpty()) {
        myPendingChanges.set(true);
      }
      myChangedFiles.addAll(changed);
    }

    /**
     * Asynchronous invocation does not guarantee that node reference will persist in the given repository.
     * However Artem proposed to get rid of SNodeReference#resolve at all.
     */
    public void execute() {
      if (hasPendingNotifications()) {
        mySource.scheduleNotifier(this);
      }
    }

    @Override
    public void run() {
      if (myDisposed) {
        return;
      }
      ArrayList<MPSNodeVirtualFile> deletedFiles;
      ArrayList<MPSNodeVirtualFile> changedFiles;
      synchronized (this) {
        deletedFiles = new ArrayList<>(myDeletedFiles);
        changedFiles = new ArrayList<>(myChangedFiles);
        myDeletedFiles.clear();
        myChangedFiles.clear();
      }

      // notifier is shared, it's possible to get both changed and deleted notification for the same file
      // no reason to report changes for deleted.
      changedFiles.removeAll(deletedFiles);

// XXX is there reason to check oldName != newName? I decided to send out every changed file, not only with changed name
//      for (MPSNodeVirtualFile changedFile : changedFiles) {
//        String oldName = changedFile.getName();
//        changedFile.updateFields();
//        String newName = changedFile.getName();
//        if (!oldName.equals(newName)) {
//          // XXX this effectively reverts 0ec4b371f9acef4c82b644dfa3a295961b515efc, I wonder what's the reason not to send file rename events?
//          events.add(new VFilePropertyChangeEvent(mySource, changedFile, VirtualFile.PROP_NAME, oldName, newName, false));
//        }
//      }
      ApplicationManager.getApplication().assertWriteAccessAllowed(); // used to be in DeprecatedVirtualFileSystem.fireXXX methods
      myEventPublisher.beforeDelete(new ArrayList<>(deletedFiles));

      for (MPSNodeVirtualFile deletedFile : deletedFiles) {
        deletedFile.invalidate();
      }

      myEventPublisher.changed(new ArrayList<>(changedFiles));
    }

    private boolean hasPendingNotifications() {
      return myPendingChanges.get();
    }
  }
}
