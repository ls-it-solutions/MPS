/*
 * Copyright 2003-2018 JetBrains s.r.o.
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
package jetbrains.mps.generator.template;

import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.query.GeneratorQueryProvider;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;

public interface ITemplateGenerator extends GeneratorQueryProvider.Source {

  SModel getInputModel();

  SModel getOutputModel();

  /**
   * Generally, mapping labels are not available till the end ot structure transformation, which may run in
   * parallel threads and thus access to label would be unpredictable.
   * Use this method to control retrieve of labels only, it's not suitable to tell whether it's
   * possible to {@link #registerMappingLabel(SNode, String, SNode) add new label}
   * @return <code>true</code> if it's proper time to query (!) for label
   */
  boolean areMappingsAvailable();

  void registerMappingLabel(SNode inputNode, String mappingName, SNode outputNode);

  /**
   * For the mapping label the comparable decides if the key is in the keySet.
   * If so, the key will be used to return the value.
   * This is specially useful if the comparable might be equivalent to a search key,
   * which is produced on demand
   * @param comparable
   * @param mappingName
   * @return output if the key could be found with the help of the comparator
   */
  @Nullable
  SNode findOutputNodeByComparableInputNodeAndMappingName(@NotNull Comparable<SNode> comparable, @Nullable String mappingName);

  /**
   * @param inputNode node from almost any model that may have served as an input for a generator. We tolerate null value now, indicating
   *                  we are looking for conditional root (takes no input to create one)
   * @param mappingName label of the transformation of interest. Null value is tolerated but would yield no result instantly.
   * @return node created from the specified input and marked with the label.
   */
  @Nullable
  SNode findOutputNodeByInputNodeAndMappingName(SNode inputNode, @Nullable String mappingName);

  /**
   * @param inputModel null is tolerated, mappings for the actual model are looked up
   * @param mappingName label of the transformation of interest. Null value is tolerated but would yield no result instantly.
   * @return conditional root instantiated for the supplied model
   */
  @Nullable
  SNode findOutputNode(@Nullable SModel inputModel, @Nullable String mappingName);

  List<SNode> findAllOutputNodesByInputNodeAndMappingName(SNode inputNode, String mappingName);

  SNode findCopiedOutputNodeForInputNode(SNode inputNode);

  GenerationSessionContext getGeneratorSessionContext();

  // XXX likely, useless as well.
  boolean isStrict();

  /**
   * @deprecated always {@code true}
   */
  @Deprecated
  @ToRemove(version = 2018.2)
  default boolean isDirty(SNode node) {
    return true;
  }

  IGeneratorLogger getLogger();
}
