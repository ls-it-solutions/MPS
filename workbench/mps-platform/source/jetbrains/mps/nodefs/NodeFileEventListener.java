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

import com.intellij.openapi.vfs.VirtualFile;

import java.util.Collection;

/**
 * {@link NodeVirtualFileSystem} used to dispatch events through {@link NodeVirtualFileSystem#NODE_FS_CHANGES} topic and {@code BulkFileListener}.
 * However, it seems that IDEA uses listener class to identify topic, and may attach some of our BulkFileListener for {@code VirtualFileManager#VFS_CHANGES}
 * topic to {@code NodeVirtualFileSystem}, depriving parts of MPS of FS notifications. Hence, need a distinct listener interface.
 * After all, there's only 1 client of node fs notifications.
 *
 * @author Artem Tikhomirov
 * @since 2021.2
 */
public interface NodeFileEventListener {
  default void changed(Collection<VirtualFile> vf) {
  }

  default void beforeDelete(Collection<VirtualFile> vf) {
  }
}
