/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.util;

import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.path.Path;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * @author Kostik
 */
public class FileUtil {
  private static final Logger LOG = LogManager.getLogger(FileUtil.class);

  private static final String[] IGNORED_DIRS = new String[]{".svn", ".git", "_svn"};
  public static final String DEFAULT_CHARSET_NAME = "UTF-8";
  public static final Charset DEFAULT_CHARSET = Charset.forName(DEFAULT_CHARSET_NAME);
  private static final String MPSTEMP = "mpstemp";
  private static final char DOT = '.';

  @NotNull
  public static File createTmpDir() {
    return createTmpDir(MPSTEMP);
  }

  public static File createTmpDir(@NotNull String prefix) {
    File tmpDir = null;
    try {
      tmpDir = Files.createTempDirectory(prefix).toFile();
    } catch (IOException e) {
      throw new IllegalStateException("Could not create a temporary directory", e);
    }
    return tmpDir;
  }

  @NotNull
  public static File createTmpFile() {
    return createTmpFile(MPSTEMP);
  }

  public static File createTmpFile(@NotNull String prefix) {
    File result = null;
    try {
      result = File.createTempFile(prefix, "");
    } catch (IOException e) {
      e.printStackTrace();
    }
    return result;
  }

  public static File getTempDir() {
    return new File(System.getProperty("java.io.tmpdir"));
  }

  public static void jar(File dir, final Manifest mf, File to) {
    new Packer() {
      @Override
      protected ZipOutputStream createDeflaterStream(FileOutputStream fos) throws Exception {
        return new JarOutputStream(fos, mf);
      }
    }.pack(dir, to);
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public static void zip(File dir, File to) {
    new Packer() {
      @Override
      protected ZipOutputStream createDeflaterStream(FileOutputStream fos) throws Exception {
        return new ZipOutputStream(fos);
      }
    }.pack(dir, to);
  }

  public static void zip(Map<String, File> entries, File to) {
    new Packer() {
      @Override
      protected ZipOutputStream createDeflaterStream(FileOutputStream fos) throws Exception {
        return new ZipOutputStream(fos);
      }
    }.pack(entries, to);
  }

  public static void copyDir(File what, File to) {
    assert what.isDirectory();
    if (!to.exists()) {
      to.mkdirs();
    }

    for (File f : what.listFiles()) {
      if (f.isDirectory()) {
        if (isIgnoredDir(f.getName())) continue;

        File fCopy = new File(to, f.getName());
        if (!fCopy.exists()) {
          fCopy.mkdir();
        }
        copyDir(f, fCopy);
      }

      if (f.isFile()) {
        copyFile(f, to);
      }
    }

  }

  public static void copyFile(File f, File to) {
    try {
      copyFileChecked(f, to);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public static void copyFileChecked(File f, File to) throws IOException {
    FileInputStream is = new FileInputStream(f);

    File target;
    if (to.isDirectory()) {
      target = new File(to, f.getName());
    } else {
      target = to;
    }

    if (!to.getParentFile().exists()) {
      to.getParentFile().mkdirs();
    }

    OutputStream os = new FileOutputStream(target);
    os.write(ReadUtil.read(is));

    is.close();
    os.close();
  }

  public static String getCanonicalPath(File file) {
    if (file == null) {
      return null;
    }
    try {
      return file.getCanonicalPath();
    } catch (IOException e) {
      return file.getAbsolutePath();
    }
  }

  public static String getCanonicalPath(String path) {
    if (path == null) {
      path = "";
    }
    path = normalize0(path, Path.SYSTEM_SEPARATOR);
    File file = new File(path);
    return getCanonicalPath(file);
  }

  /**
   * @return unix-style path without last slashes with some version of normalization
   */
  @NotNull
  public static String normalize(@NotNull String path) {
    return stripLastSlashes(normalize0(getUnixPath(path), Path.UNIX_SEPARATOR));
  }

  // poor version of normalization
  // does not consider '..'; will be provided in the future release within new vfs API
  private static String normalize0(@NotNull String path, @NotNull String separator) {
    path = path.replaceAll("/+", "/").replaceAll("\\\\+", "\\\\");
    if (path.endsWith(separator + DOT)) {
      path = path.substring(0, path.length() - 1);
    }
    if (path.equals("" + DOT)) {
      return "";
    }
    // four backslashes are for windows file separator (escaping it twice), and two are escaping the dot
    path = path.replaceAll("\\\\\\.\\\\", "\\\\").replaceAll("/\\./", "/");
    return path;
  }


  public static boolean delete(File root) {
    boolean result = true;

    if (root.isDirectory()) {
      for (File child : root.listFiles()) {
        result = delete(child) && result;
      }
    }
    // !result means one of children was not deleted, hence you may not delete this directory
    return result && root.delete();
  }

  /**
   * deletes the file and all its parents above which happen to be empty after this file's removal
   * @return true iff the file has been removed
   */
  public static boolean deleteWithAllEmptyDirs(@NotNull IFile file) {
    if (file.exists()) { // exists is vital, see VirtualFile assert for file existence [AP]
      do {
        file.delete();
        file = file.getParent();
      } while (file != null && file.getChildren().isEmpty());
      return true;
    }
    return false;
  }

  public static boolean clear(File dir) {
    File[] files = dir.listFiles();
    if (files == null) return true;

    boolean result = true;

    for (File f : files) {
      boolean r = delete(f);
      result = result && r;
    }

    return result;
  }

  public static long getNewestFileTime(File dir) {
    return getNewestFileTime(dir, true);
  }

  public static long getNewestFileTime(File dir, boolean recursive) {
    File[] files = dir.listFiles();
    if (files == null) {
      return dir.lastModified();
    }
    long result = dir.lastModified();
    for (File file : files) {
      if (isIgnoredDir(file.getName())) {
        continue;
      }

      if (recursive) {
        result = Math.max(result, getNewestFileTime(file));
      } else {
        result = Math.max(result, file.lastModified());
      }
    }
    return result;
  }

  public static void writeFile(final File file, final String content) throws IOException {
    if (!file.getParentFile().exists()) {
      file.getParentFile().mkdirs();
    }

    if (file.exists()) {
      try {
        String existingContents = FileUtil.read(file);
        if (existingContents.equals(content)) {
          return;
        }
      } catch (RuntimeException ex) {
        /* ignore */
      }
      file.delete();
    }

    boolean fileCreated = false;
    IOException lastExc = null;
    for (int i = 1; i <= 20; i++) {
      try {
        file.createNewFile();
        fileCreated = true;
        break;
      } catch (IOException ex) {
        lastExc = ex;
        //sometimes:
        //java.io.IOException: Access is denied
        //at java.io.WinNTFileSystem.createFileExclusively(Native Method)
        //at java.io.File.createNewFile(File.java:850)
        // so we'll try 5(20) times
      }
      try {
        Thread.sleep(100);
      } catch (InterruptedException ie) {
        //ok
      }
    }

    if (fileCreated) {
      FileUtil.write(file, content);
    } else {
      throw lastExc == null ? new IOException("Can't create " + file.getPath()) : lastExc;
    }
  }

  /*
   * use writeFile
   */
  @Deprecated
  public static void write(File file, String content) {
    PrintWriter writer = null;
    try {
      writer = new PrintWriter(new OutputStreamWriter(new FileOutputStream(file), FileUtil.DEFAULT_CHARSET));
      writer.print(content);
      writer.flush();
    } catch (IOException e) {
      throw new RuntimeException(e);
    } finally {
      if (writer != null) {
        writer.close();
      }
    }
  }

  public static void write(File file, byte[] content) {
    OutputStream writer = null;
    try {
      writer = new FileOutputStream(file);
      writer.write(content);
    } catch (IOException e) {
      throw new RuntimeException(e);
    } finally {
      FileUtil.closeFileSafe(writer);
    }
  }

  public static String read(File file) {
    try {
      return read(new FileReader(file));
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public static String read(File file, String charset) {
    try {
      return read(new InputStreamReader(new FileInputStream(file), charset));
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public static String read(Reader reader) {
    BufferedReader r = null;
    try {
      r = new BufferedReader(reader);

      StringBuilder result = new StringBuilder();

      String line;
      while ((line = r.readLine()) != null) {
        result.append(line).append('\n');
      }

      return result.toString();
    } catch (IOException e) {
      throw new RuntimeException(e);
    } finally {
      FileUtil.closeFileSafe(r);
    }
  }

  public static String readLine(Reader reader, int lineNo) {
    BufferedReader r = null;
    try {
      r = new BufferedReader(reader);

      String line = null;
      int currentLine = 0;
      while ((line = r.readLine()) != null) {
        if (currentLine == lineNo) {
          return line;
        }
        currentLine++;
      }

      return null;
    } catch (IOException e) {
      throw new RuntimeException(e);
    } finally {
      try {
        if (r != null) {
          r.close();
        }
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
  }

  public static boolean isParent(File parent, File child) {
    if (!parent.isDirectory()) {
      return false;
    }

    if (parent.equals(child)) return true;

    for (File f : parent.listFiles()) {
      if (isParent(f, child)) return true;
    }

    return false;
  }

  public static File getMaxContainingFile(List<File> files) {
    if (files.size() == 0) return null;
    Iterator<File> fileIterator = files.iterator();
    File max = fileIterator.next();
    while (fileIterator.hasNext()) {
      if (max == null) return null;
      max = getMaxContainingFile(max, fileIterator.next());
    }

    return max;
  }

  public static File getMaxContainingFile(File file1, File file2) {
    if (isParentUp(file1, file2)) return file1;
    if (isParentUp(file2, file1)) return file2;

    File parent1 = file1.getParentFile();
    File parent2 = file2.getParentFile();

    if ((parent1 == null) && (parent2 == null)) {
      return null;
    } else if (parent1 == null) {
      return getMaxContainingFile(file1, parent2);
    } else if (parent2 == null) {
      return getMaxContainingFile(parent1, file2);
    }

    return getMaxContainingFile(parent1, parent2);
  }

  public static boolean isParentUp(File parent, File child) {
    if (!parent.isDirectory()) {
      return false;
    }

    if (parent.getPath().equals(child.getPath())) return true;

    File parentOfChild = child.getParentFile();
    if (parentOfChild == null) return false;
    return isParentUp(parent, parentOfChild);
  }

  public static boolean isIgnoredDir(String name) {
    for (String ignoredDir : IGNORED_DIRS) {
      if (ignoredDir.equals(name)) {
        return true;
      }
    }
    return false;
  }

  @NotNull
  public static String getUnixPath(@NotNull String path) {
    return path.replace(Path.WIN_SEPARATOR, Path.UNIX_SEPARATOR);
  }

  public static boolean isAncestor(@NotNull String ancestorPath, @NotNull String path) {
    ancestorPath = getUnixPath(ancestorPath);
    path = getUnixPath(path);
    return path.startsWith(ancestorPath);
  }

  /**
   * @throws PathResolutionException if the paths do not intersect
   */
  public static String getRelativePath(@NotNull String targetPath, @NotNull String basePath, @NotNull String pathSeparator) {
    String[] base = basePath.split(Pattern.quote(pathSeparator));
    String[] target = targetPath.split(Pattern.quote(pathSeparator));

    StringBuilder common = new StringBuilder();
    int commonIndex = 0;
    while (commonIndex < target.length && commonIndex < base.length
        && target[commonIndex].equals(base[commonIndex])) {
      common.append(target[commonIndex]).append(pathSeparator);
      commonIndex++;
    }

    if (commonIndex == 0) {
      throw new PathResolutionException("No common path element found for '" + targetPath + "' and '" + basePath + "'");
    }

    if (target.length == commonIndex && base.length == target.length) {
      return "";
    }

    boolean baseIsFile = true;

    File baseResource = new File(basePath);

    if (baseResource.exists()) {
      baseIsFile = baseResource.isFile();

    } else if (basePath.endsWith(pathSeparator)) {
      baseIsFile = false;
    }

    StringBuilder relative = new StringBuilder();

    if (base.length != commonIndex) {
      int numDirsUp = baseIsFile ? base.length - commonIndex - 1 : base.length - commonIndex;

      for (int i = 0; i < numDirsUp; i++) {
        relative.append("..").append(pathSeparator);
      }
    }
    if (targetPath.length() > common.length()) {
      relative.append(targetPath.substring(common.length()));
    }
    return relative.toString();
  }

  public static boolean isAbsolute(@NotNull String path) {
    return new File(path).isAbsolute();
  }

  public static String getAbsolutePath(String path) {
    return new File(path).getAbsolutePath();
  }

  public static void closeFileSafe(Closeable c) {
    if (c != null) {
      try {
        c.close();
      } catch (IOException ignored) {
      }
    }
  }

  public static boolean canWrite(File f) {
    while (!f.exists()) {
      f = f.getParentFile();
      if (f == null) {
        return false;
      }
    }
    return f.canWrite();
  }

  public final static class PathResolutionException extends RuntimeException {
    PathResolutionException(String msg) {
      super(msg);
    }
  }

  @NotNull
  public static String unquote(@NotNull String urlString) {
    urlString = urlString.replace('/', File.separatorChar);
    return URLUtil.unescapePercentSequences(urlString);
  }

  @NotNull
  public static String getNameWithoutExtension(@NotNull String name) {
    int i = name.lastIndexOf(DOT);
    if (i != -1) {
      name = name.substring(0, i);
    }
    return name;
  }

  @Nullable
  public static String getExtension(@NotNull String name) {
    int i = name.lastIndexOf(DOT);
    if (i != -1) {
      return name.substring(i + 1);
    }
    return null;
  }

  @Contract(value = "null -> null;!null->!null")
  @Nullable
  public static String stripLastSlashes(@Nullable String path) {
    if (path == null) return null;

    while (path.endsWith(Path.UNIX_SEPARATOR) || path.endsWith(Path.WIN_SEPARATOR)) {
      if (path.endsWith(Path.ARCHIVE_SEPARATOR)) {
        break;
      }
      path = path.substring(0, path.length() - 1);
    }
    return path;
  }

  // not taking non-canonical paths into account
  public static boolean isSubPath(@NotNull String base, @NotNull String sub) {
    boolean startsWith = sub.startsWith(base);
    if (!startsWith) return false;
    int baseLen = base.length();
    if (sub.length() == baseLen) return true; // non-strict comparison: equal strings -> true

    char lastBaseChar = base.charAt(baseLen - 1);
    char nextChar = sub.charAt(baseLen);
    if (lastBaseChar == '/' || lastBaseChar == '\\' || nextChar == '/' || nextChar == '\\') {
      return true;
    }
    return false;
  }

  private abstract static class Packer {
    public void pack(File dir, File to) {
      FileOutputStream fos = null;
      ZipOutputStream out = null;

      try {
        fos = new FileOutputStream(to);
        out = createDeflaterStream(fos);
        _zip(dir, "", out);
      } catch (Exception e) {
        e.printStackTrace();
      } finally {
        try {
          if (out != null) {
            out.close();
          }
          if (fos != null) {
            fos.close();
          }
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
    }

    public void pack(Map<String, File> entries, File to) {
      FileOutputStream fos = null;
      ZipOutputStream out = null;

      try {
        fos = new FileOutputStream(to);
        out = createDeflaterStream(fos);
        for (String key : entries.keySet()) {
          addZipEntry(out, key, entries.get(key));
        }
      } catch (Exception e) {
        e.printStackTrace();
      } finally {
        try {
          if (out != null) {
            out.close();
          }
          if (fos != null) {
            fos.close();
          }
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
    }

    protected abstract ZipOutputStream createDeflaterStream(FileOutputStream fos) throws Exception;

    private static void addZipEntry(ZipOutputStream out, String path, File file) {
      ZipEntry entry = new ZipEntry(path);
      entry.setTime(file.lastModified());
      FileInputStream is = null;
      try {
        out.putNextEntry(entry);
        if (file.isFile()) {
          is = new FileInputStream(file);
          byte[] bytes = ReadUtil.read(is);
          out.write(bytes);
        }
        out.closeEntry();
      } catch (IOException e) {
        e.printStackTrace();
      } finally {
        if (is != null) {
          try {
            is.close();
          } catch (IOException e) {
            e.printStackTrace();
          }
        }
      }
    }

    private static void _zip(File base, String prefix, ZipOutputStream out) {
      File current = new File(base.getPath() + File.separator + prefix).getAbsoluteFile();

      if (prefix.length() > 0) {
        addZipEntry(out, prefix, current);
      }

      if (current.isDirectory()) {
        for (File file : current.listFiles()) {
          if (file.isFile()) {
            _zip(base, prefix + file.getName(), out);
          }
          if (file.isDirectory()) {
            _zip(base, prefix + file.getName() + "/", out);
          }
        }
      }
    }
  }
}
