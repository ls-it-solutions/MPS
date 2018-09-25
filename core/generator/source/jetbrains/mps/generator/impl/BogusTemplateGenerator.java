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
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.query.GeneratorQueryProvider;
import jetbrains.mps.generator.template.ITemplateGenerator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.List;

/**
 * Ths only purpose of this ITemplateGenerator implementation is to satisfy TemplateMappingConfiguration.isApplicable without
 * need to hack regular TemplateGenerator implementation.
 * The moment TemplateMappingConfiguration.isApplicable is capable to get TemplateQueryContext, this class is likely of no use.
 * @author Artem Tikhomirov
 * @since 2018.2
 */
/*package*/ final class BogusTemplateGenerator implements ITemplateGenerator {

  private final GenerationSessionContext mySessionContext;
  private final SModel myInputModel;
  private final GeneratorQueryProvider.Source myQuerySource;

  // non-null arguments
  /*package*/ BogusTemplateGenerator(GenerationSessionContext sessionContext, SModel inputModel, GeneratorQueryProvider.Source gqps) {
    mySessionContext = sessionContext;
    myInputModel = inputModel;
    myQuerySource = gqps;
  }

  @NotNull
  @Override
  public GeneratorQueryProvider getQueryProvider(@NotNull SNodeReference templateNodeRef) {
    return myQuerySource.getQueryProvider(templateNodeRef);
  }

  @Override
  public SModel getInputModel() {
    return myInputModel;
  }

  @Override
  public SModel getOutputModel() {
    return null;
  }

  @Override
  public boolean areMappingsAvailable() {
    return false;
  }

  @Override
  public void registerMappingLabel(SNode inputNode, String mappingName, SNode outputNode) {
    throw new UnsupportedOperationException();
  }

  @Nullable
  @Override
  public SNode findOutputNodeByComparableInputNodeAndMappingName(@NotNull Comparable<SNode> comparable, @Nullable String mappingName) {
    return null;
  }

  @Nullable
  @Override
  public SNode findOutputNodeByInputNodeAndMappingName(SNode inputNode, @Nullable String mappingName) {
    throw new UnsupportedOperationException();
  }

  @Nullable
  @Override
  public SNode findOutputNode(@Nullable SModel inputModel, @Nullable String mappingName) {
    throw new UnsupportedOperationException();
  }

  @Override
  public List<SNode> findAllOutputNodesByInputNodeAndMappingName(SNode inputNode, String mappingName) {
    throw new UnsupportedOperationException();
  }

  @Override
  public SNode findCopiedOutputNodeForInputNode(SNode inputNode) {
    throw new UnsupportedOperationException();
  }

  @Override
  public GenerationSessionContext getGeneratorSessionContext() {
    return mySessionContext;
  }

  @Override
  public boolean isStrict() {
    return true;
  }

  @Override
  public IGeneratorLogger getLogger() {
    return mySessionContext.getLogger();
  }
}
