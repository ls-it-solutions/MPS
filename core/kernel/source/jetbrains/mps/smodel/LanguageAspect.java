/*
 * Copyright 2003-2023 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.language.LanguageAspectDescriptor;
import jetbrains.mps.smodel.language.LanguageAspectSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

// NOTE, although quite some of these enums are not in use in MPS, there are uses in mbeddr!
public enum LanguageAspect {
  //mostly migrated
  STRUCTURE("structure", BootstrapLanguages.structureLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "structure.html"),

  //mostly migrated
  EDITOR("editor", BootstrapLanguages.editorLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "editor.html  "),

  //mostly migrated
  ACTIONS("actions", BootstrapLanguages.actionsLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "editor-actions.html"),

  //mostly migrated
  CONSTRAINTS("constraints", BootstrapLanguages.constraintsLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "constraints.html") {
    @Override
    public Collection<SLanguage> getMainLanguages() {
      Collection<SLanguage> mainLanguages = new ArrayList<>();
      LanguageAspectDescriptor aspectDescriptor = LanguageAspectSupport.getAspectDescriptorById(getName());
      if (aspectDescriptor != null) {
        mainLanguages.addAll(aspectDescriptor.getMainLanguages());
      }
      SLanguage bootstrapLang = MetaAdapterFactory.getLanguage(getMainLanguage());
      return Stream.concat(mainLanguages.stream(), Stream.of(bootstrapLang))
                   .distinct()
                   .collect(Collectors.toList());
    }
  },

  //mostly migrated
  BEHAVIOR("behavior", BootstrapLanguages.behaviorLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "behavior.html"),

  //mostly migrated
  TYPESYSTEM("typesystem", BootstrapLanguages.typesystemLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "typesystem.html"),

  //mostly migrated
  REFACTORINGS("refactorings", BootstrapLanguages.refactoringLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "refactoring.html"),

  //mostly migrated
  SCRIPTS("scripts", BootstrapLanguages.scriptLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "scripts.html"),

  //mostly migrated
  INTENTIONS("intentions", BootstrapLanguages.intentionsLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "intentions.html"),

  //mostly migrated
  FIND_USAGES("findUsages", BootstrapLanguages.findUsagesLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "find-usages.html"),

  //migrated, uncomment when migration is finished [compatibility] and deprecate this class
  PLUGIN("plugin", null, LanguageAspect.HELP_CENTER_BASE + "plugin.html") {
    @Override
    public Collection<SLanguage> getMainLanguages() {
      ArrayList<SLanguage> result = new ArrayList<>();
      result.add(MetaAdapterFactory.getLanguage(BootstrapLanguages.pluginLanguageRef()));
      result.add(MetaAdapterFactory.getLanguage(BootstrapLanguages.aspectLanguageRef()));
      return result;
    }
  },

  //mostly migrated
  DATA_FLOW("dataFlow", BootstrapLanguages.dataFlowLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "data-flow.html"),

  //mostly migrated
  TEST("test", BootstrapLanguages.testLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "testing-languages.html"),

  //mostly migrated
  TEXT_GEN("textGen", BootstrapLanguages.textGenLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "textGen.html"),

  //mostly migrated
  MIGRATION("migration", BootstrapLanguages.migrationLanguageRef(), LanguageAspect.HELP_CENTER_BASE + "migrations.html");

  //TODO must be changed for each major/minor version release
  public static final String HELP_CENTER_BASE = "https://www.jetbrains.com/help/mps/2024.1/";

  private String myName;
  private final SModuleReference myMainLang;
  private final String myHelpURL;

  LanguageAspect(String name, SModuleReference mainLang, String helpURL) {
    myName = name;
    myMainLang = mainLang;
    myHelpURL = helpURL;
  }

  /**
   * INTERNAL USE ONLY.
   * Builds a class name of an aspect class according to hardcoded MPS convention.
   */
  public String getAspectQualifiedClassName(@NotNull SAbstractConcept concept) {
    return concept.getLanguage().getQualifiedName() + '.' + getName() + '.' + concept.getName();
  }

  public boolean is(@NotNull SModel sm) {
    SModule module = sm.getModule();
    if (!(module instanceof Language)) return false;
    return get(((Language) module)) == sm;
  }

  @Nullable
  public SModel get(Language l) {
    return get_internal(l, false);
  }

  public SModel getOrCreate(Language l) {
    return get_internal(l, true);
  }

  private SModel get_internal(Language l, boolean doCreate) {
    final String aspectModelName = l.getModuleName() + "." + myName;
    for (SModel md : l.getModels()) {
      if (aspectModelName.equals(md.getModelName())) {
        return md;
      }
    }
    return doCreate ? createNew(l) : null;
  }

  public String getName() {
    return myName;
  }

  public SModel createNew(Language l) {
    return createNew(l, true);
  }

  public SModel createNew(final Language l, final boolean saveModel) {
    assert get(l) == null;

    SModel structureModel = l.getStructureModelDescriptor();
    ModelRoot modelRoot;
    if (structureModel == null) {
      modelRoot = l.getModelRoots().iterator().next();
    } else {
      modelRoot = structureModel.getModelRoot();
    }
    // I don't care there's no ModelsAutoImportManager, this is deprecated way to instantiate aspect models anyway
    return modelRoot.createModel(new SModelName(l.getModuleName(), getName(), null));
  }

  @Nullable
  public String getHelpURL() {
    return myHelpURL;
  }

  // FIXME tell it as SLanguage
  // refactor to have constants as fields, not as methods
  @Deprecated
  public SModuleReference getMainLanguage() {
    return myMainLang;
  }

  public Collection<SLanguage> getMainLanguages() {
    ArrayList<SLanguage> res = new ArrayList<>();
    res.add(MetaAdapterFactory.getLanguage(getMainLanguage()));
    return res;
  }

@Deprecated(since = "3.3", forRemoval = true)
  //not used in MPS
  //use jetbrains.mps.smodel.language.LanguageAspectSupport.getAspectModels()
  public static Collection<SModel> getAspectModels(Language l) {
    Set<SModel> result = new HashSet<>();
    for (LanguageAspect aspect : LanguageAspect.values()) {
      SModel asp = aspect.get(l);
      if (asp != null) {
        result.add(asp);
      }
    }
    return result;
  }
}
