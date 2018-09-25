/*
 * Copyright 2003-2017 JetBrains s.r.o.
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

import jetbrains.mps.generator.impl.GeneratorUtil;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.textgen.trace.TracingUtil;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.List;

/**
 * Context for operations of genContext parameter in generator's concept functions. This is what generated code of template queries (like input nodes query,
 * property and reference macro, etc) have access to.
 * Igor Alshannikov
 * Jul 21, 2008
 */
public class TemplateQueryContext {

  private final SNodeReference myTemplateNode;
  protected TemplateContext myContext;
  private final ITemplateGenerator myGenerator;

  /**
   * Context for queries when an input node is not known yet (queries of an MC or a script).
   * @since 3.3
   */
  public TemplateQueryContext(@NotNull SNodeReference templateNode, @NotNull ITemplateGenerator generator) {
    myTemplateNode = templateNode;
    myContext = null;
    myGenerator = generator;
  }

  protected TemplateQueryContext(@NotNull SNodeReference templateNode, @NotNull TemplateContext context) {
    myContext = context;
    myTemplateNode = templateNode;
    myGenerator = context.getEnvironment().getGenerator();
  }

  /**
   * Cons for internal/tests use, generally subclasses shall not call it.
   */
  protected TemplateQueryContext() {
    myContext = null;
    myTemplateNode = null;
    myGenerator = null;
  }

  /**
   * 'node' mapping
   */
  public SNode getNode() {
    return getInputNode();
  }


  public SNode getInputNode() {
    return myContext == null ? null : myContext.getInput();
  }

  public SNode getOutputNode() {
    return null; //used in ref macros
  }

  public SModel getInputModel() {
    return myGenerator.getInputModel();
  }

  public boolean isDirty(SNode node) {
    return myGenerator.isDirty(node);
  }

  public SModel getOutputModel() {
    return myGenerator.getOutputModel();
  }

  public SModel getOriginalInputModel() {
    return myGenerator.getGeneratorSessionContext().getOriginalInputModel();
  }

  /**
   * 'generator' mapping
   */
  public ITemplateGenerator getGenerator() {
    return myGenerator;
  }

  /**
   * Find out conditional root with a given ML, created from specified model
   * @param label generally shall not be null, as it's required in GenerationContextOp_GetOutputByLabel
   * @param inputModel can be null, which indicates current input model. Otherwise, a model root was created from
   * @return a node in a transient/checkpoint model if generator has any recorded.
   * @since 3.4
   */
  @Nullable
  public SNode getOutputNodeByMappingLabel(String label, @Nullable SModel inputModel) {
    if (!myGenerator.areMappingsAvailable()) {
      myGenerator.getLogger().error(getTemplateNodeRef(), "'get output by label' cannot be used here");
    }
    return myGenerator.findOutputNode(inputModel, label);
  }

  @Nullable
  public SNode getOutputNodeByComparableInputNodeAndMappingLabel(@NotNull Comparable<SNode> inputNode, @NotNull String label) {
    return myGenerator.findOutputNodeByComparableInputNodeAndMappingName(inputNode, label);
  }
  public SNode getOutputNodeByInputNodeAndMappingLabel(SNode inputNode, String label) {
    if (inputNode == null) return null;
    if (!myGenerator.areMappingsAvailable()) {
      myGenerator.getLogger().error(getTemplateNodeRef(), "'get output by input and label' cannot be used here");
    }
    return myGenerator.findOutputNodeByInputNodeAndMappingName(inputNode, label);
  }

  public List<SNode> getAllOutputNodesByInputNodeAndMappingLabel(SNode inputNode, String label) {
    if (inputNode == null) return null;
    if (!myGenerator.areMappingsAvailable()) {
      myGenerator.getLogger().error(getTemplateNodeRef(), "'get all output by input and label' cannot be used here");
    }
    return myGenerator.findAllOutputNodesByInputNodeAndMappingName(inputNode, label);
  }

  public void registerMappingLabel(SNode inputNode, String mappingName, SNode outputNode) {
    // technically, we could do myGenerator.isStrict() && myGenerator.areMappingsAvailable() -> fail "no more labels once transformation is over"
    // but this would expose knowledge that areMappingsAvailable is meaningful only in strict mode.
    // Since we do not restrict registration of mapping labels e.g. in TEEImpl, I decided not to keep a check here
    myGenerator.registerMappingLabel(inputNode, mappingName, outputNode);
  }

  public SNode getCopiedOutputNodeForInputNode(SNode inputNode) {
    if (inputNode == null) return null;
    if (!myGenerator.areMappingsAvailable()) {
      myGenerator.getLogger().error(getTemplateNodeRef(), "'get copied node for input' cannot be used here");
    }
    return myGenerator.findCopiedOutputNodeForInputNode(inputNode);
  }

  public SNode getPreviousInputNodeByMappingLabel(String label) {
    return myContext == null ? null : myContext.getNamedInput(label);
  }

  public SNode getOriginalCopiedInputNode(SNode node) {
    if (node == null) return null;
    SRepository repo = myGenerator.getGeneratorSessionContext().getRepository();
    SNode result = TracingUtil.getInputNode(node, repo);
    return result != null ? result : node;
  }

  /**
   *
   * @param baseName prefix
   * @param contextNode optional extra context node. Contributes (if a named node) a name fragment to further distinguish names, holds used names
   *                    (IOW, defines name visibility context). If no {@code contextNode} is specified, scope is global.
   * @return value {@code baseName}[_{@code hash(contextNode)}][_{@code hash(getInputNode())}][_{@code counter}]
   */
  public String createUniqueName(String baseName, SNode contextNode) {
    return myGenerator.getGeneratorSessionContext().createUniqueName(baseName, contextNode, getInputNode());
  }

  /**
   *
   * @param baseName prefix the name sequence would share
   * @param contextNode optional context node to keep last used index for {@code baseName}.{@code null} means global (i.e. session) context.
   * @param noIndexForFirst if {@code true}, the first value returned would be "baseName", second "baseName1", etc.
   *                        When {@code false}, all names would get index, starting from 0.
   * @return {@code baseName}[{@code counter}]
   */
  public String createIndexedName(String baseName, SNode contextNode, boolean noIndexForFirst) {
    return myGenerator.getGeneratorSessionContext().createIndexedName(baseName, contextNode, noIndexForFirst);
  }

  // user objects

  public Object putTransientObject(Object key, Object o) {
    myGenerator.getGeneratorSessionContext().putTransientObject(key, o);
    return o;
  }

  public Object getTransientObject(Object key) {
    return myGenerator.getGeneratorSessionContext().getTransientObject(key);
  }

  public Object getVariable(String name) {
    return myContext == null ? null : myContext.getVariable(name);
  }

  public Object getPatternVariable(String name) {
    return myContext == null ? null : myContext.getPatternVariable(name);
  }

  public Object getGenerationParameter(String name) {
    return myGenerator.getGeneratorSessionContext().getGenerationParameter(name);
  }

  public Object putStepObject(Object key, Object o) {
    myGenerator.getGeneratorSessionContext().putStepObject(key, o);
    return o;
  }

  public Object getStepObject(Object key) {
    return myGenerator.getGeneratorSessionContext().getStepObject(key);
  }

  public Object putSessionObject(Object key, Object o) {
    myGenerator.getGeneratorSessionContext().putSessionObject(key, o);
    return o;
  }

  public Object getSessionObject(Object key) {
    return myGenerator.getGeneratorSessionContext().getSessionObject(key);
  }

  public void showInformationMessage(SNode node, String message) {
    myGenerator.getLogger().info(node == null ? getTemplateNodeRef() : node.getReference(), message);
  }

  public void showWarningMessage(SNode node, String message) {
    myGenerator.getLogger().warning(node == null ? getTemplateNodeRef() : node.getReference(), message);
  }

  public void showErrorMessage(SNode node, String message) {
    SNode inputNode = (node != null) ? node : getInputNode();
    SNodeReference tn = getTemplateNodeRef();
    SNodeReference rnr = getRuleNode();
    myGenerator.getLogger().error(rnr == null ? tn : rnr, message,
        GeneratorUtil.describeIfExists(inputNode, "input node"), GeneratorUtil.describeIfExists(tn, "template node"));
  }

  /**
   * Node in template model most close to the query being evaluated. For macro nodes, however
   * shall point to macro's parent node (genContext.templateNode op contract)
   * @deprecated  doesn't make sense for generated templates. Switch to {@link #getTemplateReference()}
   *
   */
  @Deprecated
  @ToRemove(version = 3.4)
  public SNode getTemplateNode() {
    SNodeReference tnr = getTemplateNodeRef();
    SRepository repo = myGenerator.getGeneratorSessionContext().getRepository();
    return tnr == null ? null : tnr.resolve(repo);
  }

  /**
   * @return context template node where the query is evaluated, if known.
   */
  @Nullable
  public final SNodeReference getTemplateReference() {
    return getTemplateNodeRef();
  }

  /**
   * @return context template node where the query is evaluated
   */
  @Nullable
  protected SNodeReference getTemplateNodeRef() {
    return myTemplateNode;
  }

  /**
   * @return context rule, where query is being evaluated, if available
   */
  @Nullable
  protected SNodeReference getRuleNode() {
    return null;
  }
}
