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
package jetbrains.mps.persistence;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.extapi.persistence.ModelFactoryService;
import jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryRuleService;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.SModelId.ForeignSModelId;
import jetbrains.mps.smodel.SModelId.IntegerSModelId;
import jetbrains.mps.smodel.SModelId.RegularSModelId;
import jetbrains.mps.smodel.SModelId.RelativePathSModelId;
import jetbrains.mps.smodel.SNodeId.Foreign;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.StringBasedIdForJavaStubMethods;
import jetbrains.mps.smodel.adapter.structure.concept.SAbstractConceptAdapter;
import jetbrains.mps.smodel.adapter.structure.language.SLanguageAdapter;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.FindUsagesParticipant;
import org.jetbrains.mps.openapi.persistence.ModelFactory;
import org.jetbrains.mps.openapi.persistence.ModelFactoryType;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.persistence.ModelRootFactory;
import org.jetbrains.mps.openapi.persistence.NavigationParticipant;
import org.jetbrains.mps.openapi.persistence.SModelIdFactory;
import org.jetbrains.mps.openapi.persistence.SNodeIdFactory;
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType;
import org.jetbrains.mps.openapi.persistence.datasource.FileExtensionDataSourceType;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/**
 * evgeny, 10/23/12
 */
public class PersistenceRegistry extends org.jetbrains.mps.openapi.persistence.PersistenceFacade implements CoreComponent {
  private static final Logger LOG = LogManager.getLogger(PersistenceRegistry.class);

  public static final String DEFAULT_MODEL_ROOT = "default";
  public static final String JAVA_CLASSES_ROOT = "java_classes";
  public static final String JDK_CLASSES_ROOT = "jdk";

  private final ModelFactoryService myModelFactoryService;
  private final DataSourceFactoryRuleService myDataSourceRegistry;

  private final Map<String, ModelRootFactory> myRootFactories = new HashMap<>();
  private final Map<String, SModelIdFactory> myModelIdFactory = new HashMap<>();
  private final Map<String, SNodeIdFactory> myNodeIdFactory = new HashMap<>();
  private final Set<FindUsagesParticipant> myFindUsagesParticipants = Collections.synchronizedSet(new LinkedHashSet<>());
  private final Set<NavigationParticipant> myNavigationParticipants = new LinkedHashSet<>();

  private boolean isDisabled = false;

  public PersistenceRegistry(ModelFactoryService modelFactoryService, DataSourceFactoryRuleService dsRegistry) {
    myModelFactoryService = modelFactoryService;
    myDataSourceRegistry = dsRegistry;
  }

  /**
   * access the component using <code>ComponentHost#findComponent(PersitenceFacade.class)</code>
   */
  @Deprecated
  public static PersistenceRegistry getInstance() {
    return (PersistenceRegistry) INSTANCE;
  }

  @Override
  public ModelRootFactory getModelRootFactory(@NotNull String type) {
    if (type.length() == 0) {
      throw new IllegalArgumentException("Wrong type requested :" + type);
    }
    return myRootFactories.get(type);
  }

  @Override
  public void setModelRootFactory(@NotNull String type, @Nullable ModelRootFactory factory) {
    if (factory == null) {
      myRootFactories.remove(type);
    } else {
      myRootFactories.put(type, factory);
    }
  }

  @Deprecated
  @Override
  public ModelFactory getModelFactory(@Nullable String extension) {
    return myModelFactoryService.getDefaultModelFactory(FileExtensionDataSourceType.of(extension));
  }

  @Nullable
  @Override
  public ModelFactory getModelFactory(@NotNull ModelFactoryType type) {
    return myModelFactoryService.getFactoryByType(type);
  }

  @Nullable
  public final ModelFactory getModelFactory(@NotNull DataSourceType dataSourceType) {
    return myModelFactoryService.getDefaultModelFactory(dataSourceType);
  }

  @Deprecated
  @Override
  public ModelFactory getDefaultModelFactory() {
    // XXX as long as PersistenceFacade knows a out ModelFactoryService, don't see anything wrong with this method (just gives handy access to MPS defaults)
    return getModelFactory(PreinstalledModelFactoryTypes.PLAIN_XML);
  }

  @NotNull
  @Override
  public SModuleId createModuleId(@NotNull String text) {
    return ModuleId.fromString(text);
  }

  @NotNull
  @Override
  public String asString(@NotNull SModuleId moduleId) {
    return moduleId.toString();
  }

  @Override
  public String asString(@NotNull SModuleReference reference) {
    return reference.toString();
  }

  @Override
  public SModuleReference createModuleReference(@NotNull String text) {
    return ModuleReference.parseReference(text);
  }

  @Override
  public SModuleReference createModuleReference(@NotNull SModuleId moduleId, String moduleName) {
    return new ModuleReference(moduleName, moduleId);
  }

  @Override
  public SModelId createModelId(@NotNull String text) {
    int colon = text.indexOf(':');
    if (colon == -1) {
      throw new IllegalArgumentException(String.format("No model id factory designator (':') in %s", text));
    }
    final String factoryDesignator = text.substring(0, colon);
    SModelIdFactory factory = myModelIdFactory.get(factoryDesignator);
    if (factory == null) {
      throw new IllegalArgumentException(String.format("Unknown model id factory '%s' in %s", factoryDesignator, text));
    }
    return factory.create(text.substring(colon + 1));
  }

  @Override
  public String asString(@NotNull SModelId modelId) {
    // FIXME In fact, shall delegate to proper SModelIdFactory. toString here is just the first step in transition - once all code out there
    // stops using SModelId.toString() for persistence and switch to PersistenceFacade.asString, this implementation shall change and delegate to factory.
    return modelId.toString();
  }

  @NotNull
  @Override
  public SModelReference createModelReference(@NotNull String text) {
    return jetbrains.mps.smodel.SModelReference.parseReference(text);
  }

  @Override
  public String asString(@NotNull SModelReference modelRef) {
    // FIXME once there's no direct uses of SModelReference#toString in persistence code, this might change to produce another format
    return modelRef.toString();
  }

  @Override
  public SModelReference createModelReference(SModuleReference module, @NotNull SModelId modelId, @NotNull String modelName) {
    return new jetbrains.mps.smodel.SModelReference(module, modelId, modelName);
  }

  @Override
  public SModelReference createModelReference(SModuleReference module, @NotNull SModelId modelId, @NotNull SModelName modelName) {
    return new jetbrains.mps.smodel.SModelReference(module, modelId, modelName);
  }

  @Override
  public void setModelIdFactory(String type, SModelIdFactory factory) {
    if (factory == null) {
      myModelIdFactory.remove(type);
    } else {
      myModelIdFactory.put(type, factory);
    }
  }

  @Override
  @Nullable
  public SNodeId createNodeId(@NotNull String nodeIdString) {
    if (nodeIdString.isEmpty()) {
      return null;
    }

    final int colon = nodeIdString.indexOf(':');
    if (isPreinstalledNodeId(nodeIdString, colon == -1)) {
      // built-in id is supported without type+colon prefix
      return jetbrains.mps.smodel.SNodeId.fromString(nodeIdString);
    }

    // XXX shall we account for colon == 0 case?
    if (colon == -1) {
      throw new IncorrectNodeIdFormatException(String.format("The node id text '%s' does not contain the colon ':' separator", nodeIdString), null);
    }
    SNodeIdFactory factory = myNodeIdFactory.get(nodeIdString.substring(0, colon));
    if (factory == null) {
      return null;
    }
    return factory.create(nodeIdString.substring(colon + 1));
  }

  private boolean isPreinstalledNodeId(@NotNull String nodeIdString, boolean noColonMark) {
    char first = nodeIdString.charAt(0);
    return first <= '9' && first >= '0' && noColonMark
           || first == '-' && noColonMark
           || nodeIdString.startsWith(Foreign.ID_PREFIX)
           || nodeIdString.startsWith(StringBasedIdForJavaStubMethods.ID_PREFIX);
  }

  @NotNull
  @Override
  public String asString(@NotNull SNodeReference nodeRef) {
    return SNodePointer.serialize(nodeRef);
  }

  @Override
  public SNodeReference createNodeReference(@NotNull String text) {
    return SNodePointer.deserialize(text);
  }

  @Override
  public void setNodeIdFactory(String type, SNodeIdFactory factory) {
    if (factory == null) {
      myNodeIdFactory.remove(type);
    } else {
      myNodeIdFactory.put(type, factory);
    }
  }

  @Override
  public String asString(@NotNull SAbstractConcept concept) {
    return ((SAbstractConceptAdapter) concept).serialize();
  }

  @Override
  public SAbstractConcept createConcept(@NotNull String text) {
    return SAbstractConceptAdapter.deserialize(text);
  }

  @Override
  public String asString(@NotNull SLanguage language) {
    return ((SLanguageAdapter) language).serialize();
  }

  @Override
  public SLanguage createLanguage(@NotNull String text) {
    return SLanguageAdapter.deserialize(text);
  }

  @Override
  public Iterable<String> getTypeIds() {
    return Collections.unmodifiableCollection(myRootFactories.keySet());
  }

  @Override
  public void addFindUsagesParticipant(FindUsagesParticipant participant) {
    myFindUsagesParticipants.add(participant);
  }

  @Override
  public void removeFindUsagesParticipant(FindUsagesParticipant participant) {
    myFindUsagesParticipants.remove(participant);
  }

  @Override
  public Set<FindUsagesParticipant> getFindUsagesParticipants() {
    if (isDisabled) {
      return  Collections.emptySet();
    } else {
      LinkedHashSet<FindUsagesParticipant> copy = new LinkedHashSet<>();
      // forEach() ensures synchronized access! Don't want to synchronize explicitly
      // over iterator and imply mutex is the same as the collection (although this is what javadoc suggests)
      //noinspection UseBulkOperation
      myFindUsagesParticipants.forEach(copy::add);
      return copy;
    }
  }

  public boolean isFastSearch() {
    return !isDisabled;
  }

  @Override
  public void addNavigationParticipant(NavigationParticipant participant) {
    myNavigationParticipants.add(participant);
  }

  @Override
  public void removeNavigationParticipant(NavigationParticipant participant) {
    myNavigationParticipants.remove(participant);
  }

  @Override
  public Set<NavigationParticipant> getNavigationParticipants() {
    return myNavigationParticipants;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }
    INSTANCE = this;

    setModelRootFactory(DEFAULT_MODEL_ROOT, new DefaultModelRootFactory());
    setNodeIdFactory(jetbrains.mps.smodel.SNodeId.TYPE, jetbrains.mps.smodel.SNodeId::fromString);
    setModelIdFactory(RegularSModelId.TYPE, jetbrains.mps.smodel.SModelId::regular);
    setModelIdFactory(ForeignSModelId.TYPE, jetbrains.mps.smodel.SModelId::foreign);
    setModelIdFactory(RelativePathSModelId.TYPE, RelativePathSModelId::new);
    setModelIdFactory(IntegerSModelId.TYPE, IntegerSModelId::parse);
  }

  @Override
  public void dispose() {
    INSTANCE = null;
  }

  public void disableFastFindUsages() {
    isDisabled = true;
  }

  public void enableFastFindUsages() {
    isDisabled = false;
  }

  private class DefaultModelRootFactory implements ModelRootFactory {
    @NotNull
    @Override
    public ModelRoot create() {
      return new DefaultModelRoot(PersistenceRegistry.this.myModelFactoryService, PersistenceRegistry.this.myDataSourceRegistry);
    }
  }
}
