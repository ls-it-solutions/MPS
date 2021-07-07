/*
 * Copyright 2003-2020 JetBrains s.r.o.
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
package jetbrains.mps.newTypesystem.context.typechecking;

import gnu.trove.THashMap;
import gnu.trove.THashSet;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.DeployListener;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.typesystem.runtime.ICheckingRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.newTypesystem.context.component.ITypeErrorComponent;
import jetbrains.mps.newTypesystem.context.component.IncrementalTypecheckingComponent;
import jetbrains.mps.newTypesystem.context.component.NonTypeSystemComponent;
import jetbrains.mps.newTypesystem.context.component.TypeSystemComponent;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.SModelAdapter;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelEventVisitorAdapter;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.typechecking.TypeInvalidationListener;
import jetbrains.mps.typechecking.TypecheckingObservable;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.typesystem.inference.TypeRecalculatedListener;
import jetbrains.mps.util.Cancellable;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.WeakSet;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;
import org.jetbrains.mps.openapi.util.Consumer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

public class IncrementalTypechecking extends ReportingTypechecking<State, TypeSystemComponent> {

  private ConcurrentLinkedQueue<SModelEvent> myEvents = new ConcurrentLinkedQueue<>();
  private ConcurrentLinkedQueue<SModel> myReplacedModels = new ConcurrentLinkedQueue<>();

  private DeployListener myClassesListener = new DeployListener() {
    @Override
    public void onUnloaded(Set<ReloadableModule> unloadedModules, @NotNull ProgressMonitor monitor) {
      clear();
    }
    @Override
    public void onLoaded(Set<ReloadableModule> loadedModules, @NotNull ProgressMonitor monitor) {
    }
  };

  private Map<SModel, Set<SNode>> mySModelNodes = new THashMap<>();

  private MyTypeRecalculatedListener myTypeRecalculatedListener = new MyTypeRecalculatedListener();

  private MyModelListener myModelListener = new MyModelListener();

  private MyModelListenerManager myModelListenerManager = new MyModelListenerManager();

  private MySmodelListener mySModelListener = new MySmodelListener();

  private NonTypeSystemComponent myNonTypeSystemComponent;

  private static final Logger LOG = Logger.wrap(LogManager.getLogger(IncrementalTypechecking.class));

  private NodeTypeAccess myNodeTypeAccess = new NodeTypeAccess();

  private ITypeErrorComponent myTypeErrorComponent;

  private final TypeChecker myTypeChecker;
  private final ClassLoaderManager myClassManager;
  private final Consumer<SNode> myTypeInvalidationNotifier;

  public IncrementalTypechecking(SNode node,
                                 State state,
                                 TypeChecker typeChecker,
                                 ClassLoaderManager clManager,
                                 Consumer<SNode> typeInvalidationNotifier) {
    super(node, state);
    myTypeChecker = typeChecker;
    myClassManager = clManager;
    myTypeInvalidationNotifier = typeInvalidationNotifier;
    myNonTypeSystemComponent = new NonTypeSystemComponent(typeChecker, state, this);
    init();
  }

  private void init() {
    myModelListenerManager.track(myRootNode);
    if (myClassManager != null) {
      myClassManager.addListener(myClassesListener);
    }
  }

  @Override
  protected TypeSystemComponent createTypecheckingComponent() {
    return new TypeSystemComponent(myTypeChecker, getState(), this);
  }

  public void clear() {
    clearNodesTypes();
    myNonTypeSystemComponent.clear();
    getTypecheckingComponent().clear();
  }

  public MyModelListenerManager getModelListenerManager() {
    return myModelListenerManager;
  }

  public MyTypeRecalculatedListener getTypeRecalculatedListener() {
    return myTypeRecalculatedListener;
  }

  private void clearNodesTypes() {
    getTypecheckingComponent().clearNodeTypes();
    myNonTypeSystemComponent.clearNodeTypes();
  }

  private ITypeErrorComponent getTypeErrorComponent() {
    return myTypeErrorComponent != null ? myTypeErrorComponent : getTypecheckingComponent();
  }

  public void reportTypeError(IErrorReporter errorReporter) {
    getTypeErrorComponent().addError(errorReporter);
  }

  public void applyRuleToNode(@NotNull SNode node, ICheckingRule_Runtime rule, IsApplicableStatus status, TypeCheckingContext typeCheckingContext) {
    try {
      rule.applyRule(node, typeCheckingContext, status);
    } catch (Throwable t) {
      LOG.error("an error occurred while applying rule to node " + node, t, node);
    }
  }

  public void runApplyRulesTo(SNode node, Runnable run) {
    myNodeTypeAccess.pushNode(node);
    try {
      run.run();
    } finally {
      myNodeTypeAccess.popNode();
    }
  }

  @Override
  public void dispose() {
    if (myClassManager != null) {
      myClassManager.removeListener(myClassesListener);
    }
    if (myModelListenerManager != null) {
      myModelListenerManager.dispose();
      myModelListenerManager = null;
    }
    if (myNonTypeSystemComponent != null) {
      myNonTypeSystemComponent = null;
    }
    mySModelListener = null;
    super.dispose();
  }


  public void setCheckedNonTypesystem() {
    myNonTypeSystemComponent.setChecked();
  }

  public void addDependencyOnCurrent(SNode node) {
    if (node == null) {
      LOG.error("Typesystem dependency not tracked. ");
      return;
    }

    Set<SNode> hashSet = myNodeTypeAccess.peekNode() != null ?
                         Collections.singleton(myNodeTypeAccess.peekNode()) :
                         Collections.emptySet();
    getTypecheckingComponent().addDependentNodesTypeSystem(node, hashSet);
  }

  public void addDependencyForCurrent(SNode node) {
    SNode current = myNodeTypeAccess.peekNode();
    if (current == null) {
      LOG.error("Typesystem dependency not tracked. ");
      return;
    }
    if (node != null) {
      Set<SNode> hashSet = new THashSet<>(1);
      hashSet.add(node);
      getTypecheckingComponent().addDependentNodesTypeSystem(current, hashSet);
    }
  }

  @Override
  public boolean applyNonTypesystemRulesToRoot(TypeCheckingContext typeCheckingContext, Cancellable c, TypecheckingObservable observable) {
    ITypeErrorComponent oldTypeErrorComponent = myTypeErrorComponent;
    myTypeErrorComponent = myNonTypeSystemComponent;
    try {
      return myNonTypeSystemComponent.applyNonTypeSystemRulesToRoot(typeCheckingContext, getNode(), c, observable);
    } finally {
      myTypeErrorComponent = oldTypeErrorComponent;
    }
  }

  public SNode getType(SNode node) {
    return getTypecheckingComponent().getType(node);
  }

  @Override
  @NotNull
  public List<IErrorReporter> getErrors(SNode node) {
    List<IErrorReporter> result = new ArrayList<>(super.getErrors(node));
    Map<SNode, List<IErrorReporter>> nodesToErrorsMapNT = myNonTypeSystemComponent.getNodesToErrorsMap();
    List<IErrorReporter> iErrorReporters = nodesToErrorsMapNT.get(node);
    if (iErrorReporters != null) {
      result.addAll(iErrorReporters);
    }
    return result;
  }

  //--------------------------------------------------
  @Override
  public Set<Pair<SNode, List<IErrorReporter>>> getNodesWithErrors(boolean typesystemErrors) {
    if (typesystemErrors) {
      return new THashSet<>(super.getNodesWithErrors(typesystemErrors));
    }

    Set<Pair<SNode, List<IErrorReporter>>> result = new THashSet<>();
    Map<SNode, List<IErrorReporter>> nodesToErrorsMapNT = myNonTypeSystemComponent.getNodesToErrorsMap();
    Set<SNode> keySet = new THashSet<>(nodesToErrorsMapNT.keySet());

    for (SNode key : keySet) {
      List<IErrorReporter> reporters = nodesToErrorsMapNT.get(key);
      if (reporters.isEmpty()) continue;
      if (key.getModel() == null) {
        LOG.warning("Type system reports error for node without containing root. Node: " + key);
        for (IErrorReporter reporter : reporters) {
          LOG.warning("This error was reported from: " + reporter.getRuleNode(), reporter.getRuleNode());
        }
        continue;
      }
      result.add(new Pair<>(key, reporters));
    }
    return result;
  }


  public void markNodeAsAffectedByRule(SNode node, String ruleModel, String ruleId) {
    getTypecheckingComponent().markNodeAsAffectedByRule(node, ruleModel, ruleId);
  }

  public Set<Pair<String, String>> getRulesWhichAffectNodeType(SNode node) {
    return getTypecheckingComponent().getRulesWhichAffectNodeType(node);
  }

  public boolean isCheckedNonTypesystem() {
    processPendingEvents();
    return myNonTypeSystemComponent.isChecked();
  }

  @Override
  public boolean isChecked(boolean considerNonTypeSystemRules) {
    processPendingEvents();
    boolean typesChecked = super.isChecked(considerNonTypeSystemRules);
    if (considerNonTypeSystemRules) {
      return typesChecked && myNonTypeSystemComponent.isChecked();
    } else {
      return typesChecked;
    }
  }

  private void processPendingEvents() {
    final MySModelEventVisitorAdapter visitor = new MySModelEventVisitorAdapter();
    for (SModelEvent event = myEvents.poll(); event !=  null; event = myEvents.poll()) {
      event.accept(visitor);
    }
    for (SModel replacedModel = myReplacedModels.poll(); replacedModel != null; replacedModel = myReplacedModels.poll()) {
      for (SNode node : mySModelNodes.get(replacedModel)) {
        visitor.markInvalid(node);
      }
    }
  }

  public void track(SNode node) {
    myModelListenerManager.track(node);
  }

  public void updateGCedNodes() {
    getModelListenerManager().updateGCedNodes();
  }

  public void notifyTypeInvalidated(SNode node) {
    if (myTypeInvalidationNotifier != null) {
      myTypeInvalidationNotifier.accept(node);
    }
  }

  private class MyModelListener extends SModelAdapter {
    @Override
    public void eventFired(SModelEvent event) {
      myEvents.add(event);
    }
  }

  private class MySmodelListener extends SRepositoryContentAdapter {
    @Override
    public void modelReplaced(SModel model) {
      myReplacedModels.add(model);
    }
  }

  private class MySModelEventVisitorAdapter extends SModelEventVisitorAdapter {
    @Override
    public void visitChildEvent(SModelChildEvent event) {
      final SNode child = event.getChild();
      final SNode parent = event.getParent();

      if (jetbrains.mps.smodel.SNodeUtil.isSideTransformInfo(child) &&
          (event.isRemoved() || jetbrains.mps.smodel.SNodeUtil.link_BaseConcept_smodelAttribute.equals(child.getContainmentLink()))) {
        return;
      }

      markInvalid(child);
      markInvalid(parent);

      List<SNode> childWithDescendants = IterableUtil.copyToList(SNodeUtil.getDescendants(child, null, true));
      if (event.isRemoved()) {
        Iterator<SNode> it = childWithDescendants.iterator();
        it.next(); // skip child, we've marked it as invalid already
        while (it.hasNext()) {
          SNode descendant = it.next();
          //invalidate nodes which are removed
          markDependentNodesForInvalidation(descendant, myNonTypeSystemComponent);
          markDependentNodesForInvalidation(descendant, getTypecheckingComponent());
        }
      }

      List<SReference> references = new ArrayList<>();
      for (SNode descendant : childWithDescendants) {
        references.addAll(IterableUtil.asCollection(descendant.getReferences()));
      }
      markReferenceTargetsInvalid(references);
    }

    private void markReferenceTargetsInvalid(List<SReference> references) {
      for (SReference reference : references) {
        // MPS-18585 IncrementalTypecheking doesn't invalidate target nodes of dynamic refs if source node has been detached from model
        if (SLinkOperations.isDynamic(reference)) {
          // the problem was in a more strict case:
          // dynamic reference from a detached node (its getTargetNode() seems to be non-sensible)
          // but I skip all DynamicReferences
          continue;
        }
        SNode targetNode = jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(reference);
        if (targetNode != null) {
          markDependentNodesForInvalidation(targetNode, myNonTypeSystemComponent);
        }
      }
    }

    @Override
    public void visitReferenceEvent(SModelReferenceEvent event) {
      SReference ref = event.getReference();
      markInvalid(ref.getSourceNode());
      // A heuristic: always invalidate the node's parent (MPS-21481)
      if (ref.getSourceNode().getParent() != null) {
        markInvalid(ref.getSourceNode().getParent());
      }
      if (!event.isAdded()) return;
      // MPS-18585 IncrementalTypecheking doesn't invalidate target nodes of dynamic refs if source node has been detached from model
      if (SLinkOperations.isDynamic(ref) && ref.getSourceNode().getModel() == null) {
        return;
      }
      SNode node = jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(event.getReference());
      if (node == null) return;
      markDependentNodesForInvalidation(node, myNonTypeSystemComponent);
    }

    @Override
    public void visitPropertyEvent(SModelPropertyEvent event) {
      markDependentOnPropertyNodesForInvalidation(event.getNode(), event.getPropertyName());
    }

    private void markInvalid(SNode node) {
      markDependentNodesForInvalidation(node, getTypecheckingComponent());
      markDependentNodesForInvalidation(node, myNonTypeSystemComponent);
    }

    private void markDependentNodesForInvalidation(SNode eventNode, IncrementalTypecheckingComponent component) {
      component.addNodeToInvalidate(eventNode);
    }

    private void markDependentOnPropertyNodesForInvalidation(SNode eventNode, String propertyName) {
      myNonTypeSystemComponent.addPropertyToInvalidate(eventNode, propertyName);
      getTypecheckingComponent().addNodeToInvalidate(eventNode);
    }
  }

  private class MyTypeRecalculatedListener implements TypeRecalculatedListener, TypeInvalidationListener {
    MyTypeRecalculatedListener() {
    }

    @Override
    public void typeWillBeRecalculatedForTerm(SNode term) {
      myNonTypeSystemComponent.typeWillBeRecalculatedForTerm(term);
    }

    @Override
    public void typeInvalidated(SNode expression) {
      myNonTypeSystemComponent.typeWillBeRecalculatedForTerm(expression);
    }
  }

  private class MyModelListenerManager {
    private ReferenceQueue<SNode> myReferenceQueue = new ReferenceQueue<>();
    private Map<SModel, Integer> myNodesCount = new THashMap<>();
    private Map<WeakReference, SModel> myDescriptors = new THashMap<>();

    /**
     * Warning: this method should be called only once for each node
     * We do not check for duplicated nodes
     */
    void track(SNode node) {
      SModel sm = node.getModel();
      if (sm == null || sm.getRepository() == null) {
        // detached model, ignore. This check used to be SNodeUtil.isAccessible.
        return;
      }
      if (!myNodesCount.containsKey(sm)) {
        ((SModelInternal) sm).addModelListener(myModelListener);
        sm.addModelListener(mySModelListener);
        myNodesCount.put(sm, 1);
        mySModelNodes.put(sm, new WeakSet<>());
      } else {
        Integer oldValue = myNodesCount.get(sm);
        myNodesCount.put(sm, oldValue + 1);
      }

      WeakReference<SNode> ref = new WeakReference<>(node, myReferenceQueue);
      myDescriptors.put(ref, sm);

      mySModelNodes.get(sm).add(node);
    }


    void updateGCedNodes() {
      while (true) {
        Reference<? extends SNode> ref = myReferenceQueue.poll();
        if (ref == null) {
          return;
        }

        SModel sm = myDescriptors.get(ref);
        Integer count = myNodesCount.get(sm);
        if (count == 1) {
          ((SModelInternal) sm).removeModelListener(myModelListener);
          sm.removeModelListener(mySModelListener);
          myNodesCount.remove(sm);
          mySModelNodes.remove(sm);
        } else {
          myNodesCount.put(sm, count - 1);
        }

        myDescriptors.remove(ref);
      }
    }

    void dispose() {
      for (SModel sm : Collections.unmodifiableCollection(myNodesCount.keySet())) {
        ((SModelInternal) sm).removeModelListener(myModelListener);
        sm.removeModelListener(mySModelListener);
      }
    }
  }

  private static class NodeTypeAccess {
    private LinkedList<SNode> myStack = new LinkedList<>();

    private void pushNode(SNode node) {
      myStack.push(node);
    }

    private void popNode() {
      myStack.pop();
    }

    private SNode peekNode() {
      return myStack.peek();
    }
  }
}

