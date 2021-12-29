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
package jetbrains.mps.make;

import jetbrains.mps.compiler.JavaCompilerOptions;
import jetbrains.mps.make.ModuleAnalyzer.ModuleAnalyzerResult;
import jetbrains.mps.make.ModulesContainer.JavaModule;
import jetbrains.mps.util.FileUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModule;

import javax.tools.Diagnostic;
import javax.tools.Diagnostic.Kind;
import javax.tools.DiagnosticCollector;
import javax.tools.DiagnosticListener;
import javax.tools.JavaCompiler;
import javax.tools.JavaCompiler.CompilationTask;
import javax.tools.JavaFileObject;
import javax.tools.StandardJavaFileManager;
import javax.tools.StandardLocation;
import javax.tools.ToolProvider;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ServiceLoader;
import java.util.ServiceLoader.Provider;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Mediator between {@code ModuleMaker} and {@code javax.tools.JavaCompiler}
 * @author Artem Tikhomirov
 * @since 2021.1
 */
final class JavaCompilerImpl {
  private static final int MAX_ERRORS = 20; // do I care to report more?

  private final File myJavaHome;
  private final JavaCompilerOptions myCompilerOptions;
  private final JavaCompiler myJavaCompiler;
  private StandardJavaFileManager myFileManager;
  private final FileManagerDiagnostics myFileManagerListener;

  public JavaCompilerImpl(@NotNull File javaHome, @NotNull JavaCompilerOptions compilerOptions) {
    this(javaHome, compilerOptions, defaultCompiler());
    // XXX perhaps, worth to force JC argument, and have 2 static methods, defaultCompiler() and eclipseCompiler()
    //     so that callers decide explicitly, and can handle absence of JC implementation (not nice to throw exception from cons)
  }

  /**
   * @throws IllegalStateException if there's no compiler in actual java runtime
   */
  @NotNull
  static JavaCompiler defaultCompiler() throws IllegalStateException {
    final JavaCompiler jc = ToolProvider.getSystemJavaCompiler();
    if (jc != null) {
      return jc;
    }
    throw new IllegalStateException("No system java compiler");
  }

  /**
   * @throws IllegalStateException if there's no Eclipse compiler in actual classpath
   */
  static JavaCompiler eclipseCompiler() throws IllegalStateException {
    // FIXME need to figure out proper way to use EclipseCompiler implementation of javax.tools.JavaCompiler interface
    //   meanwhile, resort to approach org.jetbrains.jps.javac.JavacMain uses, see
    //   org.jetbrains.jps.builders.impl.java.EclipseCompilerTool#findCompiler() (by class name)
    final Stream<Provider<JavaCompiler>> jcs = ServiceLoader.load(JavaCompiler.class).stream();
    return jcs.filter(jc -> "EclipseCompiler".equals(jc.type().getSimpleName())).map(Provider::get).findFirst().orElseThrow(() -> new IllegalStateException("No ECJ found"));
  }

  public JavaCompilerImpl(@NotNull File javaHome, @NotNull JavaCompilerOptions compilerOptions, @NotNull JavaCompiler javac) {
    myJavaHome = javaHome;
    myCompilerOptions = compilerOptions;
    myJavaCompiler = javac;
    myFileManagerListener = new FileManagerDiagnostics();
  }

  @NotNull
  public MPSCompilationResult compile(ModulesContainer modules, CompositeTracer tracer) {
    myFileManagerListener.withReporter(tracer.getSender());
    File tempDir = null;
    try {
      if (myFileManager == null) {
        myFileManager = myJavaCompiler.getStandardFileManager(myFileManagerListener, null, null);
      }
      if (!modules.hasModuleToCompile()) {
        // XXX is it correct that we check all modules, not dirty? Could I get a cycle of 'clean' modules
        //   in between of other cycles with dirty modules?
        return MPSCompilationResult.ZERO_COMPILATION_RESULT;
      }
      final int count = (int) modules.getDirtyModules().count();
      tracer.start("", 3 + (count > 1 ? count * 3 : count * 2)); // analyze, copyRes, classpath, 2 per module (javac+instrument) +(count) for bulk
      tracer.push(InternalJavaCompiler.PREPARING_TO_COMPILE_MSG);
      // FTR, original code in InternalJavaCompiler analyzed dirty modules only
      //   although once/if we get rid of dirty check, we likely need to analyze all modules here
      ModuleAnalyzerResult analysisResult = new ModuleAnalyzer().analyze(modules.getDirtyModules());
      if (!analysisResult.hasJavaToCompile && !analysisResult.hasResourcesToUpdate) {
        tracer.pop(1);
        return MPSCompilationResult.nothingToDoCompilationResult();
      }
      analysisResult.filesToDelete.forEach(FileUtil::delete); // removing all stale files
      tracer.pop(1);
      tracer.push(InternalJavaCompiler.COPYING_RESOURCES_MSG);
      // XXX original InternalJavaCompiler copied resources of all modules, I feel it's not right.
      copyResources(modules.getDirtyModules());
      tracer.pop(1);

      if (!analysisResult.hasJavaToCompile) {
        // XXX original code in InternalJavaCompiler didn't invoke reportModulesWithRemovalsAreNotChanged() in this case, is it correct?
        return MPSCompilationResult.noJavaCompiledCompilationResult();
      }
      tracer.push(InternalJavaCompiler.CALCULATING_DEPS_MSG);
      final List<Path> classpath = modules.getCompileClasspath().stream().map(Path::of).collect(Collectors.toUnmodifiableList());
      tracer.pop(1);
      //
      tracer.push(InternalJavaCompiler.COMPILING_JAVA_MSG);
      tracer.getSender().info(String.format("Compiler in use: %s", myJavaCompiler.getClass().getSimpleName()));
      configureClassPath(classpath);
      if (count > 1) {
        tempDir = Files.createTempDirectory("mpsjc").toFile(); // intentionally not FileUtil.createTempDir, want to handle IOException
        bulkCompileOnlyIntoTempLocation(modules.getDirtyModules(), tempDir, tracer.getSender());
        tracer.advance(count);
      }
      ErrorRecord total = new ErrorRecord();
      for (JavaModule jm : modules.getDirtyModules().collect(Collectors.toList())) {
        tracer.push(String.format("Compiling %s", jm.name()));
        final Collection<Path> moduleCP;
        if (tempDir != null) {
          ArrayList<Path> withBulkCompileOut = new ArrayList<>(classpath.size() + 1);
          withBulkCompileOut.add(tempDir.toPath()); // not sure whether to put it in the front or to the back
          withBulkCompileOut.addAll(classpath);
          configureClassPath(withBulkCompileOut);
          moduleCP = withBulkCompileOut;
        } else {
          // cp already set for compilation, just record one for instrumentation
          moduleCP = classpath;
        }
        // XXX no idea if can figure out whether a module has been truly compiled or not
        //     At the moment, it's not a big deal, as we pass at least some of modules as 'dirty',
        //     and those that are not dirty but in cycle, would need to get reloaded anyway after
        //     compilation of their dirty peer.
        final ErrorRecord errorRecord = doCompile(jm, tracer.getSender());
        tracer.pop(1);
        if (errorRecord == null || errorRecord.errors == 0) {
          // disregard warnings, only errors prevent us from instrumentation
          // XXX perhaps, shall return boolean if any class has been instrumented
          instrumentClasses(moduleCP, classesFromOutput(), tracer.subTracer(1));
        } else {
          total.add(errorRecord);
          tracer.advance(1);
        }
      }
      // as long as we can't tell which one was actually changed during compilation, pretend every one we've tried to compile was.
      final Set<SModule> changedModules = modules.getDirtyModules().map(JavaModule::toModule).collect(Collectors.toSet());
      reportModulesWithRemovalsAreNotChanged(analysisResult.modulesWithRemovals, changedModules, tracer.getSender());
      tracer.pop();
      return new MPSCompilationResult(total.errors, total.warnings, false, changedModules);
    } catch (Exception ex) {
      if (tempDir != null) {
        FileUtil.delete(tempDir);
      }
      tracer.getSender().error("Compilation aborted", ex);
      return new MPSCompilationResult(1, 0, true, Collections.emptySet());
    } finally {
      myFileManagerListener.withoutReporter();
      tracer.done();
    }
  }

  // neither argument is null. assume classpath configured
  private void bulkCompileOnlyIntoTempLocation(Stream<JavaModule> modules, File tempDir, MessageSender sender)  throws IOException {
    configureOutput(null);
    configureTempOutput(tempDir);
    final List<Path> src = modules.map(JavaModule::getAllSourcePaths).flatMap(Collection::stream).map(Path::of).collect(Collectors.toUnmodifiableList());
    configureSourcePath(src);
    final Iterable<JavaFileObject> cu = cuFromSourcePath();
    DiagnosticListener<JavaFileObject> ignore = diagnostic -> {};
    final CompilationTask task = myJavaCompiler.getTask(null, myFileManager, ignore, javacOptions(true), null, cu);
    if (!task.call()) {
      sender.error("Failed to compile module cycle, see individual modules for errors");
    }
  }

  // assume classpath configured. Compile single MPS module, deal with issues
  private ErrorRecord doCompile(JavaModule jm, MessageSender sender) throws IOException {
    configureOutput(jm);
    configureSourcePath(jm.getAllSourcePaths().stream().map(Path::of).collect(Collectors.toUnmodifiableList()));
    final Iterable<JavaFileObject> cu = cuFromSourcePath();
    DiagnosticCollector<JavaFileObject> diagnostics = new DiagnosticCollector<>();
    final CompilationTask task = myJavaCompiler.getTask(null, myFileManager, diagnostics, javacOptions(false), null, cu);
    if (!task.call()) {
      // XXX perhaps, shall sender.trace() all jfm.location values?
      final ErrorRecord errorRecord = new ErrorRecord(MAX_ERRORS);
      for (Diagnostic<? extends JavaFileObject> d : diagnostics.getDiagnostics()) {
        if (errorRecord.errorMax()) {
          break;
        }
        if (d.getKind() != Kind.ERROR) {
          if (d.getKind() == Kind.WARNING || d.getKind() == Kind.MANDATORY_WARNING) {
            errorRecord.warnings++;
          }
          if (!errorRecord.warningMax()) {
            // do not pollute output if we reached max for warnings, don't care to see other messages.
            // Max for errors already handled, above. Don't break on warnings here, collect as many errors as possible first.
            sender.trace(d.getMessage(null));
          }
          continue;
        }
        if (errorRecord.errors++ == 0) {
          sender.error(InternalJavaCompiler.COMPILATION_PROBLEMS);
        }
        if (d.getSource() == null) {
          // no idea what we can do w/o source file
          continue;
        }
        final Path pathSrc = myFileManager.asPath(d.getSource());
        final File javaFile = pathSrc.toFile();
        Object hintObject = new FileWithPosition(javaFile, d.getPosition(), d.getLineNumber(), d.getColumnNumber());
        String errMsg = String.format("%s (%s:%d)", d.getMessage(null), d.getSource().getName(), d.getLineNumber());
        sender.error(errMsg, hintObject);
      }
      if (errorRecord.errors > 0) {
        final Iterable<? extends File> cp = myFileManager.getLocation(StandardLocation.CLASS_PATH);
        sender.info(String.format(InternalJavaCompiler.MODULES_CLASSPATH_STR, jm.name(), cp));
      }
      return errorRecord;
    }
    return null;
  }

  private void instrumentClasses(Collection<Path> classPath, Iterable<JavaFileObject> classFO, CompositeTracer tracer) {
    try {
      tracer.start(InternalJavaCompiler.WRITING_CLASSES_MSG, 1);
      final ClassFileWriter cfw = new ClassFileWriter(classPath, myJavaHome, tracer.getSender());
      for (JavaFileObject fo : classFO) {
        cfw.instrumentNotNull(myFileManager.asPath(fo).toFile());
      }
    } finally {
      tracer.done();
    }
  }

  private void copyResources(Stream<JavaModule> modules) {
    for (JavaModule module : modules.collect(Collectors.toList())) {
      File classesGen = module.getClassesOut();
      if (classesGen == null) {
        continue;
      }
      ModuleSources sources = module.getSources();
      for (ResourceFile toCopy : sources.getResourcesToCopy()) {
        String fqName = toCopy.getPath();

        fqName = fqName.substring(0, fqName.length() - toCopy.getFile().getName().length());
        String path = fqName + toCopy.getFile().getName();

        if (toCopy.getFile().exists()) {
          FileUtil.copyFile(toCopy.getFile(), new File(classesGen, path));
        }
      }
    }
  }

  private void configureClassPath(/*not null*/ Collection<Path> classPath) throws IOException {
    myFileManager.setLocationFromPaths(StandardLocation.CLASS_PATH, classPath);
  }

  private void configureSourcePath(/*not null*/ Collection<Path> sourcePath) throws IOException {
    myFileManager.setLocationFromPaths(StandardLocation.SOURCE_PATH, sourcePath);
  }

  private void configureOutput(@Nullable JavaModule jm) throws IOException {
    if (jm == null) {
      // FIXME null seems to mean 'default', which could be something under user home, which I don't like
      myFileManager.setLocation(StandardLocation.CLASS_OUTPUT, null);
      myFileManager.setLocation(StandardLocation.SOURCE_OUTPUT, null);
    } else {
      final File classesOut = jm.getClassesOut();
      if (!classesOut.exists()) {
        // javac's OutputLocationHandler doesn't like non-existent paths
        classesOut.mkdirs();
      }
      myFileManager.setLocation(StandardLocation.CLASS_OUTPUT, Collections.singleton(classesOut));
      final File sourceOut = jm.getSourceOut();
      if (sourceOut != null) {
        if (!sourceOut.exists()) {
          sourceOut.mkdirs();
        }
        myFileManager.setLocation(StandardLocation.SOURCE_OUTPUT, Collections.singleton(sourceOut));
      } else {
        myFileManager.setLocation(StandardLocation.SOURCE_OUTPUT, null);
      }
    }
  }
  private void configureTempOutput(File tempDir) throws IOException {
    myFileManager.setLocation(StandardLocation.CLASS_OUTPUT, Collections.singleton(tempDir));
    // decided not to set SOURCE_OUTPUT here, unless I need to point it to the same location as CLASS_OUTPUT
  }

  private Iterable<String> javacOptions(boolean cycleTempCompile) {
    final String compileVer = myCompilerOptions.getTargetJavaVersion().getCompilerVersion();
    // javac --release option: "Supported targets: 6, 7, 8, 9, 10, 11"
    final String releaseVer = compileVer.startsWith("1.") ? compileVer.substring(2) : compileVer;
    if (cycleTempCompile) {
      return Arrays.asList("-encoding", "UTF-8", "--release", releaseVer, "-g:none", "-proc:none", "-nowarn");
    } else {
      return Arrays.asList("-encoding", "UTF-8", "--release", releaseVer, "-g");
    }
  }

  private Iterable<JavaFileObject> cuFromSourcePath() throws IOException {
    return myFileManager.list(StandardLocation.SOURCE_PATH, "", Collections.singleton(JavaFileObject.Kind.SOURCE), true);
  }

  private Iterable<JavaFileObject> classesFromOutput() throws IOException {
    return myFileManager.list(StandardLocation.CLASS_OUTPUT, "", Collections.singleton(JavaFileObject.Kind.CLASS), true);
  }

  // FIXME bad name
  private static void reportModulesWithRemovalsAreNotChanged(Collection<SModule> modulesWithRemovals, Collection<SModule> changedModules, MessageSender ms) {
    for (SModule module : modulesWithRemovals) {
      if (!changedModules.contains(module)) {
        ms.warn(String.format(InternalJavaCompiler.MODULE_WITH_REMOVALS_WAS_NOT_CHANGED, module), module.getModuleReference());
      }
    }
  }


  public void dispose() {
    if (myFileManager != null) {
      FileUtil.closeFileSafe(myFileManager);
      myFileManager = null;
    }
  }

  private static class FileManagerDiagnostics implements DiagnosticListener<JavaFileObject> {
    private MessageSender myReporter;

    void withReporter(@NotNull MessageSender reporter) {
      myReporter = reporter;
    }

    void withoutReporter() {
      myReporter = null;
    }

    @Override
    public void report(Diagnostic<? extends JavaFileObject> diagnostic) {
      if (myReporter != null) {
        if (diagnostic.getKind() == Kind.ERROR) {
          myReporter.error(diagnostic.getMessage(null));
        } else if (diagnostic.getKind() == Kind.WARNING || diagnostic.getKind() == Kind.MANDATORY_WARNING) {
          myReporter.warn(diagnostic.getMessage(null), null);
        } else {
          myReporter.info(diagnostic.getMessage(null));
        }
      } else {
        throw new IllegalStateException("Use of DiagnosticListener out of reporting scope");
      }
    }
  }

  /*local*/ static class ErrorRecord {
    public int errors;
    public int warnings;
    private final int maxErrors;
    private final int maxWarnings;

    ErrorRecord() {
      this(Integer.MAX_VALUE);
    }

    ErrorRecord(int max) {
      maxErrors = maxWarnings = max;
    }

    public boolean errorMax() {
      return errors > maxErrors;
    }

    public boolean warningMax() {
      return errors > maxWarnings;
    }

    public void add(ErrorRecord other) {
      errors += other.errors;
      warnings += other.warnings;
    }
  }
}
