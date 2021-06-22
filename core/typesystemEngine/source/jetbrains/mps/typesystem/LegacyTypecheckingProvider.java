/*
 * Copyright 2003-2019 JetBrains s.r.o.
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
package jetbrains.mps.typesystem;

import gnu.trove.THashSet;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.errors.item.NodeReportItem;
import jetbrains.mps.errors.item.TypesystemReportItemAdapter;
import jetbrains.mps.lang.pattern.ConceptMatchingPattern;
import jetbrains.mps.lang.pattern.INodeMatchingPattern;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.newTypesystem.context.IncrementalTypecheckingContext;
import jetbrains.mps.newTypesystem.context.TargetTypecheckingContext;
import jetbrains.mps.newTypesystem.context.typechecking.IncrementalTypechecking;
import jetbrains.mps.typechecking.TypeAccessListener;
import jetbrains.mps.typechecking.TypeInvalidationListener;
import jetbrains.mps.typechecking.TypecheckingObservable;
import jetbrains.mps.typechecking.TypecheckingQueries;
import jetbrains.mps.typechecking.TypecheckingSession.Flags;
import jetbrains.mps.typechecking.backend.TypecheckingProvider;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.typesystem.inference.util.StructuralNodeSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

/**
 * Implementation of typechecking queries on top of the legacy (default) typechecking provider.
 * @author Fedor Isakov
 */
public class LegacyTypecheckingProvider implements TypecheckingProvider<LegacyTypecheckingQueries> {

  private final ClassLoaderManager myClassLoaderManager;

  public LegacyTypecheckingProvider(ClassLoaderManager classLoaderManager) {
    myClassLoaderManager = classLoaderManager;
  }

  @Override
  public boolean isRelevant(@NotNull SNode src, SNode trg, SConcept trgConcept) {
    return true;
  }

  @NotNull
  @Override
  public LegacyTypecheckingQueries createQueries(@NotNull Flags flags) {
    if (flags.getRoot() != null && flags.isIncremental()) {
      IncrementalTypecheckingContext typecheckingContext = new IncrementalTypecheckingContext(flags.getRoot(), TypeChecker.getInstance(), myClassLoaderManager);
      IncrementalLegacyTypecheckingQueries queries = new IncrementalLegacyTypecheckingQueries(flags, typecheckingContext);
      typecheckingContext.setTypeInvalidateNotifier((node) -> queries.myObservable.dispatchTypeInvalidated(node));
      return queries;

    } else if (flags.isGenerator()) {
      return new GeneratorLegacyTypecheckingSession(flags);

    } else {
      return new TargetLegacyTypecheckingQueries(flags);
    }
  }

  @Override
  public Class<LegacyTypecheckingQueries> getQueriesClass() {
    return LegacyTypecheckingQueries.class;
  }

  @Override
  public void disposeQueries(@NotNull TypecheckingQueries queries) {
    if (!(queries instanceof LegacyTypecheckingQueries)) {
      throw new IllegalArgumentException("Invalid parameter: " + queries);
    }
    if (queries instanceof IncrementalLegacyTypecheckingQueries) {
      ((IncrementalLegacyTypecheckingQueries) queries).disposeTypeCheckingContext();
    }
  }

  private static abstract class AbstractLegacyTypecheckingQueries implements LegacyTypecheckingQueries {

    protected final Flags myFlags;

    public AbstractLegacyTypecheckingQueries(Flags flags) {
      myFlags = flags;
    }

    @Nullable
    @Override
    public SNode getTypeOf(SNode expression) {
      if (expression == null) return null;
      return compute((tcc) -> tcc.getTypeOf(expression, TypeChecker.getInstance()));
    }

    @Nullable
    @Override
    public SNode getInferredType(SNode expression) {
      if (expression == null) return null;
      return compute((tcc) ->
             TypeChecker.getInstance().getInequalitiesForHole(expression, false).getExpectedType());
    }

    @Override
    public final boolean convertsTo(@NotNull SNode typeA, @NotNull SNode typeB) {
      return TypeChecker.getInstance().getSubtypingManager().isSubtype(typeA, typeB, true);
    }

    @Override
    public final boolean isSubtype(SNode typeA, SNode typeB) {
      if (typeA == null || typeB == null) return false;
      return TypeChecker.getInstance().getSubtypingManager().isSubtype(typeA, typeB, true);
    }

    @Override
    public final boolean isStrongSubtype(SNode typeA, SNode typeB) {
      if (typeA == null || typeB == null) return false;
      return TypeChecker.getInstance().getSubtypingManager().isSubtype(typeA, typeB, false);
    }

    @NotNull
    @Override
    public final Collection<SNode> getImmediateSupertypes(@NotNull SNode typeA) {
      StructuralNodeSet<?> sns = TypeChecker.getInstance().getSubtypingManager().collectImmediateSupertypes(typeA); // weak is the default
      return Collections.unmodifiableCollection(sns);
    }

    @Override
    public final SNode coerceType(SNode type, @NotNull SConcept typeConcept) {
      if (type == null) return null;
      return TypeChecker.getInstance().getRuntimeSupport().coerce_(type, new ConceptMatchingPattern(typeConcept), true);
    }

    @Nullable
    @Override
    public final SNode coerceType(SNode type, @NotNull INodeMatchingPattern targetPattern) {
      if (type == null) return null;
      return TypeChecker.getInstance().getRuntimeSupport().coerce_(type, targetPattern, true);
    }

    @Override
    public final SNode strongCoerceType(SNode type, @NotNull SConcept typeConcept) {
      if (type == null) return null;
      return TypeChecker.getInstance().getRuntimeSupport().coerce_(type, new ConceptMatchingPattern(typeConcept), false);
    }

    @Nullable
    @Override
    public final SNode strongCoerceType(SNode type, @NotNull INodeMatchingPattern targetPattern) {
      if (type == null) return null;
      return TypeChecker.getInstance().getRuntimeSupport().coerce_(type, targetPattern, false);
    }

    @Override
    public void checkRecursively(SNode root, Consumer<? super NodeReportItem> errorsConsumer) {
      run((tcc) -> {
        // the typechecking context is expected to have been created with the same root node
        if (tcc.getNode() == null || !SNodeOperations.getNodeAncestors(root, null, true).contains(tcc.getNode())) {
          return;
        }
        tcc.checkIfNotChecked(root, false);
        tcc.getNodesWithErrors(true)
           .stream()
           .flatMap((pair) -> pair.o2.stream())
           .map(TypesystemReportItemAdapter::new)
           .forEach(errorsConsumer);
      });
    }

    @Override
    public void clearCache(SNode root) {
      run(TypeCheckingContext::clear);
    }

    @Override
    public boolean isCacheUpToDate(SNode root) {
      return false;
    }

    protected abstract <R> R compute(Function<? super TypeCheckingContext, R> fun);

    protected abstract void run(Consumer<? super TypeCheckingContext> fun);

  }

  private static class IncrementalLegacyTypecheckingQueries extends AbstractLegacyTypecheckingQueries implements LegacyTypecheckingQueries {

    private final IncrementalTypecheckingContext myTypecheckingContext;
    private final Observable myObservable = new Observable();

    public IncrementalLegacyTypecheckingQueries(Flags flags, IncrementalTypecheckingContext typecheckingContext) {
      super(flags);
      this.myTypecheckingContext = typecheckingContext;
    }

    @Override
    public boolean isIncremental() {
      return true;
    }
    
    @Override
    public TypeCheckingContext getTypeCheckingContext() {
      return myTypecheckingContext;
    }

    @Override
    public boolean isCacheUpToDate(SNode root) {
      return compute((tcc) -> {
        // the typechecking context is expected to have been created with the same root node
        if (tcc.getNode() == null || tcc.getNode() != root) return false;
        IncrementalTypechecking typesComponent = tcc.getBaseNodeTypesComponent();
        return  typesComponent.isChecked(false);
      });
    }

    @Nullable
    @Override
    public SNode getTypeOf(SNode expression) {
      myObservable.dispatchTypeAccessed(expression);
      return super.getTypeOf(expression);
    }

    @Nullable
    @Override
    public TypecheckingObservable getObservable() {
      return myObservable;
    }

    protected void disposeTypeCheckingContext() {
      myTypecheckingContext.dispose();
    }

    @Override
    protected <R> R compute(Function<? super TypeCheckingContext, R> fun) {
      return fun.apply(myTypecheckingContext);
    }

    @Override
    protected void run(Consumer<? super TypeCheckingContext> fun) {
      fun.accept(myTypecheckingContext);
    }

    private static class Observable implements TypecheckingObservable {

      private Set<TypeAccessListener> myTypeAccessListeners = new THashSet<>();
      private Set<TypeInvalidationListener> myTypeInvalidationListeners = new THashSet<>();

      @Override
      public synchronized void addTypeAccessListener(TypeAccessListener listener) {
        myTypeAccessListeners.add(listener);
      }

      @Override
      public synchronized void removeTypeAccessListener(TypeAccessListener listener) {
        myTypeAccessListeners.remove(listener);
      }

      @Override
      public synchronized void addTypeInvalidationListener(TypeInvalidationListener listener) {
        myTypeInvalidationListeners.add(listener);
      }

      @Override
      public synchronized void removeTypeInvalidationListener(TypeInvalidationListener listener) {
        myTypeInvalidationListeners.remove(listener);
      }

      private synchronized void dispatchTypeAccessed(SNode expression) {
        ArrayList<TypeAccessListener> listeners = new ArrayList<>(myTypeAccessListeners);
        for (TypeAccessListener listener : listeners) {
          listener.typeAccessed(expression);
        }
      }

      private synchronized void dispatchTypeInvalidated(SNode expression) {
        ArrayList<TypeInvalidationListener> listeners = new ArrayList<>(myTypeInvalidationListeners);
        for (TypeInvalidationListener listener : listeners) {
          listener.typeInvalidated(expression);
        }
      }
    }

  }

  private static class TargetLegacyTypecheckingQueries extends AbstractLegacyTypecheckingQueries implements LegacyTypecheckingQueries {

    public TargetLegacyTypecheckingQueries(Flags flags) {
      super(flags);
    }

    @Override
    public boolean isIncremental() {
      return false;
    }

    @Override
    public TypeCheckingContext getTypeCheckingContext() {
      throw new UnsupportedOperationException();
    }

    protected <R> R compute(Function<? super TypeCheckingContext, R> fun) {
      final TypeCheckingContext tcc = withTypecheckingContext();
      try {
        return fun.apply(tcc);

      } finally {
        tcc.dispose();
      }
    }
    protected void run(Consumer<? super TypeCheckingContext> fun) {
      final TypeCheckingContext tcc = withTypecheckingContext();
      try {
        fun.accept(tcc);

      } finally {
        tcc.dispose();
      }
    }

    @NotNull
    protected TargetTypecheckingContext withTypecheckingContext() {
      return new TargetTypecheckingContext(myFlags.getRoot(), TypeChecker.getInstance());
    }

  }

  private static class GeneratorLegacyTypecheckingSession extends TargetLegacyTypecheckingQueries {

    public GeneratorLegacyTypecheckingSession(Flags flags) {
      super(flags);
    }

    @Nullable
    @Override
    public SNode getTypeOf(SNode expression) {
      if (expression == null) return null;
      return compute((tcc) -> tcc.getTypeOf_generationMode(expression));
    }

    @Nullable
    @Override
    public SNode getInferredType(SNode expression) {
      if (expression == null) return null;
      return compute((tcc) -> tcc.getTypeOf_generationMode(expression));
    }

  }

}
