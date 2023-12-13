<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e2c8c94a-404b-4b97-a3a4-c76946bd1913(jetbrains.mps.ide.modelchecker.actions)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
  </languages>
  <imports>
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="5ijk" ref="r:f77c2bf1-6f5c-4cb2-b314-a84dd502542e(jetbrains.mps.resolve)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="kxvg" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree.module(MPS.Platform/)" />
    <import index="phxh" ref="r:5754bb7d-f802-4a0f-bd3d-0764f0d71413(jetbrains.mps.ide.modelchecker.platform.actions)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="6sb4" ref="r:c11a4a93-6ff1-406e-b7f8-f5bafc5a1697(jetbrains.mps.lang.refactoring.plugin)" />
    <import index="8okf" ref="r:dbde341a-c09d-4dfc-8b0a-5ed08f460369(jetbrains.mps.lang.intentions.plugin)" />
    <import index="beg" ref="r:09811e4e-aa47-4ea2-ad3d-57b7b9ffc7e3(jetbrains.mps.lang.constraints.plugin)" />
    <import index="n1pe" ref="r:db7af0ad-3d1a-4f64-a9bf-f3dc73570877(jetbrains.mps.lang.script.plugin)" />
    <import index="9anm" ref="r:6f374023-1b4e-4a80-8bf6-2cc3148faa52(jetbrains.mps.lang.editor.plugin)" />
    <import index="h8lr" ref="r:60e7ad77-a9db-453a-a2df-fed6c145c654(jetbrains.mps.lang.textGen.plugin)" />
    <import index="bgxn" ref="r:01d327ba-040c-402c-a2b6-8832116588df(jetbrains.mps.lang.plugin.plugin)" />
    <import index="hgrf" ref="r:01b252f4-57dd-45b0-b193-1c0cf81e6653(jetbrains.mps.lang.dataFlow.plugin)" />
    <import index="mg3u" ref="r:0799ed23-f21a-4dba-ac61-5b80d66bec13(jetbrains.mps.lang.behavior.plugin)" />
    <import index="rliy" ref="r:00a69138-8767-4011-a710-463511eae7a6(jetbrains.mps.lang.test.plugin)" />
    <import index="f7uj" ref="r:8ffb9fde-829b-4ee3-ade6-f4eee43e66a8(jetbrains.mps.lang.typesystem.plugin)" />
    <import index="tpcc" ref="r:00000000-0000-4000-0000-011c89590290(jetbrains.mps.lang.structure.plugin)" />
    <import index="che4" ref="r:e5186c75-12ba-46bf-934f-f0e026ef8c26(jetbrains.mps.lang.migration.plugin)" />
    <import index="xg48" ref="r:7be9d1d9-acb4-4fe3-8096-96178feee8f5(jetbrains.mps.lang.findUsages.plugin)" />
    <import index="sla8" ref="r:e9b03271-b52a-47ee-a82c-3d061109bb59(jetbrains.mps.lang.actions.plugin)" />
    <import index="6if8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.validation(MPS.Core/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <child id="6976585500156684809" name="iconExpression" index="3xaMm5" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5023285075122009364" name="jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor" flags="ng" index="9BnSX">
        <property id="5023285075122009369" name="version" index="9BnSK" />
        <property id="5023285075122009368" name="descripttion" index="9BnSL" />
        <property id="5023285075122009371" name="vendor" index="9BnSM" />
        <property id="5023285075122009373" name="ideaVersion" index="9BnSO" />
        <property id="5023285075122009372" name="vendorUrl" index="9BnSP" />
        <property id="5023285075122009366" name="id" index="9BnSZ" />
        <property id="1573568368168371217" name="handleErrors" index="3FCvg6" />
      </concept>
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="394857668357342104" name="jetbrains.mps.lang.plugin.structure.EverywhereActionPlace" flags="ng" index="mfpdH" />
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="394857668356997869" name="places" index="med8o" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1205160838084" name="isInternal" index="2pbKbs" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="2030416617761226491" name="jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation" flags="nn" index="3zA4fs">
        <reference id="2030416617761226680" name="aspect" index="3zA4av" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="8866923313515890008" name="jetbrains.mps.lang.smodel.structure.AsNodeOperation" flags="nn" index="FGMqu" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="8329979535468945057" name="jetbrains.mps.lang.smodel.structure.Node_PresentationOperation" flags="ng" index="2Iv5rx" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="1205861725686" name="jetbrains.mps.lang.smodel.structure.Node_IsAttributeOperation" flags="nn" index="32XrjI" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="6407023681583036855" name="jetbrains.mps.lang.smodel.structure.LinkAttributeQualifier" flags="ng" index="3CFYIw">
        <reference id="6407023681583036856" name="attributeConcept" index="3CFYIJ" />
        <child id="6407023681583038098" name="linkQualifier" index="3CFYM5" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="9BnSX" id="1gEYwydCqV0">
    <property role="9BnSZ" value="jetbrains.mps.ide.modelchecker" />
    <property role="3FCvg6" value="true" />
    <property role="9BnSP" value="http://www.jetbrains.com/mps/" />
    <property role="9BnSL" value="Audit tool for MPS models" />
    <property role="9BnSM" value="JetBrains" />
    <property role="TrG5h" value="Model Checker" />
    <property role="9BnSO" value="232.1" />
    <property role="9BnSK" value="2024.1" />
  </node>
  <node concept="tC5Ba" id="1gEYwydCrTu">
    <property role="TrG5h" value="CheckProject" />
    <property role="3GE5qa" value="Model Checker.Groups" />
    <node concept="ftmFs" id="1gEYwydCrTv" role="ftER_">
      <node concept="tCFHf" id="1gEYwydCrTw" role="ftvYc">
        <ref role="tCJdB" node="1gEYwydCrUS" resolve="CheckProject" />
      </node>
    </node>
    <node concept="tT9cl" id="1gEYwydCrTx" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4HGL" resolve="ProjectActions" />
      <ref role="2f8Tey" to="tprs:1gEYwydCqUT" resolve="check" />
    </node>
  </node>
  <node concept="tC5Ba" id="1gEYwydCrTy">
    <property role="TrG5h" value="CheckModule" />
    <property role="3GE5qa" value="Model Checker.Groups" />
    <node concept="ftmFs" id="1gEYwydCrTz" role="ftER_">
      <node concept="tCFHf" id="1gEYwydCrT$" role="ftvYc">
        <ref role="tCJdB" node="1gEYwydCrVc" resolve="CheckModule" />
      </node>
    </node>
    <node concept="tT9cl" id="1gEYwydCrTA" role="2f5YQi">
      <ref role="tU$_T" to="tprs:miYJQAr2Uj" resolve="CommonModuleActions" />
      <ref role="2f8Tey" to="tprs:miYJQAr2Uo" resolve="check" />
    </node>
    <node concept="tT9cl" id="1Yktpp4om38" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4J_e" resolve="DevkitActions" />
      <ref role="2f8Tey" to="tprs:1Yktpp4om2p" resolve="check" />
    </node>
  </node>
  <node concept="tC5Ba" id="1gEYwydCrTL">
    <property role="TrG5h" value="CheckModel" />
    <property role="3GE5qa" value="Model Checker.Groups" />
    <node concept="ftmFs" id="1gEYwydCrTM" role="ftER_">
      <node concept="tCFHf" id="1gEYwydCrTN" role="ftvYc">
        <ref role="tCJdB" node="1gEYwydCrWO" resolve="CheckModel" />
      </node>
    </node>
    <node concept="tT9cl" id="1gEYwydCrTO" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:1gEYwydCqUZ" resolve="check" />
    </node>
  </node>
  <node concept="sE7Ow" id="1gEYwydCrUS">
    <property role="1WHSii" value="Check project for unresolved references and typesystem rules" />
    <property role="TrG5h" value="CheckProject" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Model Checker.Actions" />
    <property role="2uzpH1" value="Check Project" />
    <property role="1rBW0U" value="true" />
    <node concept="1QGGSu" id="6hehsrpcaUE" role="3Uehp1">
      <node concept="10M0yZ" id="6hehsrpcaUF" role="3xaMm5">
        <ref role="3cqZAo" to="l7us:~MPSIcons$General.ModelChecker" resolve="ModelChecker" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$General" resolve="MPSIcons.General" />
      </node>
    </node>
    <node concept="1DS2jV" id="1gEYwydCrUT" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDpa" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1gEYwydCrUV" role="tncku">
      <node concept="3clFbS" id="1gEYwydCrUW" role="2VODD2">
        <node concept="3clFbF" id="bYTFyV6Dpj" role="3cqZAp">
          <node concept="2OqwBi" id="bYTFyV6DH9" role="3clFbG">
            <node concept="2YIFZM" id="bYTFyV6Dpl" role="2Oq$k0">
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <node concept="2OqwBi" id="bYTFyV6Dpm" role="37wK5m">
                <node concept="2WthIp" id="bYTFyV6Dpn" role="2Oq$k0" />
                <node concept="1DTwFV" id="bYTFyV6Dpo" role="2OqNvi">
                  <ref role="2WH_rO" node="1gEYwydCrUT" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="bYTFyV6Hbe" role="2OqNvi">
              <ref role="37wK5l" to="phxh:3etVqSRK$eL" resolve="checkProjectAndShowResults" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="mfpdH" id="6Kx1j_xn79k" role="med8o" />
  </node>
  <node concept="sE7Ow" id="1gEYwydCrVc">
    <property role="1WHSii" value="Check [module] for structure and typesystem rules" />
    <property role="TrG5h" value="CheckModule" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Model Checker.Actions" />
    <property role="2uzpH1" value="Check [Module]" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="3pNk_u$34RM" role="32lrUH">
      <property role="TrG5h" value="modules2check" />
      <node concept="3uibUv" id="3pNk_u$37Mg" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3pNk_u$38q2" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="3pNk_u$34RO" role="3clF47">
        <node concept="3cpWs8" id="3pNk_u$35Zo" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$35Zp" role="3cpWs9">
            <property role="TrG5h" value="modulesToCheck" />
            <node concept="2ShNRf" id="3pNk_u$35Zq" role="33vP2m">
              <node concept="1pGfFk" id="3pNk_u$35Zr" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="3pNk_u$35Zs" role="1pMfVU">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3pNk_u$35Zt" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3pNk_u$35Zu" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pNk_u$35Zv" role="3cqZAp">
          <node concept="3y3z36" id="3pNk_u$35Zw" role="3clFbw">
            <node concept="10Nm6u" id="3pNk_u$35Zx" role="3uHU7w" />
            <node concept="2OqwBi" id="3pNk_u$35Zy" role="3uHU7B">
              <node concept="2WthIp" id="3pNk_u$35Zz" role="2Oq$k0" />
              <node concept="1DTwFV" id="3pNk_u$35Z$" role="2OqNvi">
                <ref role="2WH_rO" node="1gEYwydCrVl" resolve="modules" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3pNk_u$35Z_" role="3clFbx">
            <node concept="3clFbF" id="3pNk_u$35ZA" role="3cqZAp">
              <node concept="2OqwBi" id="3pNk_u$35ZB" role="3clFbG">
                <node concept="liA8E" id="3pNk_u$35ZC" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                  <node concept="2OqwBi" id="3pNk_u$35ZD" role="37wK5m">
                    <node concept="2WthIp" id="3pNk_u$35ZE" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3pNk_u$35ZF" role="2OqNvi">
                      <ref role="2WH_rO" node="1gEYwydCrVl" resolve="modules" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3pNk_u$35ZG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3pNk_u$35Zp" resolve="modulesToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pNk_u$35ZH" role="3cqZAp">
          <node concept="1Wc70l" id="3pNk_u$35ZI" role="3clFbw">
            <node concept="3fqX7Q" id="3pNk_u$35ZJ" role="3uHU7w">
              <node concept="2OqwBi" id="3pNk_u$35ZK" role="3fr31v">
                <node concept="liA8E" id="3pNk_u$35ZL" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                  <node concept="2OqwBi" id="3pNk_u$35ZM" role="37wK5m">
                    <node concept="1DTwFV" id="3pNk_u$35ZN" role="2OqNvi">
                      <ref role="2WH_rO" node="1gEYwydCrVk" resolve="module" />
                    </node>
                    <node concept="2WthIp" id="3pNk_u$35ZO" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="37vLTw" id="3pNk_u$35ZP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3pNk_u$35Zp" resolve="modulesToCheck" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3pNk_u$35ZQ" role="3uHU7B">
              <node concept="2OqwBi" id="3pNk_u$35ZR" role="3uHU7B">
                <node concept="2WthIp" id="3pNk_u$35ZS" role="2Oq$k0" />
                <node concept="1DTwFV" id="3pNk_u$35ZT" role="2OqNvi">
                  <ref role="2WH_rO" node="1gEYwydCrVk" resolve="module" />
                </node>
              </node>
              <node concept="10Nm6u" id="3pNk_u$35ZU" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="3pNk_u$35ZV" role="3clFbx">
            <node concept="3clFbF" id="3pNk_u$35ZW" role="3cqZAp">
              <node concept="2OqwBi" id="3pNk_u$35ZX" role="3clFbG">
                <node concept="liA8E" id="3pNk_u$35ZY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="3pNk_u$35ZZ" role="37wK5m">
                    <node concept="2WthIp" id="3pNk_u$3600" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3pNk_u$3601" role="2OqNvi">
                      <ref role="2WH_rO" node="1gEYwydCrVk" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3pNk_u$3602" role="2Oq$k0">
                  <ref role="3cqZAo" node="3pNk_u$35Zp" resolve="modulesToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3pNk_u$36Ib" role="3cqZAp">
          <node concept="37vLTw" id="3pNk_u$376V" role="3cqZAk">
            <ref role="3cqZAo" node="3pNk_u$35Zp" resolve="modulesToCheck" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8LSyqd" role="1B3o_S" />
    </node>
    <node concept="1QGGSu" id="6hehsrpc7wC" role="3Uehp1">
      <node concept="10M0yZ" id="6hehsrpc7wD" role="3xaMm5">
        <ref role="3cqZAo" to="l7us:~MPSIcons$General.ModelChecker" resolve="ModelChecker" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$General" resolve="MPSIcons.General" />
      </node>
    </node>
    <node concept="1DS2jV" id="1gEYwydCrVk" role="1NuT2Z">
      <property role="TrG5h" value="module" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODULE" resolve="CONTEXT_MODULE" />
    </node>
    <node concept="1DS2jV" id="1gEYwydCrVl" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
    </node>
    <node concept="1DS2jV" id="1gEYwydCrVm" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDnm" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1gEYwydCrVo" role="tncku">
      <node concept="3clFbS" id="1gEYwydCrVp" role="2VODD2">
        <node concept="3cpWs8" id="6cU3xRwtanC" role="3cqZAp">
          <node concept="3cpWsn" id="6cU3xRwtanD" role="3cpWs9">
            <property role="TrG5h" value="modulesToCheck" />
            <node concept="2OqwBi" id="3pNk_u$39ES" role="33vP2m">
              <node concept="2WthIp" id="3pNk_u$39EV" role="2Oq$k0" />
              <node concept="2XshWL" id="3pNk_u$39EX" role="2OqNvi">
                <ref role="2WH_rO" node="3pNk_u$34RM" resolve="modules2check" />
              </node>
            </node>
            <node concept="3uibUv" id="6cU3xRwtanH" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6cU3xRwtanI" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6cU3xRwt82N" role="3cqZAp" />
        <node concept="3clFbJ" id="6cU3xRwte6v" role="3cqZAp">
          <node concept="2OqwBi" id="6cU3xRwthrz" role="3clFbw">
            <node concept="liA8E" id="6cU3xRwtqnF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
            <node concept="37vLTw" id="6cU3xRwtfr4" role="2Oq$k0">
              <ref role="3cqZAo" node="6cU3xRwtanD" resolve="modulesToCheck" />
            </node>
          </node>
          <node concept="3clFbS" id="6cU3xRwte6x" role="3clFbx">
            <node concept="3cpWs6" id="6cU3xRwtrGN" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="6cU3xRwt9bU" role="3cqZAp" />
        <node concept="3clFbF" id="3pNk_u$2V1K" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$2VZ0" role="3clFbG">
            <node concept="2YIFZM" id="3pNk_u$2V1M" role="2Oq$k0">
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <node concept="2OqwBi" id="3pNk_u$2V1N" role="37wK5m">
                <node concept="2WthIp" id="3pNk_u$2V1O" role="2Oq$k0" />
                <node concept="1DTwFV" id="3pNk_u$2V1P" role="2OqNvi">
                  <ref role="2WH_rO" node="1gEYwydCrVm" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3pNk_u$2XKP" role="2OqNvi">
              <ref role="37wK5l" to="phxh:4aNWY1v2hQb" resolve="checkModulesAndShowResult" />
              <node concept="37vLTw" id="3pNk_u$33mI" role="37wK5m">
                <ref role="3cqZAo" node="6cU3xRwtanD" resolve="modulesToCheck" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="1gEYwydCrW3" role="tmbBb">
      <node concept="3clFbS" id="1gEYwydCrW4" role="2VODD2">
        <node concept="3cpWs8" id="3pNk_u$3asg" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$3ash" role="3cpWs9">
            <property role="TrG5h" value="modulesToCheck" />
            <node concept="2OqwBi" id="3pNk_u$3asi" role="33vP2m">
              <node concept="2WthIp" id="3pNk_u$3asj" role="2Oq$k0" />
              <node concept="2XshWL" id="3pNk_u$3ask" role="2OqNvi">
                <ref role="2WH_rO" node="3pNk_u$34RM" resolve="modules2check" />
              </node>
            </node>
            <node concept="3uibUv" id="3pNk_u$3asl" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3pNk_u$3asm" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6cU3xRwps4u" role="3cqZAp" />
        <node concept="3cpWs8" id="1gEYwydCrW5" role="3cqZAp">
          <node concept="3cpWsn" id="1gEYwydCrW6" role="3cpWs9">
            <property role="TrG5h" value="whatToCheck" />
            <node concept="Xl_RD" id="6cU3xRwrAvn" role="33vP2m">
              <property role="Xl_RC" value="Module" />
            </node>
            <node concept="17QB3L" id="1gEYwydCrW7" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="6cU3xRwrGR2" role="3cqZAp" />
        <node concept="3clFbJ" id="6cU3xRwrJ_R" role="3cqZAp">
          <node concept="3clFbC" id="6cU3xRwrXFQ" role="3clFbw">
            <node concept="3cmrfG" id="6cU3xRwrYQR" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="6cU3xRwrMDs" role="3uHU7B">
              <node concept="liA8E" id="6cU3xRwrVr4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
              <node concept="37vLTw" id="6cU3xRwrKMT" role="2Oq$k0">
                <ref role="3cqZAo" node="3pNk_u$3ash" resolve="modulesToCheck" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6cU3xRwrJ_T" role="3clFbx">
            <node concept="3clFbF" id="6cU3xRwryNw" role="3cqZAp">
              <node concept="37vLTI" id="6cU3xRwr$qR" role="3clFbG">
                <node concept="2OqwBi" id="6cU3xRwsyOA" role="37vLTx">
                  <node concept="liA8E" id="6cU3xRwsDdv" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                  </node>
                  <node concept="2OqwBi" id="6cU3xRwstNf" role="2Oq$k0">
                    <node concept="liA8E" id="6cU3xRwswYL" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                    <node concept="2OqwBi" id="6cU3xRws6BT" role="2Oq$k0">
                      <node concept="liA8E" id="6cU3xRwsfoA" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="6cU3xRwspXt" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6cU3xRws4P0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3pNk_u$3ash" resolve="modulesToCheck" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6cU3xRwryNv" role="37vLTJ">
                  <ref role="3cqZAo" node="1gEYwydCrW6" resolve="whatToCheck" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6cU3xRwsIbB" role="3eNLev">
            <node concept="3clFbS" id="6cU3xRwsIbD" role="3eOfB_">
              <node concept="3clFbF" id="1gEYwydCrWd" role="3cqZAp">
                <node concept="37vLTI" id="1gEYwydCrWe" role="3clFbG">
                  <node concept="3cpWs3" id="1gEYwydCrWf" role="37vLTx">
                    <node concept="Xl_RD" id="1gEYwydCrWg" role="3uHU7w">
                      <property role="Xl_RC" value=" Modules" />
                    </node>
                    <node concept="2OqwBi" id="1gEYwydCrWh" role="3uHU7B">
                      <node concept="liA8E" id="1gEYwydCrWl" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                      <node concept="37vLTw" id="6cU3xRwtSgd" role="2Oq$k0">
                        <ref role="3cqZAo" node="3pNk_u$3ash" resolve="modulesToCheck" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTAWm" role="37vLTJ">
                    <ref role="3cqZAo" node="1gEYwydCrW6" resolve="whatToCheck" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="6cU3xRwsL1u" role="3eO9$A">
              <node concept="2OqwBi" id="6cU3xRwsL1v" role="3uHU7B">
                <node concept="liA8E" id="6cU3xRwsL1z" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
                <node concept="37vLTw" id="6cU3xRwtPSq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3pNk_u$3ash" resolve="modulesToCheck" />
                </node>
              </node>
              <node concept="3cmrfG" id="6cU3xRwsL1$" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6cU3xRwrsww" role="3cqZAp" />
        <node concept="3clFbF" id="1gEYwydCrWu" role="3cqZAp">
          <node concept="2OqwBi" id="1gEYwydCrWv" role="3clFbG">
            <node concept="2OqwBi" id="1gEYwydCrWw" role="2Oq$k0">
              <node concept="tl45R" id="1gEYwydCrWx" role="2Oq$k0" />
              <node concept="liA8E" id="1gEYwydCrWy" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1gEYwydCrWz" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="1gEYwydCrW$" role="37wK5m">
                <node concept="Xl_RD" id="1gEYwydCrW_" role="3uHU7B">
                  <property role="Xl_RC" value="Check " />
                </node>
                <node concept="37vLTw" id="3GM_nagTvj5" role="3uHU7w">
                  <ref role="3cqZAo" node="1gEYwydCrW6" resolve="whatToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gEYwydCrWB" role="3cqZAp">
          <node concept="2OqwBi" id="1gEYwydCrWC" role="3clFbG">
            <node concept="2OqwBi" id="1gEYwydCrWD" role="2Oq$k0">
              <node concept="tl45R" id="1gEYwydCrWE" role="2Oq$k0" />
              <node concept="liA8E" id="1gEYwydCrWF" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1gEYwydCrWG" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setDescription(java.lang.String)" resolve="setDescription" />
              <node concept="3cpWs3" id="1gEYwydCrWH" role="37wK5m">
                <node concept="Xl_RD" id="1gEYwydCrWI" role="3uHU7w">
                  <property role="Xl_RC" value=" for structure and typesystem rules" />
                </node>
                <node concept="3cpWs3" id="1gEYwydCrWJ" role="3uHU7B">
                  <node concept="Xl_RD" id="1gEYwydCrWK" role="3uHU7B">
                    <property role="Xl_RC" value="Check " />
                  </node>
                  <node concept="2OqwBi" id="1gEYwydCrWL" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTzCm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gEYwydCrW6" resolve="whatToCheck" />
                    </node>
                    <node concept="liA8E" id="1gEYwydCrWN" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kx1j_xBHtx" role="3cqZAp">
          <node concept="2OqwBi" id="6Kx1j_xBNQW" role="3clFbG">
            <node concept="liA8E" id="6Kx1j_xBQ1p" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3fqX7Q" id="6cU3xRwt2ws" role="37wK5m">
                <node concept="2OqwBi" id="6cU3xRwt2wu" role="3fr31v">
                  <node concept="liA8E" id="6cU3xRwt2wv" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                  <node concept="37vLTw" id="6cU3xRwt2ww" role="2Oq$k0">
                    <ref role="3cqZAo" node="3pNk_u$3ash" resolve="modulesToCheck" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6Kx1j_xBIEN" role="2Oq$k0">
              <node concept="tl45R" id="6Kx1j_xBHtv" role="2Oq$k0" />
              <node concept="liA8E" id="6Kx1j_xBNJJ" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Kx1j_xBD49" role="3cqZAp" />
      </node>
    </node>
    <node concept="mfpdH" id="6cU3xRwuhkq" role="med8o" />
  </node>
  <node concept="sE7Ow" id="1gEYwydCrWO">
    <property role="1WHSii" value="Check model for unresolved references and typesystem rules" />
    <property role="TrG5h" value="CheckModel" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="Model Checker.Actions" />
    <property role="2uzpH1" value="Check Model" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1QGGSu" id="6hehsrpbFSo" role="3Uehp1">
      <node concept="10M0yZ" id="6hehsrpc1Ei" role="3xaMm5">
        <ref role="1PxDUh" to="l7us:~MPSIcons$General" resolve="MPSIcons.General" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$General.ModelChecker" resolve="ModelChecker" />
      </node>
    </node>
    <node concept="1DS2jV" id="1gEYwydCrWP" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.CONTEXT_MODEL" resolve="CONTEXT_MODEL" />
    </node>
    <node concept="1DS2jV" id="1gEYwydCrWQ" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="1DS2jV" id="1gEYwydCrWR" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDhm" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5yRJc8nTEW_" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5yRJc8nTEWA" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1gEYwydCrWT" role="tncku">
      <node concept="3clFbS" id="1gEYwydCrWU" role="2VODD2">
        <node concept="3SKdUt" id="4UMfujakViJ" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojT5" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojT6" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojT7" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojT8" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojT9" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojTa" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4UMfujakV6P" role="3cqZAp">
          <node concept="3cpWsn" id="4UMfujakV6Q" role="3cpWs9">
            <property role="TrG5h" value="modelsToCheck" />
            <node concept="3uibUv" id="4UMfujakV6R" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2eVlusX2qf0" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5yRJc8nTYZ0" role="33vP2m">
              <node concept="2ShNRf" id="5yRJc8nTXAt" role="2Oq$k0">
                <node concept="1pGfFk" id="5yRJc8nTYPE" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="5yRJc8nTO$g" role="37wK5m">
                    <node concept="2OqwBi" id="5yRJc8nTMQX" role="2Oq$k0">
                      <node concept="2WthIp" id="5yRJc8nTMR0" role="2Oq$k0" />
                      <node concept="1DTwFV" id="5yRJc8nTNVq" role="2OqNvi">
                        <ref role="2WH_rO" node="5yRJc8nTEW_" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5yRJc8nTPLH" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5yRJc8nTZfq" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="5yRJc8nU2WI" role="37wK5m">
                  <node concept="3clFbS" id="5yRJc8nU2WJ" role="1bW5cS">
                    <node concept="3cpWs8" id="5yRJc8nUkvB" role="3cqZAp">
                      <node concept="3cpWsn" id="5yRJc8nUkvC" role="3cpWs9">
                        <property role="TrG5h" value="rv" />
                        <node concept="3uibUv" id="5yRJc8nUkvu" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~List" resolve="List" />
                          <node concept="3uibUv" id="5yRJc8nUkvx" role="11_B2D">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5yRJc8nUkvD" role="33vP2m">
                          <node concept="2WthIp" id="5yRJc8nUkvE" role="2Oq$k0" />
                          <node concept="2XshWL" id="5yRJc8nUkvF" role="2OqNvi">
                            <ref role="2WH_rO" node="5yRJc8nTmUd" resolve="selectedModels" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5yRJc8nUk7O" role="3cqZAp">
                      <node concept="2OqwBi" id="5yRJc8nTZzg" role="3clFbG">
                        <node concept="2WthIp" id="5yRJc8nTZzj" role="2Oq$k0" />
                        <node concept="2XshWL" id="5yRJc8nU06C" role="2OqNvi">
                          <ref role="2WH_rO" node="5yRJc8nTFVR" resolve="completeWithNested" />
                          <node concept="37vLTw" id="5yRJc8nUkvG" role="2XxRq1">
                            <ref role="3cqZAo" node="5yRJc8nUkvC" resolve="rv" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5yRJc8nUlEy" role="3cqZAp">
                      <node concept="37vLTw" id="5yRJc8nUm07" role="3cqZAk">
                        <ref role="3cqZAo" node="5yRJc8nUkvC" resolve="rv" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6hwTCM8EtnV" role="3cqZAp">
          <node concept="2OqwBi" id="6hwTCM8Ev7I" role="3clFbw">
            <node concept="37vLTw" id="6hwTCM8EtSJ" role="2Oq$k0">
              <ref role="3cqZAo" node="4UMfujakV6Q" resolve="modelsToCheck" />
            </node>
            <node concept="liA8E" id="6hwTCM8EFyL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="6hwTCM8EtnX" role="3clFbx">
            <node concept="3cpWs6" id="6hwTCM8EG94" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="5yRJc8nTMyY" role="3cqZAp" />
        <node concept="3clFbF" id="3pNk_u$bUOb" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$bVPN" role="3clFbG">
            <node concept="2YIFZM" id="3pNk_u$bUOd" role="2Oq$k0">
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <node concept="2OqwBi" id="3pNk_u$bUOe" role="37wK5m">
                <node concept="2WthIp" id="3pNk_u$bUOf" role="2Oq$k0" />
                <node concept="1DTwFV" id="3pNk_u$bUOg" role="2OqNvi">
                  <ref role="2WH_rO" node="1gEYwydCrWR" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3pNk_u$bXJS" role="2OqNvi">
              <ref role="37wK5l" to="phxh:3pNk_u$9zR0" resolve="checkModelsAndShowResult" />
              <node concept="37vLTw" id="3pNk_u$bXNv" role="37wK5m">
                <ref role="3cqZAo" node="4UMfujakV6Q" resolve="modelsToCheck" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="1gEYwydCrX$" role="tmbBb">
      <node concept="3clFbS" id="1gEYwydCrX_" role="2VODD2">
        <node concept="3cpWs8" id="6hwTCM8KriB" role="3cqZAp">
          <node concept="3cpWsn" id="6hwTCM8KriC" role="3cpWs9">
            <property role="TrG5h" value="modelsToCheck" />
            <node concept="3uibUv" id="6hwTCM8KriD" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6hwTCM8KriE" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5yRJc8nTuDY" role="33vP2m">
              <node concept="2WthIp" id="5yRJc8nTuE1" role="2Oq$k0" />
              <node concept="2XshWL" id="5yRJc8nTvEF" role="2OqNvi">
                <ref role="2WH_rO" node="5yRJc8nTmUd" resolve="selectedModels" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6hwTCM8KzWY" role="3cqZAp" />
        <node concept="3cpWs8" id="1gEYwydCrXA" role="3cqZAp">
          <node concept="3cpWsn" id="1gEYwydCrXB" role="3cpWs9">
            <property role="TrG5h" value="whatToCheck" />
            <node concept="17QB3L" id="1gEYwydCrXC" role="1tU5fm" />
            <node concept="Xl_RD" id="1gEYwydCrXD" role="33vP2m">
              <property role="Xl_RC" value="Model" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1gEYwydCrXE" role="3cqZAp">
          <node concept="3clFbS" id="1gEYwydCrXF" role="3clFbx">
            <node concept="3clFbF" id="1gEYwydCrXG" role="3cqZAp">
              <node concept="37vLTI" id="1gEYwydCrXH" role="3clFbG">
                <node concept="3cpWs3" id="1gEYwydCrXI" role="37vLTx">
                  <node concept="Xl_RD" id="1gEYwydCrXJ" role="3uHU7w">
                    <property role="Xl_RC" value=" Models" />
                  </node>
                  <node concept="2OqwBi" id="1gEYwydCrXK" role="3uHU7B">
                    <node concept="liA8E" id="1gEYwydCrXO" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                    <node concept="37vLTw" id="6hwTCM8KSor" role="2Oq$k0">
                      <ref role="3cqZAo" node="6hwTCM8KriC" resolve="modelsToCheck" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagT_ZS" role="37vLTJ">
                  <ref role="3cqZAo" node="1gEYwydCrXB" resolve="whatToCheck" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="1gEYwydCrXQ" role="3clFbw">
            <node concept="2OqwBi" id="1gEYwydCrXR" role="3uHU7B">
              <node concept="37vLTw" id="6hwTCM8KK7d" role="2Oq$k0">
                <ref role="3cqZAo" node="6hwTCM8KriC" resolve="modelsToCheck" />
              </node>
              <node concept="liA8E" id="1gEYwydCrXV" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="3cmrfG" id="1gEYwydCrXW" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6hwTCM8JXF7" role="3cqZAp" />
        <node concept="3clFbF" id="1gEYwydCrXX" role="3cqZAp">
          <node concept="2OqwBi" id="1gEYwydCrXY" role="3clFbG">
            <node concept="2OqwBi" id="1gEYwydCrXZ" role="2Oq$k0">
              <node concept="tl45R" id="1gEYwydCrY0" role="2Oq$k0" />
              <node concept="liA8E" id="1gEYwydCrY1" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1gEYwydCrY2" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="1gEYwydCrY3" role="37wK5m">
                <node concept="Xl_RD" id="1gEYwydCrY4" role="3uHU7B">
                  <property role="Xl_RC" value="Check " />
                </node>
                <node concept="37vLTw" id="3GM_nagTtFu" role="3uHU7w">
                  <ref role="3cqZAo" node="1gEYwydCrXB" resolve="whatToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kx1j_xiId$" role="3cqZAp">
          <node concept="2OqwBi" id="6Kx1j_xiM38" role="3clFbG">
            <node concept="2OqwBi" id="6Kx1j_xiJvP" role="2Oq$k0">
              <node concept="liA8E" id="6Kx1j_xiLVH" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
              <node concept="tl45R" id="6Kx1j_xiIdy" role="2Oq$k0" />
            </node>
            <node concept="liA8E" id="6Kx1j_xiOV4" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3fqX7Q" id="6hwTCM8L8V5" role="37wK5m">
                <node concept="2OqwBi" id="6hwTCM8L8V6" role="3fr31v">
                  <node concept="37vLTw" id="6hwTCM8L8V7" role="2Oq$k0">
                    <ref role="3cqZAo" node="6hwTCM8KriC" resolve="modelsToCheck" />
                  </node>
                  <node concept="liA8E" id="6hwTCM8L8V8" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="mfpdH" id="6Kx1j_xGgym" role="med8o" />
    <node concept="2XrIbr" id="5yRJc8nTmUd" role="32lrUH">
      <property role="TrG5h" value="selectedModels" />
      <node concept="3uibUv" id="5yRJc8nTpGk" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5yRJc8nTpP3" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="5yRJc8nTmUf" role="3clF47">
        <node concept="3cpWs8" id="5yRJc8nTpTY" role="3cqZAp">
          <node concept="3cpWsn" id="5yRJc8nTpTZ" role="3cpWs9">
            <property role="TrG5h" value="modelsToCheck" />
            <node concept="3uibUv" id="5yRJc8nTpU0" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5yRJc8nTpU1" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="5yRJc8nTpU2" role="33vP2m">
              <node concept="1pGfFk" id="5yRJc8nTpU3" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="5yRJc8nTpU4" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5yRJc8nTpU5" role="3cqZAp">
          <node concept="3y3z36" id="5yRJc8nTpU6" role="3clFbw">
            <node concept="10Nm6u" id="5yRJc8nTpU7" role="3uHU7w" />
            <node concept="2OqwBi" id="5yRJc8nTpU8" role="3uHU7B">
              <node concept="2WthIp" id="5yRJc8nTpU9" role="2Oq$k0" />
              <node concept="1DTwFV" id="5yRJc8nTpUa" role="2OqNvi">
                <ref role="2WH_rO" node="1gEYwydCrWQ" resolve="models" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5yRJc8nTpUb" role="3clFbx">
            <node concept="3clFbF" id="5yRJc8nTpUc" role="3cqZAp">
              <node concept="2OqwBi" id="5yRJc8nTpUd" role="3clFbG">
                <node concept="37vLTw" id="5yRJc8nTpUe" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yRJc8nTpTZ" resolve="modelsToCheck" />
                </node>
                <node concept="liA8E" id="5yRJc8nTpUf" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                  <node concept="2OqwBi" id="5yRJc8nTpUg" role="37wK5m">
                    <node concept="2WthIp" id="5yRJc8nTpUh" role="2Oq$k0" />
                    <node concept="1DTwFV" id="5yRJc8nTpUi" role="2OqNvi">
                      <ref role="2WH_rO" node="1gEYwydCrWQ" resolve="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5yRJc8nTpUj" role="3cqZAp">
          <node concept="1Wc70l" id="5yRJc8nTpUk" role="3clFbw">
            <node concept="3y3z36" id="5yRJc8nTpUl" role="3uHU7B">
              <node concept="10Nm6u" id="5yRJc8nTpUm" role="3uHU7w" />
              <node concept="2OqwBi" id="5yRJc8nTpUn" role="3uHU7B">
                <node concept="1DTwFV" id="5yRJc8nTpUo" role="2OqNvi">
                  <ref role="2WH_rO" node="1gEYwydCrWP" resolve="model" />
                </node>
                <node concept="2WthIp" id="5yRJc8nTpUp" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5yRJc8nTpUq" role="3uHU7w">
              <node concept="2OqwBi" id="5yRJc8nTpUr" role="3fr31v">
                <node concept="liA8E" id="5yRJc8nTpUs" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                  <node concept="2OqwBi" id="5yRJc8nTpUt" role="37wK5m">
                    <node concept="1DTwFV" id="5yRJc8nTpUu" role="2OqNvi">
                      <ref role="2WH_rO" node="1gEYwydCrWP" resolve="model" />
                    </node>
                    <node concept="2WthIp" id="5yRJc8nTpUv" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="37vLTw" id="5yRJc8nTpUw" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yRJc8nTpTZ" resolve="modelsToCheck" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5yRJc8nTpUx" role="3clFbx">
            <node concept="3clFbF" id="5yRJc8nTpUy" role="3cqZAp">
              <node concept="2OqwBi" id="5yRJc8nTpUz" role="3clFbG">
                <node concept="liA8E" id="5yRJc8nTpU$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="5yRJc8nTpU_" role="37wK5m">
                    <node concept="2WthIp" id="5yRJc8nTpUA" role="2Oq$k0" />
                    <node concept="1DTwFV" id="5yRJc8nTpUB" role="2OqNvi">
                      <ref role="2WH_rO" node="1gEYwydCrWP" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5yRJc8nTpUC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yRJc8nTpTZ" resolve="modelsToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5yRJc8nTr2U" role="3cqZAp">
          <node concept="37vLTw" id="5yRJc8nTrnU" role="3cqZAk">
            <ref role="3cqZAo" node="5yRJc8nTpTZ" resolve="modelsToCheck" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8Me5ML" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5yRJc8nTFVR" role="32lrUH">
      <property role="TrG5h" value="completeWithNested" />
      <node concept="3cqZAl" id="5yRJc8nTJLI" role="3clF45" />
      <node concept="3clFbS" id="5yRJc8nTFVT" role="3clF47">
        <node concept="1DcWWT" id="5yRJc8nTHs8" role="3cqZAp">
          <node concept="2OqwBi" id="5yRJc8nTHs9" role="1DdaDG">
            <node concept="liA8E" id="5yRJc8nTHsa" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
              <node concept="2ShNRf" id="5yRJc8nTHsb" role="37wK5m">
                <node concept="3$_iS1" id="5yRJc8nTHsc" role="2ShVmc">
                  <node concept="3uibUv" id="5yRJc8nTHsd" role="3$_nBY">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="3$GHV9" id="5yRJc8nTHse" role="3$GQph">
                    <node concept="2OqwBi" id="5yRJc8nTHsf" role="3$I4v7">
                      <node concept="liA8E" id="5yRJc8nTHsg" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                      <node concept="37vLTw" id="5yRJc8nTHsh" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yRJc8nTHhR" resolve="models" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5yRJc8nTHsi" role="2Oq$k0">
              <ref role="3cqZAo" node="5yRJc8nTHhR" resolve="models" />
            </node>
          </node>
          <node concept="3clFbS" id="5yRJc8nTHsj" role="2LFqv$">
            <node concept="3cpWs8" id="5yRJc8nTHsk" role="3cqZAp">
              <node concept="3cpWsn" id="5yRJc8nTHsl" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="2OqwBi" id="5yRJc8nTHsm" role="33vP2m">
                  <node concept="2OqwBi" id="5yRJc8nTHsn" role="2Oq$k0">
                    <node concept="37vLTw" id="5yRJc8nTHso" role="2Oq$k0">
                      <ref role="3cqZAo" node="5yRJc8nTHt0" resolve="model" />
                    </node>
                    <node concept="liA8E" id="5yRJc8nTHsp" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5yRJc8nTHsq" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                  </node>
                </node>
                <node concept="17QB3L" id="5yRJc8nTHsr" role="1tU5fm" />
              </node>
            </node>
            <node concept="3cpWs8" id="5yRJc8nTHss" role="3cqZAp">
              <node concept="3cpWsn" id="5yRJc8nTHst" role="3cpWs9">
                <property role="TrG5h" value="isStub" />
                <node concept="10P_77" id="5yRJc8nTHsu" role="1tU5fm" />
                <node concept="2YIFZM" id="5yRJc8nTHsv" role="33vP2m">
                  <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
                  <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                  <node concept="37vLTw" id="5yRJc8nTHsw" role="37wK5m">
                    <ref role="3cqZAo" node="5yRJc8nTHt0" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="5yRJc8nTHsx" role="3cqZAp">
              <node concept="2GrKxI" id="5yRJc8nTHsy" role="2Gsz3X">
                <property role="TrG5h" value="innerModel" />
              </node>
              <node concept="3clFbS" id="5yRJc8nTHsz" role="2LFqv$">
                <node concept="3clFbJ" id="5yRJc8nTHs$" role="3cqZAp">
                  <node concept="2OqwBi" id="5yRJc8nTHs_" role="3clFbw">
                    <node concept="liA8E" id="5yRJc8nTHsA" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="3cpWs3" id="5yRJc8nTHsB" role="37wK5m">
                        <node concept="Xl_RD" id="5yRJc8nTHsC" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                        <node concept="37vLTw" id="5yRJc8nTHsD" role="3uHU7B">
                          <ref role="3cqZAo" node="5yRJc8nTHsl" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5yRJc8nTHsE" role="2Oq$k0">
                      <node concept="2OqwBi" id="5yRJc8nTHsF" role="2Oq$k0">
                        <node concept="2GrUjf" id="5yRJc8nTHsG" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="5yRJc8nTHsy" resolve="innerModel" />
                        </node>
                        <node concept="liA8E" id="5yRJc8nTHsH" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5yRJc8nTHsI" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5yRJc8nTHsJ" role="3clFbx">
                    <node concept="3clFbJ" id="5yRJc8nTHsK" role="3cqZAp">
                      <node concept="3clFbS" id="5yRJc8nTHsL" role="3clFbx">
                        <node concept="3clFbF" id="5yRJc8nTHsM" role="3cqZAp">
                          <node concept="2OqwBi" id="5yRJc8nTHsN" role="3clFbG">
                            <node concept="37vLTw" id="5yRJc8nTHsO" role="2Oq$k0">
                              <ref role="3cqZAo" node="5yRJc8nTHhR" resolve="models" />
                            </node>
                            <node concept="liA8E" id="5yRJc8nTHsP" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                              <node concept="2GrUjf" id="5yRJc8nTHsQ" role="37wK5m">
                                <ref role="2Gs0qQ" node="5yRJc8nTHsy" resolve="innerModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="5yRJc8nTHsR" role="3clFbw">
                        <node concept="37vLTw" id="5yRJc8nTHsS" role="3uHU7B">
                          <ref role="3cqZAo" node="5yRJc8nTHst" resolve="isStub" />
                        </node>
                        <node concept="2YIFZM" id="5yRJc8nTHsT" role="3uHU7w">
                          <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                          <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
                          <node concept="2GrUjf" id="5yRJc8nTHsU" role="37wK5m">
                            <ref role="2Gs0qQ" node="5yRJc8nTHsy" resolve="innerModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5yRJc8nTHsV" role="2GsD0m">
                <node concept="liA8E" id="5yRJc8nTHsW" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                </node>
                <node concept="2OqwBi" id="5yRJc8nTHsX" role="2Oq$k0">
                  <node concept="liA8E" id="5yRJc8nTHsY" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                  <node concept="37vLTw" id="5yRJc8nTHsZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yRJc8nTHt0" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5yRJc8nTHt0" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="5yRJc8nTHt1" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5yRJc8nTHhR" role="3clF46">
        <property role="TrG5h" value="models" />
        <node concept="3uibUv" id="5yRJc8nTHhQ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5yRJc8nTHqR" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8Me5MM" role="1B3o_S" />
    </node>
  </node>
  <node concept="tC5Ba" id="4DBewFc0uLT">
    <property role="TrG5h" value="ToolsInternalEx" />
    <property role="3GE5qa" value="DevKit" />
    <property role="2pbKbs" value="true" />
    <node concept="ftmFs" id="4DBewFc0uLV" role="ftER_">
      <node concept="tCFHf" id="xuu5X9h_nG" role="ftvYc">
        <ref role="tCJdB" node="2tRCcbzc1yK" resolve="FindWrongAspectDependencies" />
      </node>
      <node concept="tCFHf" id="6h3t152gTRL" role="ftvYc">
        <ref role="tCJdB" node="6h3t152gT6f" resolve="FindCrossTemplateReferences" />
      </node>
      <node concept="tCFHf" id="1_LT7K4yA4e" role="ftvYc">
        <ref role="tCJdB" node="1_LT7K4ncS$" resolve="FindReferencesToNonReferenceable" />
      </node>
    </node>
    <node concept="tT9cl" id="4DBewFc0$ut" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2wXrNhB2RlP" resolve="ToolsInternal" />
    </node>
  </node>
  <node concept="sE7Ow" id="6h3t152gT6f">
    <property role="TrG5h" value="FindCrossTemplateReferences" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Find Cross-template References" />
    <property role="3GE5qa" value="DevKit.Internal" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="6h3t152gT6k" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4$Favkc8OnK" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7LWtwT1pEtx" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7LWtwT1pEty" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6h3t152gT6g" role="tncku">
      <node concept="3clFbS" id="6h3t152gT6h" role="2VODD2">
        <node concept="3cpWs8" id="6h3t152gT6o" role="3cqZAp">
          <node concept="3cpWsn" id="6h3t152gT6p" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="_YKpA" id="6h3t152gT6q" role="1tU5fm">
              <node concept="3uibUv" id="2eVlusX1SLQ" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="2eVlusX1SLg" role="33vP2m">
              <node concept="Tc6Ow" id="2eVlusX1SLi" role="2ShVmc">
                <node concept="3uibUv" id="2eVlusX1SLk" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="2eVlusX1SL9" role="I$8f6">
                  <node concept="1eOMI4" id="2eVlusX1SLs" role="2Oq$k0">
                    <node concept="10QFUN" id="2eVlusX1SLD" role="1eOMHV">
                      <node concept="2OqwBi" id="7LWtwT1q0F9" role="10QFUP">
                        <node concept="2OqwBi" id="7LWtwT1q02p" role="2Oq$k0">
                          <node concept="2WthIp" id="7LWtwT1q02s" role="2Oq$k0" />
                          <node concept="1DTwFV" id="7LWtwT1q02u" role="2OqNvi">
                            <ref role="2WH_rO" node="7LWtwT1pEtx" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7LWtwT1q13A" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getProjectModels()" resolve="getProjectModels" />
                        </node>
                      </node>
                      <node concept="A3Dl8" id="2eVlusX1SLL" role="10QFUM">
                        <node concept="3uibUv" id="2eVlusX1SLO" role="A3Ik2">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6h3t152gT6_" role="2OqNvi">
                    <node concept="1bVj0M" id="6h3t152gT6A" role="23t8la">
                      <node concept="3clFbS" id="6h3t152gT6B" role="1bW5cS">
                        <node concept="3clFbF" id="6h3t152gT6C" role="3cqZAp">
                          <node concept="1Wc70l" id="cKz$qOPfgU" role="3clFbG">
                            <node concept="2YIFZM" id="7LWtwT1q6t4" role="3uHU7w">
                              <ref role="37wK5l" to="ap4t:~GenerationFacade.canGenerate(org.jetbrains.mps.openapi.model.SModel)" resolve="canGenerate" />
                              <ref role="1Pybhc" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
                              <node concept="37vLTw" id="7LWtwT1q6t5" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XyQ" resolve="md" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="6h3t152gT72" role="3uHU7B">
                              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
                              <node concept="37vLTw" id="2BHiRxgl00E" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XyQ" resolve="md" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XyQ" role="1bW2Oz">
                        <property role="TrG5h" value="md" />
                        <node concept="2jxLKc" id="5W7E4fV0XyR" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2eVlusX1SLo" role="3cqZAp" />
        <node concept="3clFbF" id="bYTFyV6Sv9" role="3cqZAp">
          <node concept="2OqwBi" id="bYTFyV6Tc1" role="3clFbG">
            <node concept="2YIFZM" id="bYTFyV6Svb" role="2Oq$k0">
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <node concept="2OqwBi" id="bYTFyV6Svc" role="37wK5m">
                <node concept="2WthIp" id="bYTFyV6Svd" role="2Oq$k0" />
                <node concept="1DTwFV" id="bYTFyV6Sve" role="2OqNvi">
                  <ref role="2WH_rO" node="6h3t152gT6k" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="bYTFyV6X3X" role="2OqNvi">
              <ref role="37wK5l" to="phxh:3pNk_u$9zR0" resolve="checkModelsAndShowResult" />
              <node concept="37vLTw" id="3GM_nagTvnU" role="37wK5m">
                <ref role="3cqZAo" node="6h3t152gT6p" resolve="models" />
              </node>
              <node concept="2ShNRf" id="6h3t152gTRI" role="37wK5m">
                <node concept="1pGfFk" id="6h3t152gTRJ" role="2ShVmc">
                  <ref role="37wK5l" to="phxh:3etVqSRT$IG" resolve="GeneratorTemplatesChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6dAEaqvbK37" />
  <node concept="sE7Ow" id="2tRCcbzc1yK">
    <property role="1WHSii" value="Finds wrong references between core, editor and workbench" />
    <property role="TrG5h" value="FindWrongAspectDependencies" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Find Wrong Aspect Dependencies" />
    <property role="3GE5qa" value="DevKit.Internal" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7SNXUnYXKN6" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7SNXUnYXKN7" role="1oa70y" />
    </node>
    <node concept="tnohg" id="2tRCcbzc1yL" role="tncku">
      <node concept="3clFbS" id="2tRCcbzc1yM" role="2VODD2">
        <node concept="3clFbF" id="PIFYWx4IEQ" role="3cqZAp">
          <node concept="2OqwBi" id="PIFYWx4Jue" role="3clFbG">
            <node concept="2OqwBi" id="PIFYWx4J58" role="2Oq$k0">
              <node concept="2OqwBi" id="PIFYWx4IEK" role="2Oq$k0">
                <node concept="2WthIp" id="PIFYWx4IEN" role="2Oq$k0" />
                <node concept="1DTwFV" id="PIFYWx4IEP" role="2OqNvi">
                  <ref role="2WH_rO" node="7SNXUnYXKN6" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="PIFYWx4Jtp" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="PIFYWx4JI6" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="PIFYWx4JVH" role="37wK5m">
                <node concept="YeOm9" id="PIFYWx4KVe" role="2ShVmc">
                  <node concept="1Y3b0j" id="PIFYWx4KVh" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="PIFYWx4KVi" role="1B3o_S" />
                    <node concept="3clFb_" id="PIFYWx4KVj" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="PIFYWx4KVk" role="1B3o_S" />
                      <node concept="3cqZAl" id="PIFYWx4KVm" role="3clF45" />
                      <node concept="3clFbS" id="PIFYWx4KVn" role="3clF47">
                        <node concept="3cpWs8" id="2tRCcbzc1yR" role="3cqZAp">
                          <node concept="3cpWsn" id="2tRCcbzc1yS" role="3cpWs9">
                            <property role="TrG5h" value="models" />
                            <node concept="_YKpA" id="2tRCcbzc1yT" role="1tU5fm">
                              <node concept="3uibUv" id="2eVlusX1UEm" role="_ZDj9">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="2eVlusX1UDK" role="33vP2m">
                              <node concept="Tc6Ow" id="2eVlusX1UDM" role="2ShVmc">
                                <node concept="3uibUv" id="2eVlusX1UDO" role="HW$YZ">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="2eVlusX1UEh" role="I$8f6">
                                  <node concept="3zZkjj" id="2tRCcbzc1z4" role="2OqNvi">
                                    <node concept="1bVj0M" id="2tRCcbzc1z5" role="23t8la">
                                      <node concept="3clFbS" id="2tRCcbzc1z6" role="1bW5cS">
                                        <node concept="3clFbF" id="2tRCcbzc1z7" role="3cqZAp">
                                          <node concept="3fqX7Q" id="7d$WBe34XYY" role="3clFbG">
                                            <node concept="2YIFZM" id="7d$WBe34XZ0" role="3fr31v">
                                              <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
                                              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                                              <node concept="37vLTw" id="7d$WBe34XZ1" role="37wK5m">
                                                <ref role="3cqZAo" node="5W7E4fV0XyS" resolve="md" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="gl6BB" id="5W7E4fV0XyS" role="1bW2Oz">
                                        <property role="TrG5h" value="md" />
                                        <node concept="2jxLKc" id="5W7E4fV0XyT" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7SNXUnYYAUj" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7SNXUnYY$6J" role="2Oq$k0">
                                      <node concept="1eOMI4" id="7SNXUnYYyyz" role="2Oq$k0">
                                        <node concept="10QFUN" id="7SNXUnYYxlD" role="1eOMHV">
                                          <node concept="A3Dl8" id="7SNXUnYYzk4" role="10QFUM">
                                            <node concept="3uibUv" id="7SNXUnYYzGz" role="A3Ik2">
                                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="7SNXUnYXV3E" role="10QFUP">
                                            <node concept="2OqwBi" id="7SNXUnYXMpx" role="2Oq$k0">
                                              <node concept="2WthIp" id="7SNXUnYXMp$" role="2Oq$k0" />
                                              <node concept="1DTwFV" id="7SNXUnYXMpA" role="2OqNvi">
                                                <ref role="2WH_rO" node="7SNXUnYXKN6" resolve="mpsProject" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7SNXUnYXWEE" role="2OqNvi">
                                              <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3zZkjj" id="7SNXUnYY_DS" role="2OqNvi">
                                        <node concept="1bVj0M" id="7SNXUnYY_DU" role="23t8la">
                                          <node concept="3clFbS" id="7SNXUnYY_DV" role="1bW5cS">
                                            <node concept="3clFbF" id="7SNXUnYYA77" role="3cqZAp">
                                              <node concept="2YIFZM" id="4V$6IO6Tlqj" role="3clFbG">
                                                <ref role="37wK5l" to="z1c3:~SModuleOperations.canSupplyExtensionsForMPS(org.jetbrains.mps.openapi.module.SModule)" resolve="canSupplyExtensionsForMPS" />
                                                <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                                                <node concept="37vLTw" id="4V$6IO6Tm5U" role="37wK5m">
                                                  <ref role="3cqZAo" node="5W7E4fV0XyU" resolve="it" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="5W7E4fV0XyU" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="5W7E4fV0XyV" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3goQfb" id="7SNXUnYYCMS" role="2OqNvi">
                                      <node concept="1bVj0M" id="7SNXUnYYCMU" role="23t8la">
                                        <node concept="3clFbS" id="7SNXUnYYCMV" role="1bW5cS">
                                          <node concept="3clFbF" id="7SNXUnYYDga" role="3cqZAp">
                                            <node concept="2OqwBi" id="7SNXUnYYDpZ" role="3clFbG">
                                              <node concept="37vLTw" id="7SNXUnYYDg9" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5W7E4fV0XyW" resolve="it" />
                                              </node>
                                              <node concept="liA8E" id="7SNXUnYYEsM" role="2OqNvi">
                                                <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="gl6BB" id="5W7E4fV0XyW" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="5W7E4fV0XyX" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="bYTFyV7zet" role="3cqZAp">
                          <node concept="2OqwBi" id="bYTFyV7zSV" role="3clFbG">
                            <node concept="2YIFZM" id="bYTFyV7zev" role="2Oq$k0">
                              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
                              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
                              <node concept="2OqwBi" id="2$1L9HI7NaY" role="37wK5m">
                                <node concept="2OqwBi" id="2$1L9HI7NaZ" role="2Oq$k0">
                                  <node concept="2WthIp" id="2$1L9HI7Nb0" role="2Oq$k0" />
                                  <node concept="1DTwFV" id="2$1L9HI7Nb1" role="2OqNvi">
                                    <ref role="2WH_rO" node="7SNXUnYXKN6" resolve="mpsProject" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2$1L9HI7Nb2" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="bYTFyV7_Zc" role="2OqNvi">
                              <ref role="37wK5l" to="phxh:3pNk_u$9zR0" resolve="checkModelsAndShowResult" />
                              <node concept="37vLTw" id="3GM_nagTrLL" role="37wK5m">
                                <ref role="3cqZAo" node="2tRCcbzc1yS" resolve="models" />
                              </node>
                              <node concept="2ShNRf" id="2K4NeDx_N2d" role="37wK5m">
                                <node concept="1pGfFk" id="2K4NeDx_N2e" role="2ShVmc">
                                  <ref role="37wK5l" node="2tRCcbzc1$Z" resolve="AspectDependenciesChecker" />
                                  <node concept="2OqwBi" id="2$1L9HI7e6q" role="37wK5m">
                                    <node concept="2WthIp" id="2$1L9HI7e6t" role="2Oq$k0" />
                                    <node concept="1DTwFV" id="2$1L9HI7e6v" role="2OqNvi">
                                      <ref role="2WH_rO" node="7SNXUnYXKN6" resolve="mpsProject" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2tRCcbzc1$X">
    <property role="TrG5h" value="AspectDependenciesChecker" />
    <property role="3GE5qa" value="Model Checker.Dependencies" />
    <node concept="Wx3nA" id="dQllQpiwYX" role="jymVt">
      <property role="TrG5h" value="WRONG_ASPECT_DEPENDENCIES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="dQllQpi$WM" role="1tU5fm">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="2ShNRf" id="dQllQpi_W1" role="33vP2m">
        <node concept="1pGfFk" id="dQllQpi_We" role="2ShVmc">
          <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.&lt;init&gt;(jetbrains.mps.errors.item.IssueKindReportItem$KindLevel,java.lang.String)" resolve="IssueKindReportItem.CheckerCategory" />
          <node concept="Rm8GO" id="dQllQpiAT0" role="37wK5m">
            <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
            <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.MANUAL" resolve="MANUAL" />
          </node>
          <node concept="Xl_RD" id="dQllQpi_Wg" role="37wK5m">
            <property role="Xl_RC" value="wrong aspect dependencies" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dQllQpiwZ2" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2tRCcbzc5Uv" role="jymVt">
      <property role="TrG5h" value="CORE" />
      <node concept="3cmrfG" id="2tRCcbzc5UE" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
      <node concept="10Oyi0" id="2tRCcbzc5UC" role="1tU5fm" />
      <node concept="3Tm6S6" id="2tRCcbzc5Uw" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2tRCcbzc5Uy" role="jymVt">
      <property role="TrG5h" value="EDITOR" />
      <node concept="3cmrfG" id="2tRCcbzc5UH" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
      <node concept="10Oyi0" id="2tRCcbzc5UF" role="1tU5fm" />
      <node concept="3Tm6S6" id="2tRCcbzc5Uz" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2tRCcbzc5U_" role="jymVt">
      <property role="TrG5h" value="WORKBENCH" />
      <node concept="10Oyi0" id="2tRCcbzc5UI" role="1tU5fm" />
      <node concept="3Tm6S6" id="2tRCcbzc5UA" role="1B3o_S" />
      <node concept="3cmrfG" id="2tRCcbzc5UK" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="2tRCcbzc6dm" role="jymVt">
      <property role="TrG5h" value="OTHER" />
      <node concept="10Oyi0" id="2tRCcbzc6dp" role="1tU5fm" />
      <node concept="3cmrfG" id="2tRCcbzc6dr" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
      <node concept="3Tm6S6" id="2tRCcbzc6dn" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7SNXUnYXwS2" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7SNXUnYXsA1" role="1B3o_S" />
      <node concept="3uibUv" id="7SNXUnYXwQu" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="1GAKH_suDVZ" role="jymVt">
      <property role="TrG5h" value="languagesUtilPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1GAKH_suDW0" role="1B3o_S" />
      <node concept="17QB3L" id="1GAKH_suGFF" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="2tRCcbzc1$Z" role="jymVt">
      <node concept="37vLTG" id="7SNXUnYXapp" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7SNXUnYXapo" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="7SNXUnYXbaP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2tRCcbzc1_2" role="3clF47">
        <node concept="3clFbF" id="7SNXUnYXyje" role="3cqZAp">
          <node concept="37vLTI" id="7SNXUnYXz6s" role="3clFbG">
            <node concept="37vLTw" id="7SNXUnYXznj" role="37vLTx">
              <ref role="3cqZAo" node="7SNXUnYXapp" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="7SNXUnYXyjc" role="37vLTJ">
              <ref role="3cqZAo" node="7SNXUnYXwS2" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1GAKH_suDW5" role="3cqZAp">
          <node concept="37vLTI" id="1GAKH_suGFC" role="3clFbG">
            <node concept="2OqwBi" id="1GAKH_suDW7" role="37vLTJ">
              <node concept="2OwXpG" id="1GAKH_suDWb" role="2OqNvi">
                <ref role="2Oxat5" node="1GAKH_suDVZ" resolve="languagesUtilPath" />
              </node>
              <node concept="Xjq3P" id="1GAKH_suDW6" role="2Oq$k0" />
            </node>
            <node concept="3cpWs3" id="1GAKH_suDWl" role="37vLTx">
              <node concept="Xl_RD" id="1GAKH_suDWo" role="3uHU7w">
                <property role="Xl_RC" value="/languages/util/" />
              </node>
              <node concept="2YIFZM" id="1GAKH_suDWk" role="3uHU7B">
                <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
                <ref role="37wK5l" to="18ew:~PathManager.getHomePath()" resolve="getHomePath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2tRCcbzc1_0" role="3clF45" />
      <node concept="3Tm1VV" id="2tRCcbzc1_1" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3xfDcbRpjI2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCategory" />
      <node concept="3Tm1VV" id="3xfDcbRpjI4" role="1B3o_S" />
      <node concept="3uibUv" id="dQllQpiBtP" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="3clFbS" id="3xfDcbRpjI9" role="3clF47">
        <node concept="3clFbF" id="3xfDcbRpl2r" role="3cqZAp">
          <node concept="37vLTw" id="dQllQpiDd6" role="3clFbG">
            <ref role="3cqZAo" node="dQllQpiwYX" resolve="WRONG_ASPECT_DEPENDENCIES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3xfDcbRpjIa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2tRCcbzc1Eu" role="jymVt">
      <property role="TrG5h" value="checkModel" />
      <node concept="_YKpA" id="2tRCcbzc1Hv" role="3clF45">
        <node concept="3uibUv" id="6iohsvjUt4t" role="_ZDj9">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
      </node>
      <node concept="37vLTG" id="2tRCcbzc1Hy" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2tRCcbzc1Hz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2tRCcbzc1H$" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="2tRCcbzc1H_" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2tRCcbzc1Ev" role="1B3o_S" />
      <node concept="3clFbS" id="2tRCcbzc1Ew" role="3clF47">
        <node concept="3cpWs8" id="2tRCcbzc1Ex" role="3cqZAp">
          <node concept="3cpWsn" id="2tRCcbzc1Ey" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="2tRCcbzc1Ez" role="1tU5fm">
              <node concept="3uibUv" id="6iohsvjUwTy" role="_ZDj9">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="2tRCcbzc1EA" role="33vP2m">
              <node concept="Tc6Ow" id="2tRCcbzc1EB" role="2ShVmc">
                <node concept="3uibUv" id="6iohsvjUvv5" role="HW$YZ">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2tRCcbzc5Ug" role="3cqZAp" />
        <node concept="3cpWs8" id="2tRCcbzc5Ul" role="3cqZAp">
          <node concept="3cpWsn" id="2tRCcbzc5Um" role="3cpWs9">
            <property role="TrG5h" value="modelKind" />
            <property role="3TUv4t" value="true" />
            <node concept="10Oyi0" id="2tRCcbzc5UL" role="1tU5fm" />
            <node concept="1rXfSq" id="4hiugqyzkow" role="33vP2m">
              <ref role="37wK5l" node="1MEKy$8pRWF" resolve="getModelKind" />
              <node concept="37vLTw" id="2BHiRxglf5r" role="37wK5m">
                <ref role="3cqZAo" node="2tRCcbzc1Hy" resolve="model" />
              </node>
              <node concept="10Nm6u" id="1MEKy$8pRXM" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1GAKH_suGGi" role="3cqZAp">
          <node concept="3clFbC" id="1GAKH_suGGn" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTwOI" role="3uHU7B">
              <ref role="3cqZAo" node="2tRCcbzc5Um" resolve="modelKind" />
            </node>
            <node concept="37vLTw" id="2BHiRxeojXm" role="3uHU7w">
              <ref role="3cqZAo" node="2tRCcbzc6dm" resolve="OTHER" />
            </node>
          </node>
          <node concept="3clFbS" id="1GAKH_suGGj" role="3clFbx">
            <node concept="3cpWs6" id="1GAKH_suGGr" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTr4u" role="3cqZAk">
                <ref role="3cqZAo" node="2tRCcbzc1Ey" resolve="results" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2tRCcbzc1F5" role="3cqZAp" />
        <node concept="2Gpval" id="2tRCcbzc1F6" role="3cqZAp">
          <node concept="2OqwBi" id="2tRCcbzc1Hm" role="2GsD0m">
            <node concept="2SmgA7" id="2tRCcbzc1Ho" role="2OqNvi" />
            <node concept="37vLTw" id="2BHiRxgm7ab" role="2Oq$k0">
              <ref role="3cqZAo" node="2tRCcbzc1Hy" resolve="model" />
            </node>
          </node>
          <node concept="2GrKxI" id="2tRCcbzc1F7" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="3clFbS" id="2tRCcbzc1F8" role="2LFqv$">
            <node concept="3clFbJ" id="2tRCcbzc1F9" role="3cqZAp">
              <node concept="2OqwBi" id="2tRCcbzc1Fc" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxglVN4" role="2Oq$k0">
                  <ref role="3cqZAo" node="2tRCcbzc1H$" resolve="monitor" />
                </node>
                <node concept="liA8E" id="2tRCcbzc1Fe" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
              <node concept="3clFbS" id="2tRCcbzc1Fa" role="3clFbx">
                <node concept="3zACq4" id="2tRCcbzc1Fb" role="3cqZAp" />
              </node>
            </node>
            <node concept="3SKdUt" id="2tRCcbzc1Ff" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojTb" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojTc" role="1PaTwD">
                  <property role="3oM_SC" value="Check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojTd" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojTe" role="1PaTwD">
                  <property role="3oM_SC" value="unresolved" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojTf" role="1PaTwD">
                  <property role="3oM_SC" value="references" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2tRCcbzc1Fh" role="3cqZAp">
              <node concept="2OqwBi" id="2tRCcbzc1Hj" role="2GsD0m">
                <node concept="2z74zc" id="2tRCcbzc1Hl" role="2OqNvi" />
                <node concept="2GrUjf" id="2tRCcbzc1Hk" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2tRCcbzc1F7" resolve="node" />
                </node>
              </node>
              <node concept="2GrKxI" id="2tRCcbzc1Fi" role="2Gsz3X">
                <property role="TrG5h" value="ref" />
              </node>
              <node concept="3clFbS" id="2tRCcbzc1Fj" role="2LFqv$">
                <node concept="3clFbJ" id="2tRCcbzc1Fk" role="3cqZAp">
                  <node concept="3clFbS" id="2tRCcbzc1Fl" role="3clFbx">
                    <node concept="3N13vt" id="2tRCcbzc1Fm" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="2tRCcbzc1Fn" role="3clFbw">
                    <node concept="2OqwBi" id="2tRCcbzc1Fo" role="2Oq$k0">
                      <node concept="2GrUjf" id="2tRCcbzc1Fp" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2tRCcbzc1F7" resolve="node" />
                      </node>
                      <node concept="3CFZ6_" id="2tRCcbzc1Fq" role="2OqNvi">
                        <node concept="3CFYIw" id="2tRCcbzc1Fr" role="3CFYIz">
                          <ref role="3CFYIJ" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
                          <node concept="25Kdxt" id="2tRCcbzc1Fs" role="3CFYM5">
                            <node concept="2OqwBi" id="2tRCcbzc1Ft" role="25KhWn">
                              <node concept="2GrUjf" id="2tRCcbzc1Fu" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                              </node>
                              <node concept="liA8E" id="3fee2iO_UKa" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3x8VRR" id="2tRCcbzc1Fw" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs8" id="2tRCcbzc1HE" role="3cqZAp">
                  <node concept="3cpWsn" id="2tRCcbzc1HF" role="3cpWs9">
                    <property role="TrG5h" value="targetNode" />
                    <node concept="2YIFZM" id="4xPcS81Bzcf" role="33vP2m">
                      <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                      <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                      <node concept="2GrUjf" id="4xPcS81Bzcg" role="37wK5m">
                        <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="2tRCcbzc1HL" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3clFbJ" id="2tRCcbzc1Fx" role="3cqZAp">
                  <node concept="3clFbS" id="2tRCcbzc1Fy" role="3clFbx">
                    <node concept="3clFbF" id="6iohsvjUEc7" role="3cqZAp">
                      <node concept="2OqwBi" id="6iohsvjUFcj" role="3clFbG">
                        <node concept="37vLTw" id="6iohsvjUEc5" role="2Oq$k0">
                          <ref role="3cqZAo" node="2tRCcbzc1Ey" resolve="results" />
                        </node>
                        <node concept="TSZUe" id="6iohsvjUG3b" role="2OqNvi">
                          <node concept="2ShNRf" id="6iohsvjU$wg" role="25WWJ7">
                            <node concept="1pGfFk" id="6iohsvjU_mr" role="2ShVmc">
                              <ref role="37wK5l" to="d6hs:~UnresolvedReferenceReportItem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SReference,java.lang.Runnable)" resolve="UnresolvedReferenceReportItem" />
                              <node concept="2GrUjf" id="6iohsvjUAiE" role="37wK5m">
                                <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                              </node>
                              <node concept="1bVj0M" id="7xOXVW7WY$" role="37wK5m">
                                <node concept="3clFbS" id="7xOXVW7WY_" role="1bW5cS">
                                  <node concept="3clFbF" id="7xOXVW7WYA" role="3cqZAp">
                                    <node concept="2OqwBi" id="7xOXVW7WYB" role="3clFbG">
                                      <node concept="liA8E" id="7xOXVW7WYC" role="2OqNvi">
                                        <ref role="37wK5l" to="5ijk:1$3BPv3Vdyw" resolve="resolve" />
                                        <node concept="2GrUjf" id="7xOXVW7WYD" role="37wK5m">
                                          <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                                        </node>
                                        <node concept="2OqwBi" id="7SNXUnYX$8O" role="37wK5m">
                                          <node concept="37vLTw" id="7SNXUnYXzvw" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7SNXUnYXwS2" resolve="myProject" />
                                          </node>
                                          <node concept="liA8E" id="7SNXUnYX_pE" role="2OqNvi">
                                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2YIFZM" id="7xOXVW7WYF" role="2Oq$k0">
                                        <ref role="37wK5l" to="5ijk:1$3BPv3Ve2T" resolve="getInstance" />
                                        <ref role="1Pybhc" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="2tRCcbzc1HD" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="2tRCcbzc1FO" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTxBG" role="3uHU7B">
                      <ref role="3cqZAo" node="2tRCcbzc1HF" resolve="targetNode" />
                    </node>
                    <node concept="10Nm6u" id="2tRCcbzc1FP" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbH" id="2tRCcbzc5US" role="3cqZAp" />
                <node concept="3cpWs8" id="2tRCcbzc5V0" role="3cqZAp">
                  <node concept="3cpWsn" id="2tRCcbzc5V1" role="3cpWs9">
                    <property role="TrG5h" value="targetModel" />
                    <node concept="H_c77" id="2tRCcbzc5V2" role="1tU5fm" />
                    <node concept="2OqwBi" id="2tRCcbzc5V5" role="33vP2m">
                      <node concept="I4A8Y" id="2tRCcbzc5V9" role="2OqNvi" />
                      <node concept="37vLTw" id="3GM_nagTx1W" role="2Oq$k0">
                        <ref role="3cqZAo" node="2tRCcbzc1HF" resolve="targetNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2tRCcbzc5Vb" role="3cqZAp">
                  <node concept="3cpWsn" id="2tRCcbzc5Vc" role="3cpWs9">
                    <property role="TrG5h" value="targetKind" />
                    <node concept="10Oyi0" id="2tRCcbzc5Vd" role="1tU5fm" />
                    <node concept="1rXfSq" id="4hiugqyyHWx" role="33vP2m">
                      <ref role="37wK5l" node="1MEKy$8pRWF" resolve="getModelKind" />
                      <node concept="37vLTw" id="3GM_nagTxYJ" role="37wK5m">
                        <ref role="3cqZAo" node="2tRCcbzc5V1" resolve="targetModel" />
                      </node>
                      <node concept="2GrUjf" id="1MEKy$8pRXH" role="37wK5m">
                        <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2tRCcbzc5Vo" role="3cqZAp">
                  <node concept="3clFbS" id="2tRCcbzc5Vp" role="3clFbx">
                    <node concept="3clFbF" id="6iohsvjULQd" role="3cqZAp">
                      <node concept="2OqwBi" id="6iohsvjUWCq" role="3clFbG">
                        <node concept="37vLTw" id="6iohsvjUVvJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="2tRCcbzc1Ey" resolve="results" />
                        </node>
                        <node concept="TSZUe" id="6iohsvjUYHi" role="2OqNvi">
                          <node concept="2ShNRf" id="6iohsvjULQ9" role="25WWJ7">
                            <node concept="YeOm9" id="6iohsvjUMJw" role="2ShVmc">
                              <node concept="1Y3b0j" id="6iohsvjUMJz" role="YeSDq">
                                <property role="2bfB8j" value="true" />
                                <ref role="1Y3XeK" to="d6hs:~ReferenceReportItem" resolve="ReferenceReportItem" />
                                <ref role="37wK5l" to="d6hs:~ReferenceReportItem.&lt;init&gt;(jetbrains.mps.errors.MessageStatus,org.jetbrains.mps.openapi.model.SReference,java.lang.String)" resolve="ReferenceReportItem" />
                                <node concept="3Tm1VV" id="6iohsvjUMJ$" role="1B3o_S" />
                                <node concept="3clFb_" id="6iohsvjUMJA" role="jymVt">
                                  <property role="1EzhhJ" value="false" />
                                  <property role="TrG5h" value="getIssueKind" />
                                  <property role="DiZV1" value="false" />
                                  <property role="od$2w" value="false" />
                                  <node concept="3Tm1VV" id="6iohsvjUMJB" role="1B3o_S" />
                                  <node concept="3uibUv" id="dQllQpicaC" role="3clF45">
                                    <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
                                  </node>
                                  <node concept="3clFbS" id="6iohsvjUMJE" role="3clF47">
                                    <node concept="3clFbF" id="6iohsvjUQ2H" role="3cqZAp">
                                      <node concept="2OqwBi" id="dQllQpiEtX" role="3clFbG">
                                        <node concept="37vLTw" id="dQllQpiEdm" role="2Oq$k0">
                                          <ref role="3cqZAo" node="dQllQpiwYX" resolve="WRONG_ASPECT_DEPENDENCIES" />
                                        </node>
                                        <node concept="liA8E" id="dQllQpiEZA" role="2OqNvi">
                                          <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String)" resolve="deriveItemKind" />
                                          <node concept="1rXfSq" id="7xOXVW7WZ4" role="37wK5m">
                                            <ref role="37wK5l" node="2tRCcbzc5VP" resolve="kindToString" />
                                            <node concept="37vLTw" id="7xOXVW7WZ5" role="37wK5m">
                                              <ref role="3cqZAo" node="2tRCcbzc5Um" resolve="modelKind" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rm8GO" id="6iohsvjUS7s" role="37wK5m">
                                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                                </node>
                                <node concept="2GrUjf" id="6iohsvjUSjz" role="37wK5m">
                                  <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                                </node>
                                <node concept="3cpWs3" id="7xOXVW7WYL" role="37wK5m">
                                  <node concept="3cpWs3" id="7xOXVW7WYM" role="3uHU7B">
                                    <node concept="3cpWs3" id="7xOXVW7WYN" role="3uHU7B">
                                      <node concept="1rXfSq" id="7xOXVW7WYO" role="3uHU7w">
                                        <ref role="37wK5l" node="2tRCcbzc5VP" resolve="kindToString" />
                                        <node concept="37vLTw" id="7xOXVW7WYP" role="37wK5m">
                                          <ref role="3cqZAo" node="2tRCcbzc5Um" resolve="modelKind" />
                                        </node>
                                      </node>
                                      <node concept="3cpWs3" id="7xOXVW7WYQ" role="3uHU7B">
                                        <node concept="3cpWs3" id="7xOXVW7WYR" role="3uHU7B">
                                          <node concept="2OqwBi" id="7xOXVW7WYS" role="3uHU7w">
                                            <node concept="1FfNbt" id="7xOXVW7WYT" role="2OqNvi" />
                                            <node concept="2GrUjf" id="7xOXVW7WYU" role="2Oq$k0">
                                              <ref role="2Gs0qQ" node="2tRCcbzc1Fi" resolve="ref" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="7xOXVW7WYV" role="3uHU7B">
                                            <property role="Xl_RC" value="Wrong reference: " />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="7xOXVW7WYW" role="3uHU7w">
                                          <property role="Xl_RC" value=", reference from " />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="7xOXVW7WYX" role="3uHU7w">
                                      <property role="Xl_RC" value=" to " />
                                    </node>
                                  </node>
                                  <node concept="1rXfSq" id="7xOXVW7WYY" role="3uHU7w">
                                    <ref role="37wK5l" node="2tRCcbzc5VP" resolve="kindToString" />
                                    <node concept="37vLTw" id="7xOXVW7WYZ" role="37wK5m">
                                      <ref role="3cqZAo" node="2tRCcbzc5Vc" resolve="targetKind" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="2tRCcbzc5Vt" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTBrR" role="3uHU7B">
                      <ref role="3cqZAo" node="2tRCcbzc5Vc" resolve="targetKind" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTvKy" role="3uHU7w">
                      <ref role="3cqZAo" node="2tRCcbzc5Um" resolve="modelKind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2tRCcbzc1Ht" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTAAg" role="3cqZAk">
            <ref role="3cqZAo" node="2tRCcbzc1Ey" resolve="results" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SfL4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1MEKy$8pRWF" role="jymVt">
      <property role="TrG5h" value="getModelKind" />
      <node concept="3Tm1VV" id="1MEKy$8pRWH" role="1B3o_S" />
      <node concept="37vLTG" id="1MEKy$8pRWJ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="1MEKy$8pRWK" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1MEKy$8pRWI" role="3clF47">
        <node concept="3cpWs8" id="4hSanifExF3" role="3cqZAp">
          <node concept="3cpWsn" id="4hSanifExF4" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="4hSanifExF5" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="3K4zz7" id="4hSanifE_J_" role="33vP2m">
              <node concept="2OqwBi" id="4hSanifEB5Z" role="3K4E3e">
                <node concept="2JrnkZ" id="4hSanifEAn_" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxglpzU" role="2JrQYb">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                </node>
                <node concept="liA8E" id="4hSanifEBOI" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                </node>
              </node>
              <node concept="3y3z36" id="4hSanifE$X5" role="3K4Cdx">
                <node concept="2JrnkZ" id="1GAKH_suDpN" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxghfvP" role="2JrQYb">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                </node>
                <node concept="10Nm6u" id="4hSanifE$XW" role="3uHU7w" />
              </node>
              <node concept="10Nm6u" id="4hSanifECtN" role="3K4GZi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1GAKH_suDpE" role="3cqZAp">
          <node concept="3cpWsn" id="1GAKH_suDpF" role="3cpWs9">
            <property role="TrG5h" value="modelFile" />
            <node concept="3K4zz7" id="4hSanifEMrc" role="33vP2m">
              <node concept="2ZW3vV" id="4hSanifEFrp" role="3K4Cdx">
                <node concept="3uibUv" id="4hSanifEHYA" role="2ZW6by">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="37vLTw" id="4hSanifEEkK" role="2ZW6bz">
                  <ref role="3cqZAo" node="4hSanifExF4" resolve="source" />
                </node>
              </node>
              <node concept="2OqwBi" id="4hSanifETm_" role="3K4E3e">
                <node concept="liA8E" id="4hSanifEUD_" role="2OqNvi">
                  <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                </node>
                <node concept="1eOMI4" id="4hSanifEQVs" role="2Oq$k0">
                  <node concept="10QFUN" id="4hSanifEQVp" role="1eOMHV">
                    <node concept="37vLTw" id="4hSanifESqU" role="10QFUP">
                      <ref role="3cqZAo" node="4hSanifExF4" resolve="source" />
                    </node>
                    <node concept="3uibUv" id="4hSanifERDD" role="10QFUM">
                      <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="4hSanifEVi_" role="3K4GZi" />
            </node>
            <node concept="3uibUv" id="1GAKH_suDpG" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1GAKH_suDVQ" role="3cqZAp">
          <node concept="3clFbS" id="1GAKH_suDVR" role="3clFbx">
            <node concept="3cpWs8" id="1GAKH_suGFK" role="3cqZAp">
              <node concept="3cpWsn" id="1GAKH_suGFL" role="3cpWs9">
                <property role="TrG5h" value="filePath" />
                <node concept="2OqwBi" id="1GAKH_suGFU" role="33vP2m">
                  <node concept="liA8E" id="1GAKH_suGFY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                    <node concept="1Xhbcc" id="1GAKH_suGFZ" role="37wK5m">
                      <property role="1XhdNS" value="\\" />
                    </node>
                    <node concept="1Xhbcc" id="1GAKH_suGG1" role="37wK5m">
                      <property role="1XhdNS" value="/" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1GAKH_suGFP" role="2Oq$k0">
                    <node concept="liA8E" id="1GAKH_suGFT" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTAiE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1GAKH_suDpF" resolve="modelFile" />
                    </node>
                  </node>
                </node>
                <node concept="17QB3L" id="1GAKH_suGFM" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbJ" id="1GAKH_suGG3" role="3cqZAp">
              <node concept="3clFbS" id="1GAKH_suGG4" role="3clFbx">
                <node concept="3cpWs6" id="1GAKH_suGGe" role="3cqZAp">
                  <node concept="37vLTw" id="2BHiRxeorFh" role="3cqZAk">
                    <ref role="3cqZAo" node="2tRCcbzc6dm" resolve="OTHER" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1GAKH_suGG8" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTsfG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1GAKH_suGFL" resolve="filePath" />
                </node>
                <node concept="liA8E" id="1GAKH_suGGc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="37vLTw" id="2BHiRxeuKlb" role="37wK5m">
                    <ref role="3cqZAo" node="1GAKH_suDVZ" resolve="languagesUtilPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1GAKH_suDVV" role="3clFbw">
            <node concept="10Nm6u" id="1GAKH_suDVY" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTzPn" role="3uHU7B">
              <ref role="3cqZAo" node="1GAKH_suDpF" resolve="modelFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1GAKH_suDpy" role="3cqZAp" />
        <node concept="3cpWs8" id="2tRCcbzc6cQ" role="3cqZAp">
          <node concept="3cpWsn" id="2tRCcbzc6cR" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="2OqwBi" id="256tImPkK$J" role="33vP2m">
              <node concept="2JrnkZ" id="256tImPkK$N" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgl0LW" role="2JrQYb">
                  <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                </node>
              </node>
              <node concept="liA8E" id="256tImPkK$K" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
            <node concept="3uibUv" id="4hSanifEZn3" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2tRCcbzc6d1" role="3cqZAp">
          <node concept="3eNFk2" id="2tRCcbzc6da" role="3eNLev">
            <node concept="3clFbS" id="2tRCcbzc6dc" role="3eOfB_">
              <node concept="3cpWs8" id="1MEKy$8pR_X" role="3cqZAp">
                <node concept="3cpWsn" id="1MEKy$8pR_Y" role="3cpWs9">
                  <property role="TrG5h" value="moduleFqName" />
                  <node concept="2OqwBi" id="1MEKy$8pRA2" role="33vP2m">
                    <node concept="liA8E" id="1MEKy$8pRA6" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTwV6" role="2Oq$k0">
                      <ref role="3cqZAo" node="2tRCcbzc6cR" resolve="module" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="1MEKy$8pR_Z" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbJ" id="1MEKy$8pRA9" role="3cqZAp">
                <node concept="2OqwBi" id="1MEKy$8pRAe" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTzd1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pR_Y" resolve="moduleFqName" />
                  </node>
                  <node concept="liA8E" id="1MEKy$8pRAi" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="1MEKy$8pRAj" role="37wK5m">
                      <property role="Xl_RC" value="JDK" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1MEKy$8pRAa" role="3clFbx">
                  <node concept="3cpWs6" id="1MEKy$8pRAk" role="3cqZAp">
                    <node concept="37vLTw" id="2BHiRxeooZ2" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1MEKy$8pRAr" role="3cqZAp">
                <node concept="2OqwBi" id="1MEKy$8pRAu" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTr1I" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pR_Y" resolve="moduleFqName" />
                  </node>
                  <node concept="liA8E" id="1MEKy$8pRAw" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="1MEKy$8pRAx" role="37wK5m">
                      <property role="Xl_RC" value="MPS.Core" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1MEKy$8pRAs" role="3clFbx">
                  <node concept="3cpWs6" id="1MEKy$8pRAt" role="3cqZAp">
                    <node concept="37vLTw" id="2BHiRxeoryE" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1MEKy$8pRAz" role="3cqZAp">
                <node concept="3clFbS" id="1MEKy$8pRA$" role="3clFbx">
                  <node concept="3cpWs6" id="1MEKy$8pRA_" role="3cqZAp">
                    <node concept="37vLTw" id="2BHiRxeojWI" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uy" resolve="EDITOR" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1MEKy$8pRAA" role="3clFbw">
                  <node concept="liA8E" id="1MEKy$8pRAC" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="1MEKy$8pRAD" role="37wK5m">
                      <property role="Xl_RC" value="MPS.Editor" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzbB" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pR_Y" resolve="moduleFqName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1MEKy$8pRB0" role="3cqZAp">
                <node concept="2OqwBi" id="1MEKy$8pRB3" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTyd7" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pR_Y" resolve="moduleFqName" />
                  </node>
                  <node concept="liA8E" id="1MEKy$8pRB5" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="1MEKy$8pRB6" role="37wK5m">
                      <property role="Xl_RC" value="MPS.Workbench" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1MEKy$8pRB1" role="3clFbx">
                  <node concept="3cpWs6" id="1MEKy$8pRB2" role="3cqZAp">
                    <node concept="37vLTw" id="2BHiRxeop4e" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5U_" resolve="WORKBENCH" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1MEKy$8pRA8" role="3cqZAp" />
              <node concept="3clFbJ" id="73XL5w68IHz" role="3cqZAp">
                <node concept="3clFbS" id="73XL5w68IH_" role="3clFbx">
                  <node concept="3cpWs6" id="2tRCcbzc6UI" role="3cqZAp">
                    <node concept="37vLTw" id="2BHiRxeoqa4" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5U_" resolve="WORKBENCH" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="73XL5w68MEG" role="3clFbw">
                  <ref role="37wK5l" to="z1c3:~SModuleOperations.canSupplyExtensionsForMPS(org.jetbrains.mps.openapi.module.SModule)" resolve="canSupplyExtensionsForMPS" />
                  <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                  <node concept="37vLTw" id="73XL5w68OHT" role="37wK5m">
                    <ref role="3cqZAo" node="2tRCcbzc6cR" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="73XL5w68Wrx" role="3cqZAp">
                <node concept="3clFbS" id="73XL5w68Wrz" role="3clFbx">
                  <node concept="3cpWs6" id="2tRCcbzc6UO" role="3cqZAp">
                    <node concept="37vLTw" id="2BHiRxeooZ4" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="73XL5w691B9" role="3clFbw">
                  <ref role="37wK5l" to="z1c3:~SModuleOperations.classloadingManagedByMPS(org.jetbrains.mps.openapi.module.SModule)" resolve="classloadingManagedByMPS" />
                  <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
                  <node concept="37vLTw" id="73XL5w692TJ" role="37wK5m">
                    <ref role="3cqZAo" node="2tRCcbzc6cR" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2tRCcbzc6UR" role="3cqZAp">
                <node concept="37vLTw" id="2BHiRxeoqQn" role="3cqZAk">
                  <ref role="3cqZAo" node="2tRCcbzc6dm" resolve="OTHER" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="2tRCcbzc6de" role="3eO9$A">
              <node concept="37vLTw" id="3GM_nagTs$B" role="2ZW6bz">
                <ref role="3cqZAo" node="2tRCcbzc6cR" resolve="module" />
              </node>
              <node concept="3uibUv" id="2tRCcbzc6dh" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2tRCcbzc6d2" role="3clFbx">
            <node concept="3clFbJ" id="7IH442cVt_s" role="3cqZAp">
              <node concept="2OqwBi" id="qmfyRQPxFh" role="3clFbw">
                <node concept="37vLTw" id="qmfyRQPxFi" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                </node>
                <node concept="3zA4fs" id="qmfyRQPxFj" role="2OqNvi">
                  <ref role="3zA4av" to="sla8:2LiUEk8oQ$g" resolve="actions" />
                </node>
              </node>
              <node concept="3clFbS" id="7IH442cVt_u" role="3clFbx">
                <node concept="3cpWs6" id="2tRCcbzc6S9" role="3cqZAp">
                  <node concept="37vLTw" id="7IH442cVxCh" role="3cqZAk">
                    <ref role="3cqZAo" node="2tRCcbzc5Uy" resolve="EDITOR" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cVyi1" role="3eNLev">
                <node concept="2OqwBi" id="qmfyRQNOif" role="3eO9$A">
                  <node concept="37vLTw" id="qmfyRQNOgC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="qmfyRQNOkk" role="2OqNvi">
                    <ref role="3zA4av" to="mg3u:2LiUEk8oQ$g" resolve="behavior" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cVyi3" role="3eOfB_">
                  <node concept="3cpWs6" id="2tRCcbzc6Sj" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVzAk" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cVzDU" role="3eNLev">
                <node concept="2OqwBi" id="qmfyRQRhFJ" role="3eO9$A">
                  <node concept="37vLTw" id="qmfyRQRiTb" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="qmfyRQRhHO" role="2OqNvi">
                    <ref role="3zA4av" to="beg:2LiUEk8oQ$g" resolve="constraints" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cVzDV" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cVzDW" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVzEx" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$hT" role="3eNLev">
                <node concept="2OqwBi" id="1ZE6IpOfUCq" role="3eO9$A">
                  <node concept="37vLTw" id="1ZE6IpOfU9R" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="1ZE6IpOfV6j" role="2OqNvi">
                    <ref role="3zA4av" to="hgrf:2LiUEk8oQ$g" resolve="dataFlow" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$hU" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$hV" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV$iw" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$j1" role="3eNLev">
                <node concept="2OqwBi" id="qmfyRQJlQP" role="3eO9$A">
                  <node concept="37vLTw" id="qmfyRQJlQQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="qmfyRQJlQR" role="2OqNvi">
                    <ref role="3zA4av" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$j2" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$j3" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV_yY" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uy" resolve="EDITOR" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$kh" role="3eNLev">
                <node concept="2OqwBi" id="i22eBZRFZA" role="3eO9$A">
                  <node concept="37vLTw" id="i22eBZRFub" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="i22eBZRGwn" role="2OqNvi">
                    <ref role="3zA4av" to="xg48:2LiUEk8oQ$g" resolve="findUsages" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$ki" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$kj" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV$kS" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$lD" role="3eNLev">
                <node concept="2OqwBi" id="7XWR6$5ig8_" role="3eO9$A">
                  <node concept="37vLTw" id="7XWR6$5ig6U" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="7XWR6$5igaO" role="2OqNvi">
                    <ref role="3zA4av" to="8okf:2LiUEk8oQ$g" resolve="intentions" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$lE" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$lF" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVAuy" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uy" resolve="EDITOR" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$n9" role="3eNLev">
                <node concept="2OqwBi" id="o4PHK1qAJ1" role="3eO9$A">
                  <node concept="37vLTw" id="o4PHK1qAdj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="o4PHK1qBg5" role="2OqNvi">
                    <ref role="3zA4av" to="bgxn:2LiUEk8oQ$g" resolve="plugin" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$na" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$nb" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVBjN" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5U_" resolve="WORKBENCH" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$oL" role="3eNLev">
                <node concept="2OqwBi" id="7XWR6$5gyB9" role="3eO9$A">
                  <node concept="37vLTw" id="7XWR6$5gyBa" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="7XWR6$5gyBb" role="2OqNvi">
                    <ref role="3zA4av" to="6sb4:2LiUEk8oQ$g" resolve="refactorings" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$oM" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$oN" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV$po" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$qx" role="3eNLev">
                <node concept="2OqwBi" id="1ZE6IpOe3VJ" role="3eO9$A">
                  <node concept="37vLTw" id="1ZE6IpOe3Uc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="1ZE6IpOe3XK" role="2OqNvi">
                    <ref role="3zA4av" to="n1pe:2LiUEk8oQ$g" resolve="scripts" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$qy" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$qz" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV$r8" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$sp" role="3eNLev">
                <node concept="2OqwBi" id="57HLayr_tKW" role="3eO9$A">
                  <node concept="37vLTw" id="57HLayr_tKX" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="57HLayr_tKY" role="2OqNvi">
                    <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$sq" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$sr" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV$t0" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cV$up" role="3eNLev">
                <node concept="2OqwBi" id="7XWR6$5jt0D" role="3eO9$A">
                  <node concept="37vLTw" id="7XWR6$5juNY" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="7XWR6$5jtib" role="2OqNvi">
                    <ref role="3zA4av" to="che4:2LiUEk8oQ$g" resolve="migration" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cV$uq" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cV$ur" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cV$v0" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cVChv" role="3eNLev">
                <node concept="2OqwBi" id="6xa2Sak8iyZ" role="3eO9$A">
                  <node concept="37vLTw" id="6xa2Sak8iz0" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="6xa2Sak8iz1" role="2OqNvi">
                    <ref role="3zA4av" to="rliy:2LiUEk8oQ$g" resolve="test" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cVChw" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cVChx" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVDSM" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uy" resolve="EDITOR" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cVCTf" role="3eNLev">
                <node concept="2OqwBi" id="4r4fzRRwlfB" role="3eO9$A">
                  <node concept="37vLTw" id="4r4fzRRwle6" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="4r4fzRRwlhA" role="2OqNvi">
                    <ref role="3zA4av" to="h8lr:2LiUEk8oQ$g" resolve="textGen" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cVCTg" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cVCTh" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVCTi" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7IH442cVEF$" role="3eNLev">
                <node concept="2OqwBi" id="qmfyRQHa6m" role="3eO9$A">
                  <node concept="37vLTw" id="qmfyRQHa4J" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MEKy$8pRWJ" resolve="model" />
                  </node>
                  <node concept="3zA4fs" id="qmfyRQHa8r" role="2OqNvi">
                    <ref role="3zA4av" to="f7uj:2LiUEk8oQ$g" resolve="typesystem" />
                  </node>
                </node>
                <node concept="3clFbS" id="7IH442cVEF_" role="3eOfB_">
                  <node concept="3cpWs6" id="7IH442cVEFA" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVEFB" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7IH442cVH2f" role="9aQIa">
                <node concept="3clFbS" id="7IH442cVH2g" role="9aQI4">
                  <node concept="3cpWs6" id="7IH442cVHJ4" role="3cqZAp">
                    <node concept="37vLTw" id="7IH442cVHJ_" role="3cqZAk">
                      <ref role="3cqZAo" node="2tRCcbzc5Uv" resolve="CORE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2tRCcbzc6d6" role="3clFbw">
            <node concept="3uibUv" id="2tRCcbzc6d9" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="37vLTw" id="3GM_nagT_yk" role="2ZW6bz">
              <ref role="3cqZAo" node="2tRCcbzc6cR" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2tRCcbzc6dj" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeoq8h" role="3cqZAk">
            <ref role="3cqZAo" node="2tRCcbzc6dm" resolve="OTHER" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="1MEKy$8pRWO" role="3clF45" />
      <node concept="37vLTG" id="1MEKy$8pRWL" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="2z4iKi" id="1MEKy$8pRWM" role="1tU5fm" />
        <node concept="2AHcQZ" id="1MEKy$8pRWN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2tRCcbzc5VP" role="jymVt">
      <property role="TrG5h" value="kindToString" />
      <node concept="37vLTG" id="2tRCcbzc5VU" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="10Oyi0" id="2tRCcbzc5VV" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2tRCcbzc5VS" role="3clF47">
        <node concept="3KaCP$" id="2tRCcbzc5VW" role="3cqZAp">
          <node concept="3KbdKl" id="2tRCcbzc5W0" role="3KbHQx">
            <node concept="3clFbS" id="2tRCcbzc5W2" role="3Kbo56">
              <node concept="3cpWs6" id="2tRCcbzc5W4" role="3cqZAp">
                <node concept="Xl_RD" id="2tRCcbzc5W6" role="3cqZAk">
                  <property role="Xl_RC" value="core" />
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="2tRCcbzc5W3" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3KbdKl" id="2tRCcbzc5W7" role="3KbHQx">
            <node concept="3cmrfG" id="2tRCcbzc5Wa" role="3Kbmr1">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3clFbS" id="2tRCcbzc5W9" role="3Kbo56">
              <node concept="3cpWs6" id="2tRCcbzc5Wb" role="3cqZAp">
                <node concept="Xl_RD" id="2tRCcbzc5Wd" role="3cqZAk">
                  <property role="Xl_RC" value="editor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2tRCcbzc5VY" role="3Kb1Dw" />
          <node concept="37vLTw" id="2BHiRxgheP6" role="3KbGdf">
            <ref role="3cqZAo" node="2tRCcbzc5VU" resolve="kind" />
          </node>
          <node concept="3KbdKl" id="2tRCcbzc5We" role="3KbHQx">
            <node concept="3cmrfG" id="2tRCcbzc5Wh" role="3Kbmr1">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="3clFbS" id="2tRCcbzc5Wg" role="3Kbo56">
              <node concept="3cpWs6" id="2tRCcbzc5Wi" role="3cqZAp">
                <node concept="Xl_RD" id="2tRCcbzc5Wk" role="3cqZAk">
                  <property role="Xl_RC" value="workbench" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tRCcbzc5Wp" role="3cqZAp">
          <node concept="Xl_RD" id="2tRCcbzc5Wq" role="3clFbG">
            <property role="Xl_RC" value="unknown" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2tRCcbzc5VT" role="3clF45" />
      <node concept="3Tm1VV" id="2tRCcbzc5VR" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2tRCcbzc1$Y" role="1B3o_S" />
    <node concept="3uibUv" id="2tRCcbzc1Et" role="1zkMxy">
      <ref role="3uigEE" to="phxh:3etVqSRRx7i" resolve="SpecificChecker" />
    </node>
  </node>
  <node concept="tC5Ba" id="1kKLUrBH7uc">
    <property role="TrG5h" value="CheckNamespace" />
    <property role="3GE5qa" value="Model Checker.Groups" />
    <node concept="ftmFs" id="1kKLUrBH7ud" role="ftER_">
      <node concept="tCFHf" id="1kKLUrBH7uh" role="ftvYc">
        <ref role="tCJdB" node="6wv4A$J8q_G" resolve="CheckNamespace" />
      </node>
    </node>
    <node concept="tT9cl" id="1kKLUrBH7ug" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hQh2F9P" resolve="NamespaceActions" />
      <ref role="2f8Tey" to="tprs:V2X$nu7ww3" resolve="check" />
    </node>
  </node>
  <node concept="sE7Ow" id="6wv4A$J8q_G">
    <property role="1WHSii" value="Check modules for errors" />
    <property role="TrG5h" value="CheckNamespace" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Check Selected Modules" />
    <property role="3GE5qa" value="Model Checker.Actions" />
    <property role="1teQrl" value="true" />
    <node concept="2XrIbr" id="3pNk_u$3SOf" role="32lrUH">
      <property role="TrG5h" value="modules2check" />
      <node concept="_YKpA" id="3pNk_u$3TgH" role="3clF45">
        <node concept="3uibUv" id="3pNk_u$3TkH" role="_ZDj9">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="3pNk_u$3SOh" role="3clF47">
        <node concept="3cpWs8" id="3pNk_u$3To0" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$3To1" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="_YKpA" id="3pNk_u$3To2" role="1tU5fm">
              <node concept="3uibUv" id="3pNk_u$3To3" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="3pNk_u$3To4" role="33vP2m">
              <node concept="Tc6Ow" id="3pNk_u$3To5" role="2ShVmc">
                <node concept="3uibUv" id="3pNk_u$3To6" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3pNk_u$3To7" role="3cqZAp">
          <node concept="2GrKxI" id="3pNk_u$3To8" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="3pNk_u$3To9" role="2GsD0m">
            <node concept="2WthIp" id="3pNk_u$3Toa" role="2Oq$k0" />
            <node concept="1DTwFV" id="3pNk_u$3Tob" role="2OqNvi">
              <ref role="2WH_rO" node="46odHgBCqrP" resolve="treeNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="3pNk_u$3Toc" role="2LFqv$">
            <node concept="3clFbJ" id="3bZ6DaxxH7t" role="3cqZAp">
              <node concept="3clFbS" id="3bZ6DaxxH7v" role="3clFbx">
                <node concept="3cpWs6" id="3bZ6DaxxJBY" role="3cqZAp">
                  <node concept="2ShNRf" id="3bZ6DaxxK2f" role="3cqZAk">
                    <node concept="Tc6Ow" id="3bZ6DaxydxN" role="2ShVmc">
                      <node concept="3uibUv" id="3bZ6DaxyeWd" role="HW$YZ">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3bZ6DaxxJoN" role="3clFbw">
                <node concept="2ZW3vV" id="3bZ6DaxxJoP" role="3fr31v">
                  <node concept="3uibUv" id="3bZ6DaxxJoQ" role="2ZW6by">
                    <ref role="3uigEE" to="kxvg:~NamespaceTextNode" resolve="NamespaceTextNode" />
                  </node>
                  <node concept="2GrUjf" id="3bZ6DaxxJoR" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="3pNk_u$3To8" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3pNk_u$3Tod" role="3cqZAp">
              <node concept="2OqwBi" id="3pNk_u$3Toe" role="3clFbG">
                <node concept="37vLTw" id="3pNk_u$3Tof" role="2Oq$k0">
                  <ref role="3cqZAo" node="3pNk_u$3To1" resolve="modules" />
                </node>
                <node concept="X8dFx" id="3pNk_u$3Tog" role="2OqNvi">
                  <node concept="2OqwBi" id="3pNk_u$3Toh" role="25WWJ7">
                    <node concept="1eOMI4" id="3pNk_u$3Toi" role="2Oq$k0">
                      <node concept="10QFUN" id="3pNk_u$3Toj" role="1eOMHV">
                        <node concept="3uibUv" id="3pNk_u$3Tok" role="10QFUM">
                          <ref role="3uigEE" to="kxvg:~NamespaceTextNode" resolve="NamespaceTextNode" />
                        </node>
                        <node concept="2GrUjf" id="3pNk_u$3Tol" role="10QFUP">
                          <ref role="2Gs0qQ" node="3pNk_u$3To8" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3pNk_u$3Tom" role="2OqNvi">
                      <ref role="37wK5l" to="kxvg:~NamespaceTextNode.getModulesUnder()" resolve="getModulesUnder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3pNk_u$3TNj" role="3cqZAp">
          <node concept="37vLTw" id="3pNk_u$3TYB" role="3cqZAk">
            <ref role="3cqZAo" node="3pNk_u$3To1" resolve="modules" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8Me5MN" role="1B3o_S" />
    </node>
    <node concept="1QGGSu" id="6hehsrpcaCI" role="3Uehp1">
      <node concept="10M0yZ" id="6hehsrpcaCJ" role="3xaMm5">
        <ref role="3cqZAo" to="l7us:~MPSIcons$General.ModelChecker" resolve="ModelChecker" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$General" resolve="MPSIcons.General" />
      </node>
    </node>
    <node concept="tnohg" id="6wv4A$J8q_H" role="tncku">
      <node concept="3clFbS" id="6wv4A$J8q_I" role="2VODD2">
        <node concept="3cpWs8" id="46odHgBCqtf" role="3cqZAp">
          <node concept="3cpWsn" id="46odHgBCqtg" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="_YKpA" id="46odHgBCqth" role="1tU5fm">
              <node concept="3uibUv" id="4O9Oe_ftjP4" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="3pNk_u$3UlS" role="33vP2m">
              <node concept="2WthIp" id="3pNk_u$3UlV" role="2Oq$k0" />
              <node concept="2XshWL" id="3pNk_u$3UlX" role="2OqNvi">
                <ref role="2WH_rO" node="3pNk_u$3SOf" resolve="modules2check" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bYTFyV6yBw" role="3cqZAp">
          <node concept="2OqwBi" id="bYTFyV6z84" role="3clFbG">
            <node concept="2YIFZM" id="bYTFyV6yBy" role="2Oq$k0">
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <node concept="2OqwBi" id="bYTFyV6yBz" role="37wK5m">
                <node concept="2WthIp" id="bYTFyV6yB$" role="2Oq$k0" />
                <node concept="1DTwFV" id="bYTFyV6yB_" role="2OqNvi">
                  <ref role="2WH_rO" node="6wv4A$J8wwd" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="bYTFyV6ALU" role="2OqNvi">
              <ref role="37wK5l" to="phxh:4aNWY1v2hQb" resolve="checkModulesAndShowResult" />
              <node concept="37vLTw" id="3GM_nagTtDM" role="37wK5m">
                <ref role="3cqZAo" node="46odHgBCqtg" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="6wv4A$J8wwd" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6wv4A$J8wwe" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="46odHgBCqrP" role="1NuT2Z">
      <property role="TrG5h" value="treeNodes" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODES" resolve="TREE_NODES" />
      <node concept="1oajcY" id="4$Favkc8Oo3" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="1kKLUrBH5$Y" role="tmbBb">
      <node concept="3clFbS" id="1kKLUrBH5$Z" role="2VODD2">
        <node concept="3cpWs6" id="3pNk_u$40e8" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$3WCm" role="3cqZAk">
            <node concept="2OqwBi" id="3pNk_u$3VDl" role="2Oq$k0">
              <node concept="2WthIp" id="3pNk_u$3VDo" role="2Oq$k0" />
              <node concept="2XshWL" id="3pNk_u$3VDq" role="2OqNvi">
                <ref role="2WH_rO" node="3pNk_u$3SOf" resolve="modules2check" />
              </node>
            </node>
            <node concept="3GX2aA" id="3pNk_u$3ZBq" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1_LT7K4ot0A">
    <property role="TrG5h" value="ReferenceableConceptsChecker" />
    <property role="3GE5qa" value="Model Checker" />
    <node concept="3Tm1VV" id="1_LT7K4ot0B" role="1B3o_S" />
    <node concept="3uibUv" id="1_LT7K4oCa5" role="1zkMxy">
      <ref role="3uigEE" to="phxh:3etVqSRRx7i" resolve="SpecificChecker" />
    </node>
    <node concept="3clFbW" id="1_LT7K4oFQ5" role="jymVt">
      <node concept="3cqZAl" id="1_LT7K4oFQ6" role="3clF45" />
      <node concept="3Tm1VV" id="1_LT7K4oFQ7" role="1B3o_S" />
      <node concept="3clFbS" id="1_LT7K4oFQ9" role="3clF47" />
    </node>
    <node concept="Wx3nA" id="dQllQpjoiL" role="jymVt">
      <property role="TrG5h" value="ILLEGAL_REFERENCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="dQllQpjs9h" role="1tU5fm">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="2ShNRf" id="dQllQpjt11" role="33vP2m">
        <node concept="1pGfFk" id="dQllQpjt1e" role="2ShVmc">
          <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.&lt;init&gt;(jetbrains.mps.errors.item.IssueKindReportItem$KindLevel,java.lang.String)" resolve="IssueKindReportItem.CheckerCategory" />
          <node concept="Rm8GO" id="dQllQpjtzt" role="37wK5m">
            <ref role="1Px2BO" to="d6hs:~IssueKindReportItem$KindLevel" resolve="IssueKindReportItem.KindLevel" />
            <ref role="Rm8GQ" to="d6hs:~IssueKindReportItem$KindLevel.MANUAL" resolve="MANUAL" />
          </node>
          <node concept="Xl_RD" id="dQllQpjt1g" role="37wK5m">
            <property role="Xl_RC" value="illegal references" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dQllQpjoiQ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3xfDcbRoSJB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCategory" />
      <node concept="3Tm1VV" id="3xfDcbRoSJD" role="1B3o_S" />
      <node concept="3uibUv" id="dQllQpjkEH" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$CheckerCategory" resolve="IssueKindReportItem.CheckerCategory" />
      </node>
      <node concept="3clFbS" id="3xfDcbRoSJI" role="3clF47">
        <node concept="3clFbF" id="3xfDcbRoUh$" role="3cqZAp">
          <node concept="37vLTw" id="dQllQpjufW" role="3clFbG">
            <ref role="3cqZAo" node="dQllQpjoiL" resolve="ILLEGAL_REFERENCES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3xfDcbRoSJJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1_LT7K4oFZJ" role="jymVt">
      <property role="TrG5h" value="checkModel" />
      <node concept="3Tm1VV" id="1_LT7K4oFZK" role="1B3o_S" />
      <node concept="37vLTG" id="1_LT7K4oFZL" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="H_c77" id="1_LT7K4oFZM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1_LT7K4oFZN" role="3clF47">
        <node concept="3cpWs8" id="1_LT7K4oFZW" role="3cqZAp">
          <node concept="3cpWsn" id="1_LT7K4oFZX" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <property role="3TUv4t" value="true" />
            <node concept="2ShNRf" id="1_LT7K4oFZY" role="33vP2m">
              <node concept="Tc6Ow" id="1_LT7K4oFZZ" role="2ShVmc">
                <node concept="3uibUv" id="7dLX2A2Nn9I" role="HW$YZ">
                  <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="1_LT7K4oG02" role="1tU5fm">
              <node concept="3uibUv" id="7dLX2A2NjjA" role="_ZDj9">
                <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7U5B1qbTlxD" role="3cqZAp">
          <node concept="3clFbS" id="7U5B1qbTlxE" role="3clFbx">
            <node concept="3cpWs6" id="7U5B1qbTlxF" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTtG_" role="3cqZAk">
                <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7U5B1qbTlxH" role="3clFbw">
            <node concept="3clFbC" id="7U5B1qbTlxM" role="3uHU7B">
              <node concept="2JrnkZ" id="7U5B1qbTlxP" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmFdm" role="2JrQYb">
                  <ref role="3cqZAo" node="1_LT7K4oFZL" resolve="model" />
                </node>
              </node>
              <node concept="10Nm6u" id="7U5B1qbTlxN" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="7U5B1qbTlxS" role="3uHU7w">
              <node concept="2OqwBi" id="256tImPkKyd" role="3uHU7B">
                <node concept="2JrnkZ" id="256tImPkKyg" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxglBwl" role="2JrQYb">
                    <ref role="3cqZAo" node="1_LT7K4oFZL" resolve="model" />
                  </node>
                </node>
                <node concept="liA8E" id="256tImPkKye" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
              <node concept="10Nm6u" id="7U5B1qbTlxT" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7U5B1qbTlrT" role="3cqZAp" />
        <node concept="3clFbJ" id="1_LT7K4oG0f" role="3cqZAp">
          <node concept="2OqwBi" id="1_LT7K4oG0g" role="3clFbw">
            <node concept="liA8E" id="1_LT7K4oG0h" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmIaw" role="2Oq$k0">
              <ref role="3cqZAo" node="1_LT7K4oG2L" resolve="monitor" />
            </node>
          </node>
          <node concept="3clFbS" id="1_LT7K4oG0j" role="3clFbx">
            <node concept="3cpWs6" id="1_LT7K4oG0k" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTt14" role="3cqZAk">
                <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_LT7K4oG0s" role="3cqZAp" />
        <node concept="3clFbJ" id="1K541Df79eQ" role="3cqZAp">
          <node concept="2OqwBi" id="57HLayr_wz$" role="3clFbw">
            <node concept="37vLTw" id="57HLayr_wfs" role="2Oq$k0">
              <ref role="3cqZAo" node="1_LT7K4oFZL" resolve="model" />
            </node>
            <node concept="3zA4fs" id="57HLayr_wQt" role="2OqNvi">
              <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
            </node>
          </node>
          <node concept="3clFbS" id="1K541Df79eS" role="3clFbx">
            <node concept="3cpWs8" id="1dlISwUn56t" role="3cqZAp">
              <node concept="3cpWsn" id="1dlISwUn56u" role="3cpWs9">
                <property role="TrG5h" value="itemKind1" />
                <node concept="3uibUv" id="1dlISwUn3vS" role="1tU5fm">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
                </node>
                <node concept="2OqwBi" id="1dlISwUn56v" role="33vP2m">
                  <node concept="1rXfSq" id="1dlISwUoUd3" role="2Oq$k0">
                    <ref role="37wK5l" node="3xfDcbRoSJB" resolve="getCategory" />
                  </node>
                  <node concept="liA8E" id="1dlISwUn56x" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String)" resolve="deriveItemKind" />
                    <node concept="Xl_RD" id="1dlISwUn56y" role="37wK5m">
                      <property role="Xl_RC" value="reference to a non-referenceable concept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1dlISwUoopm" role="3cqZAp">
              <node concept="3cpWsn" id="1dlISwUoopn" role="3cpWs9">
                <property role="TrG5h" value="itemKind2" />
                <node concept="3uibUv" id="1dlISwUomWF" role="1tU5fm">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
                </node>
                <node concept="2OqwBi" id="1dlISwUoopo" role="33vP2m">
                  <node concept="1rXfSq" id="1dlISwUoWGs" role="2Oq$k0">
                    <ref role="37wK5l" node="3xfDcbRoSJB" resolve="getCategory" />
                  </node>
                  <node concept="liA8E" id="1dlISwUoopq" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String)" resolve="deriveItemKind" />
                    <node concept="Xl_RD" id="1dlISwUoopr" role="37wK5m">
                      <property role="Xl_RC" value="non-referenceable named concept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1dlISwUo_m3" role="3cqZAp" />
            <node concept="2Gpval" id="1_LT7K4r5r8" role="3cqZAp">
              <node concept="2OqwBi" id="1_LT7K4rf6g" role="2GsD0m">
                <node concept="2RRcyG" id="1_LT7K4rgZ2" role="2OqNvi">
                  <node concept="chp4Y" id="5QK5AMJp7$j" role="3MHsoP">
                    <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                </node>
                <node concept="37vLTw" id="1_LT7K4rdBb" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_LT7K4oFZL" resolve="model" />
                </node>
              </node>
              <node concept="2GrKxI" id="1_LT7K4r5ra" role="2Gsz3X">
                <property role="TrG5h" value="concept" />
              </node>
              <node concept="3clFbS" id="1_LT7K4r5re" role="2LFqv$">
                <node concept="2Gpval" id="1_LT7K4rlWk" role="3cqZAp">
                  <node concept="2OqwBi" id="1_LT7K4t7uB" role="2GsD0m">
                    <node concept="2OqwBi" id="1_LT7K4rnwS" role="2Oq$k0">
                      <node concept="3Tsc0h" id="1_LT7K4sYiK" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                      </node>
                      <node concept="2GrUjf" id="1_LT7K4rz0n" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1_LT7K4r5ra" resolve="concept" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="1_LT7K4sxCX" role="2OqNvi">
                      <node concept="1bVj0M" id="1_LT7K4sxCZ" role="23t8la">
                        <node concept="3clFbS" id="1_LT7K4sxD0" role="1bW5cS">
                          <node concept="3clFbF" id="1_LT7K4syxP" role="3cqZAp">
                            <node concept="2OqwBi" id="1_LT7K4sH64" role="3clFbG">
                              <node concept="21noJN" id="3Ftr4R9iDfG" role="2OqNvi">
                                <node concept="21nZrQ" id="3Ftr4R9iDfH" role="21noJM">
                                  <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1_LT7K4szel" role="2Oq$k0">
                                <node concept="3TrcHB" id="1_LT7K4sEcz" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                </node>
                                <node concept="37vLTw" id="1_LT7K4syxO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0XyY" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XyY" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0XyZ" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2GrKxI" id="1_LT7K4rlWm" role="2Gsz3X">
                    <property role="TrG5h" value="ref" />
                  </node>
                  <node concept="3clFbS" id="1_LT7K4rlWq" role="2LFqv$">
                    <node concept="3cpWs8" id="1_LT7K4tsGR" role="3cqZAp">
                      <node concept="3cpWsn" id="1_LT7K4tsGS" role="3cpWs9">
                        <property role="TrG5h" value="target" />
                        <node concept="3Tqbb2" id="1_LT7K4tsGn" role="1tU5fm">
                          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="1_LT7K4tsGT" role="33vP2m">
                          <node concept="3TrEf2" id="1_LT7K4tsGU" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                          </node>
                          <node concept="2GrUjf" id="1_LT7K4tsGV" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="1_LT7K4rlWm" resolve="ref" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1_LT7K4tzgP" role="3cqZAp">
                      <node concept="2OqwBi" id="1_LT7K4t_jd" role="3clFbw">
                        <node concept="1mIQ4w" id="1_LT7K4tCeY" role="2OqNvi">
                          <node concept="chp4Y" id="1_LT7K4tCuC" role="cj9EA">
                            <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1_LT7K4t_aB" role="2Oq$k0">
                          <ref role="3cqZAo" node="1_LT7K4tsGS" resolve="target" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1_LT7K4tzgR" role="3clFbx">
                        <node concept="3cpWs8" id="1_LT7K4ujWu" role="3cqZAp">
                          <node concept="3cpWsn" id="1_LT7K4ujWx" role="3cpWs9">
                            <property role="TrG5h" value="decl" />
                            <node concept="1PxgMI" id="1_LT7K4umB6" role="33vP2m">
                              <node concept="37vLTw" id="1_LT7K4ulXm" role="1m5AlR">
                                <ref role="3cqZAo" node="1_LT7K4tsGS" resolve="target" />
                              </node>
                              <node concept="chp4Y" id="714IaVdH07P" role="3oSUPX">
                                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                              </node>
                            </node>
                            <node concept="3Tqbb2" id="1_LT7K4ujWs" role="1tU5fm">
                              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1_LT7K4usgF" role="3cqZAp">
                          <node concept="2OqwBi" id="1_LT7K4uJiA" role="3clFbw">
                            <node concept="21noJN" id="3Ftr4R9iDfI" role="2OqNvi">
                              <node concept="21nZrQ" id="3Ftr4R9iDfJ" role="21noJM">
                                <ref role="21nZrZ" to="tpce:3Ftr4R6BF$$" resolve="none" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1_LT7K4utyp" role="2Oq$k0">
                              <node concept="3TrcHB" id="2UAn0GTun$_" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8E" resolve="staticScope" />
                              </node>
                              <node concept="37vLTw" id="1_LT7K4ut2R" role="2Oq$k0">
                                <ref role="3cqZAo" node="1_LT7K4ujWx" resolve="decl" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1_LT7K4usgH" role="3clFbx">
                            <node concept="3cpWs8" id="1dlISwUlKWn" role="3cqZAp">
                              <node concept="3cpWsn" id="1dlISwUlKWo" role="3cpWs9">
                                <property role="TrG5h" value="m" />
                                <node concept="3uibUv" id="1dlISwUlKWp" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="2YIFZM" id="1dlISwUmq2_" role="33vP2m">
                                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                                  <node concept="Xl_RD" id="1dlISwUlOf_" role="37wK5m">
                                    <property role="Xl_RC" value="Can not reference concept %s (scope: none)" />
                                  </node>
                                  <node concept="2OqwBi" id="1dlISwUmwov" role="37wK5m">
                                    <node concept="37vLTw" id="1dlISwUmuZu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1_LT7K4tsGS" resolve="target" />
                                    </node>
                                    <node concept="3TrcHB" id="1dlISwUmyEh" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7dLX2A2LBQj" role="3cqZAp">
                              <node concept="2OqwBi" id="7dLX2A2LCTn" role="3clFbG">
                                <node concept="37vLTw" id="7dLX2A2LBQh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
                                </node>
                                <node concept="TSZUe" id="7dLX2A2LDJj" role="2OqNvi">
                                  <node concept="2YIFZM" id="1dlISwUmFNO" role="25WWJ7">
                                    <ref role="37wK5l" to="d6hs:~NodeReportItemBase.error(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="error" />
                                    <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                                    <node concept="37vLTw" id="1dlISwUmIua" role="37wK5m">
                                      <ref role="3cqZAo" node="1dlISwUlKWo" resolve="m" />
                                    </node>
                                    <node concept="2OqwBi" id="1dlISwUmMPt" role="37wK5m">
                                      <node concept="2GrUjf" id="1dlISwUmLlU" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="1_LT7K4rlWm" resolve="ref" />
                                      </node>
                                      <node concept="iZEcu" id="1dlISwUmPY1" role="2OqNvi" />
                                    </node>
                                    <node concept="37vLTw" id="1dlISwUn9gD" role="37wK5m">
                                      <ref role="3cqZAo" node="1dlISwUn56u" resolve="itemKind1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6LaFQwRMh9e" role="3cqZAp">
                  <node concept="1Wc70l" id="6LaFQwRMB$q" role="3clFbw">
                    <node concept="2OqwBi" id="6LaFQwRMjv7" role="3uHU7B">
                      <node concept="1mIQ4w" id="6LaFQwRM_xN" role="2OqNvi">
                        <node concept="chp4Y" id="6LaFQwRM_Yo" role="cj9EA">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                      <node concept="2GrUjf" id="6LaFQwRMhEv" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1_LT7K4r5ra" resolve="concept" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6LaFQwRMOPL" role="3uHU7w">
                      <node concept="21noJN" id="3Ftr4R9iDfK" role="2OqNvi">
                        <node concept="21nZrQ" id="3Ftr4R9iDfL" role="21noJM">
                          <ref role="21nZrZ" to="tpce:3Ftr4R6BF$$" resolve="none" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6LaFQwRMGdQ" role="2Oq$k0">
                        <node concept="3TrcHB" id="2UAn0GTuiQ4" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:3Ftr4R6BH8E" resolve="staticScope" />
                        </node>
                        <node concept="1PxgMI" id="6LaFQwRMDQb" role="2Oq$k0">
                          <node concept="2GrUjf" id="6LaFQwRMC9$" role="1m5AlR">
                            <ref role="2Gs0qQ" node="1_LT7K4r5ra" resolve="concept" />
                          </node>
                          <node concept="chp4Y" id="714IaVdH07O" role="3oSUPX">
                            <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6LaFQwRMh9g" role="3clFbx">
                    <node concept="3clFbJ" id="6LaFQwRNpgS" role="3cqZAp">
                      <node concept="3clFbS" id="6LaFQwRNpgU" role="3clFbx">
                        <node concept="3clFbF" id="7dLX2A2M7Gz" role="3cqZAp">
                          <node concept="2OqwBi" id="7dLX2A2M7G$" role="3clFbG">
                            <node concept="37vLTw" id="7dLX2A2M7G_" role="2Oq$k0">
                              <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
                            </node>
                            <node concept="TSZUe" id="7dLX2A2M7GA" role="2OqNvi">
                              <node concept="2YIFZM" id="1dlISwUo2QA" role="25WWJ7">
                                <ref role="37wK5l" to="d6hs:~NodeReportItemBase.warn(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="warn" />
                                <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                                <node concept="Xl_RD" id="6d$5VVB5LS2" role="37wK5m">
                                  <property role="Xl_RC" value="INamedConcept inheritors are usually reference targets, change scope from none" />
                                </node>
                                <node concept="2OqwBi" id="3XR0QgVCnI5" role="37wK5m">
                                  <node concept="2GrUjf" id="3XR0QgVCnI4" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="1_LT7K4r5ra" resolve="concept" />
                                  </node>
                                  <node concept="iZEcu" id="3XR0QgVCnI6" role="2OqNvi" />
                                </node>
                                <node concept="37vLTw" id="1dlISwUoGM_" role="37wK5m">
                                  <ref role="3cqZAo" node="1dlISwUoopn" resolve="itemKind2" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="73yVtVlZ3Gp" role="3clFbw">
                        <node concept="2GrUjf" id="6yjtkx6WO8K" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1_LT7K4r5ra" resolve="concept" />
                        </node>
                        <node concept="2qgKlT" id="73yVtVlZsPt" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                          <node concept="35c_gC" id="4UTtJHKl$36" role="37wK5m">
                            <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7U5B1qbQbJi" role="3cqZAp" />
        <node concept="2Gpval" id="7U5B1qbQoI8" role="3cqZAp">
          <node concept="2OqwBi" id="7U5B1qbQoI9" role="2GsD0m">
            <node concept="2SmgA7" id="7U5B1qbQoIa" role="2OqNvi" />
            <node concept="37vLTw" id="2BHiRxgm5Gj" role="2Oq$k0">
              <ref role="3cqZAo" node="1_LT7K4oFZL" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="7U5B1qbQoIc" role="2LFqv$">
            <node concept="3clFbJ" id="7U5B1qbQoId" role="3cqZAp">
              <node concept="3clFbS" id="7U5B1qbQoIe" role="3clFbx">
                <node concept="3zACq4" id="7U5B1qbQoIf" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="7U5B1qbQoIg" role="3clFbw">
                <node concept="37vLTw" id="7U5B1qbQDB0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_LT7K4oG2L" resolve="monitor" />
                </node>
                <node concept="liA8E" id="7U5B1qbQoIi" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7U5B1qbQoIj" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXojTg" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXojTh" role="1PaTwD">
                  <property role="3oM_SC" value="Check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojTi" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojTj" role="1PaTwD">
                  <property role="3oM_SC" value="unresolved" />
                </node>
                <node concept="3oM_SD" id="ATZLwXojTk" role="1PaTwD">
                  <property role="3oM_SC" value="references" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1dlISwUp2q4" role="3cqZAp">
              <node concept="1PaTwC" id="1dlISwUp2q5" role="1aUNEU">
                <node concept="3oM_SD" id="1dlISwUp4Ee" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp4Eg" role="1PaTwD">
                  <property role="3oM_SC" value="How" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp4Nn" role="1PaTwD">
                  <property role="3oM_SC" value="does" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp4Nr" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp4NH" role="1PaTwD">
                  <property role="3oM_SC" value="work" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp4NN" role="1PaTwD">
                  <property role="3oM_SC" value="together" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp4NU" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp5Jn" role="1PaTwD">
                  <property role="3oM_SC" value="UnresolvedReferencesChecker?" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp5Jw" role="1PaTwD">
                  <property role="3oM_SC" value="Both" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp5JE" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp5JP" role="1PaTwD">
                  <property role="3oM_SC" value="specific" />
                </node>
                <node concept="3oM_SD" id="1dlISwUp5K1" role="1PaTwD">
                  <property role="3oM_SC" value="checkers." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1dlISwUpgJf" role="3cqZAp">
              <node concept="1PaTwC" id="1dlISwUpgJg" role="1aUNEU">
                <node concept="3oM_SD" id="1dlISwUpgKT" role="1PaTwD">
                  <property role="3oM_SC" value=" " />
                </node>
                <node concept="3oM_SD" id="1dlISwUpgKV" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpgKY" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpgL2" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjcz" role="1PaTwD">
                  <property role="3oM_SC" value="Seems" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjcL" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjd0" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjd8" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjdp" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjdz" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjdQ" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjea" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjeP" role="1PaTwD">
                  <property role="3oM_SC" value="FindReferencesToNonReferenceable" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjfb" role="1PaTwD">
                  <property role="3oM_SC" value="action" />
                </node>
                <node concept="3oM_SD" id="1dlISwUpjfq" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="7U5B1qbQoIl" role="3cqZAp">
              <node concept="2OqwBi" id="7U5B1qbQoIm" role="2GsD0m">
                <node concept="2z74zc" id="7U5B1qbQoIn" role="2OqNvi" />
                <node concept="2GrUjf" id="7U5B1qbQoIo" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7U5B1qbQoKL" resolve="node" />
                </node>
              </node>
              <node concept="3clFbS" id="7U5B1qbQoIp" role="2LFqv$">
                <node concept="3clFbJ" id="7U5B1qbQoIq" role="3cqZAp">
                  <node concept="2OqwBi" id="7U5B1qbQoIr" role="3clFbw">
                    <node concept="2OqwBi" id="7U5B1qbQoIs" role="2Oq$k0">
                      <node concept="3CFZ6_" id="7U5B1qbQoIt" role="2OqNvi">
                        <node concept="3CFYIw" id="7U5B1qbQoIu" role="3CFYIz">
                          <ref role="3CFYIJ" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
                          <node concept="25Kdxt" id="7U5B1qbQoIv" role="3CFYM5">
                            <node concept="2OqwBi" id="7U5B1qbQoIw" role="25KhWn">
                              <node concept="liA8E" id="3fee2iO_VE5" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                              </node>
                              <node concept="2GrUjf" id="7U5B1qbQoIy" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7U5B1qbQoKK" resolve="ref" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2GrUjf" id="7U5B1qbQoIz" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7U5B1qbQoKL" resolve="node" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="7U5B1qbQoI$" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="7U5B1qbQoI_" role="3clFbx">
                    <node concept="3N13vt" id="7U5B1qbQoIA" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3cpWs8" id="7U5B1qbQTPC" role="3cqZAp">
                  <node concept="3cpWsn" id="7U5B1qbQTPD" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="3Tqbb2" id="7U5B1qbWflh" role="1tU5fm" />
                    <node concept="2YIFZM" id="7U5B1qbQTPE" role="33vP2m">
                      <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                      <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                      <node concept="2GrUjf" id="7U5B1qbQTPF" role="37wK5m">
                        <ref role="2Gs0qQ" node="7U5B1qbQoKK" resolve="ref" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7U5B1qbQoIB" role="3cqZAp">
                  <node concept="3clFbS" id="7U5B1qbQoIC" role="3clFbx">
                    <node concept="3clFbF" id="7dLX2A2MgZ6" role="3cqZAp">
                      <node concept="2OqwBi" id="7dLX2A2MgZ7" role="3clFbG">
                        <node concept="37vLTw" id="7dLX2A2MgZ8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
                        </node>
                        <node concept="TSZUe" id="7dLX2A2MgZ9" role="2OqNvi">
                          <node concept="2ShNRf" id="7dLX2A2MgZa" role="25WWJ7">
                            <node concept="1pGfFk" id="7dLX2A2MkZt" role="2ShVmc">
                              <ref role="37wK5l" to="d6hs:~UnresolvedReferenceReportItem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SReference,java.lang.Runnable)" resolve="UnresolvedReferenceReportItem" />
                              <node concept="2GrUjf" id="7dLX2A2MlZL" role="37wK5m">
                                <ref role="2Gs0qQ" node="7U5B1qbQoKK" resolve="ref" />
                              </node>
                              <node concept="10Nm6u" id="7dLX2A2MobH" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="7iyppy3KmTq" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="7U5B1qbQoIW" role="3clFbw">
                    <node concept="37vLTw" id="7U5B1qbQTPG" role="3uHU7B">
                      <ref role="3cqZAo" node="7U5B1qbQTPD" resolve="target" />
                    </node>
                    <node concept="10Nm6u" id="7U5B1qbQoIZ" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbF" id="7iyppy3KsSV" role="3cqZAp">
                  <node concept="1rXfSq" id="7iyppy3KsSU" role="3clFbG">
                    <ref role="37wK5l" node="7iyppy3KggB" resolve="checkNode" />
                    <node concept="37vLTw" id="7iyppy3KtpH" role="37wK5m">
                      <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
                    </node>
                    <node concept="37vLTw" id="7iyppy3Kyl9" role="37wK5m">
                      <ref role="3cqZAo" node="7U5B1qbQTPD" resolve="target" />
                    </node>
                    <node concept="2GrUjf" id="2UAn0GTvvOX" role="37wK5m">
                      <ref role="2Gs0qQ" node="7U5B1qbQoKL" resolve="node" />
                    </node>
                    <node concept="3clFbT" id="7iyppy3Le$A" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="7iyppy3MOuO" role="37wK5m">
                      <ref role="3cqZAo" node="7U5B1qbQTPD" resolve="target" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7iyppy3MRLg" role="3cqZAp">
                  <node concept="3cpWsn" id="7iyppy3MRLj" role="3cpWs9">
                    <property role="TrG5h" value="curr" />
                    <node concept="37vLTw" id="7iyppy3MTvM" role="33vP2m">
                      <ref role="3cqZAo" node="7U5B1qbQTPD" resolve="target" />
                    </node>
                    <node concept="3Tqbb2" id="7iyppy3MRLe" role="1tU5fm" />
                  </node>
                </node>
                <node concept="2$JKZl" id="7iyppy3LgyK" role="3cqZAp">
                  <node concept="3fqX7Q" id="$FdcMjC35M" role="2$JKZa">
                    <node concept="2OqwBi" id="$FdcMjC48_" role="3fr31v">
                      <node concept="32XrjI" id="$FdcMjC5ru" role="2OqNvi" />
                      <node concept="37vLTw" id="$FdcMjC3uG" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iyppy3MRLj" resolve="curr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7iyppy3LgyO" role="2LFqv$">
                    <node concept="3clFbF" id="7iyppy3LBsP" role="3cqZAp">
                      <node concept="37vLTI" id="7iyppy3LDnP" role="3clFbG">
                        <node concept="37vLTw" id="7iyppy3MVyA" role="37vLTJ">
                          <ref role="3cqZAo" node="7iyppy3MRLj" resolve="curr" />
                        </node>
                        <node concept="2OqwBi" id="7iyppy3LGbu" role="37vLTx">
                          <node concept="37vLTw" id="7iyppy3MWOd" role="2Oq$k0">
                            <ref role="3cqZAo" node="7iyppy3MRLj" resolve="curr" />
                          </node>
                          <node concept="1mfA1w" id="7iyppy3LHn5" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="38kXYFMgd3j" role="3cqZAp">
                      <node concept="3clFbC" id="38kXYFMge3$" role="3clFbw">
                        <node concept="10Nm6u" id="38kXYFMgetH" role="3uHU7w" />
                        <node concept="37vLTw" id="38kXYFMgdsK" role="3uHU7B">
                          <ref role="3cqZAo" node="7iyppy3MRLj" resolve="curr" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="38kXYFMgd3l" role="3clFbx">
                        <node concept="3zACq4" id="38kXYFMgeU9" role="3cqZAp" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="7iyppy3LqoK" role="3cqZAp">
                      <node concept="1rXfSq" id="7iyppy3LqoJ" role="3clFbG">
                        <ref role="37wK5l" node="7iyppy3KggB" resolve="checkNode" />
                        <node concept="37vLTw" id="7iyppy3Lr9I" role="37wK5m">
                          <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
                        </node>
                        <node concept="37vLTw" id="7iyppy3MYgY" role="37wK5m">
                          <ref role="3cqZAo" node="7iyppy3MRLj" resolve="curr" />
                        </node>
                        <node concept="2GrUjf" id="2UAn0GTvtHG" role="37wK5m">
                          <ref role="2Gs0qQ" node="7U5B1qbQoKL" resolve="node" />
                        </node>
                        <node concept="3clFbT" id="7iyppy3L_Jz" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="7iyppy3N1ow" role="37wK5m">
                          <ref role="3cqZAo" node="7U5B1qbQTPD" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2GrKxI" id="7U5B1qbQoKK" role="2Gsz3X">
                <property role="TrG5h" value="ref" />
              </node>
            </node>
          </node>
          <node concept="2GrKxI" id="7U5B1qbQoKL" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
        </node>
        <node concept="3cpWs6" id="1_LT7K4oG2G" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTwJj" role="3cqZAk">
            <ref role="3cqZAo" node="1_LT7K4oFZX" resolve="results" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="1_LT7K4oG2I" role="3clF45">
        <node concept="3uibUv" id="7dLX2A2Nlgn" role="_ZDj9">
          <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
        </node>
      </node>
      <node concept="37vLTG" id="1_LT7K4oG2L" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1_LT7K4pw39" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1_LT7K4oG2P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7iyppy3KfRx" role="jymVt" />
    <node concept="3clFb_" id="7iyppy3KggB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="7iyppy3KgCv" role="3clF46">
        <property role="TrG5h" value="results" />
        <node concept="_YKpA" id="7iyppy3KgFh" role="1tU5fm">
          <node concept="3uibUv" id="7dLX2A2NhuI" role="_ZDj9">
            <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7iyppy3KgGV" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7iyppy3KgNn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2UAn0GTviUB" role="3clF46">
        <property role="TrG5h" value="refNode" />
        <node concept="3Tqbb2" id="2UAn0GTvkhx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7iyppy3Kjha" role="3clF46">
        <property role="TrG5h" value="isAncestor" />
        <node concept="10P_77" id="7iyppy3Kjnz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7iyppy3MKdY" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="7iyppy3MLpY" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7iyppy3KvKh" role="3clF47">
        <node concept="3cpWs8" id="4yQF8hVWu$V" role="3cqZAp">
          <node concept="3cpWsn" id="4yQF8hVWu$W" role="3cpWs9">
            <property role="TrG5h" value="cncpt" />
            <node concept="2OqwBi" id="7dLX2A2MAPH" role="33vP2m">
              <node concept="2JrnkZ" id="7dLX2A2M_XZ" role="2Oq$k0">
                <node concept="37vLTw" id="7dLX2A2M$nM" role="2JrQYb">
                  <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="7dLX2A2MCcE" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="3uibUv" id="7dLX2A2MwmA" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7U5B1qbSLBY" role="3cqZAp">
          <node concept="3fqX7Q" id="4yQF8hVWglP" role="3clFbw">
            <node concept="1eOMI4" id="4yQF8hVWglT" role="3fr31v">
              <node concept="2OqwBi" id="4yQF8hVWho4" role="1eOMHV">
                <node concept="37vLTw" id="4yQF8hVWu_0" role="2Oq$k0">
                  <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                </node>
                <node concept="liA8E" id="4yQF8hVWhOr" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isValid()" resolve="isValid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7U5B1qbSLC0" role="3clFbx">
            <node concept="3clFbF" id="7dLX2A2MqdA" role="3cqZAp">
              <node concept="2OqwBi" id="7dLX2A2MqdB" role="3clFbG">
                <node concept="37vLTw" id="7dLX2A2MqdC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iyppy3KgCv" resolve="results" />
                </node>
                <node concept="TSZUe" id="7dLX2A2MqdD" role="2OqNvi">
                  <node concept="2ShNRf" id="7dLX2A2MqdE" role="25WWJ7">
                    <node concept="1pGfFk" id="7dLX2A2MrGm" role="2ShVmc">
                      <ref role="37wK5l" to="6if8:~ConceptMissingError.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="ConceptMissingError" />
                      <node concept="37vLTw" id="7dLX2A2MsBm" role="37wK5m">
                        <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="7dLX2A2MuaI" role="37wK5m">
                        <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4yQF8hVWirx" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbJ" id="4yQF8hVWjkC" role="3cqZAp">
          <node concept="3clFbS" id="4yQF8hVWjkE" role="3clFbx">
            <node concept="3clFbF" id="7dLX2A2MFyn" role="3cqZAp">
              <node concept="2OqwBi" id="7dLX2A2MFyo" role="3clFbG">
                <node concept="37vLTw" id="7dLX2A2MFyp" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iyppy3KgCv" resolve="results" />
                </node>
                <node concept="TSZUe" id="7dLX2A2MFyq" role="2OqNvi">
                  <node concept="2YIFZM" id="1dlISwUpwIr" role="25WWJ7">
                    <ref role="37wK5l" to="d6hs:~NodeReportItemBase.error(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="error" />
                    <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                    <node concept="3cpWs3" id="6d$5VVB5LJX" role="37wK5m">
                      <node concept="2OqwBi" id="6d$5VVB5LJY" role="3uHU7w">
                        <node concept="37vLTw" id="6d$5VVB5LK0" role="2Oq$k0">
                          <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                        </node>
                        <node concept="2Iv5rx" id="3f8fofNL2tg" role="2OqNvi" />
                      </node>
                      <node concept="Xl_RD" id="6d$5VVB5LK2" role="3uHU7B">
                        <property role="Xl_RC" value="Interface instance found! " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1dlISwUpDGB" role="37wK5m">
                      <node concept="37vLTw" id="1dlISwUpClP" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                      </node>
                      <node concept="iZEcu" id="1dlISwUpGiz" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="dQllQpjE64" role="37wK5m">
                      <node concept="10M0yZ" id="dQllQpjDoI" role="2Oq$k0">
                        <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.STRUCTURE" resolve="STRUCTURE" />
                        <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                      </node>
                      <node concept="liA8E" id="dQllQpjEPX" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String)" resolve="deriveItemKind" />
                        <node concept="Xl_RD" id="6d$5VVB5LK4" role="37wK5m">
                          <property role="Xl_RC" value="interface instance" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4yQF8hVWmoi" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="4yQF8hVWkG2" role="3clFbw">
            <node concept="3uibUv" id="4yQF8hVWl4E" role="2ZW6by">
              <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
            </node>
            <node concept="37vLTw" id="4yQF8hVWu_1" role="2ZW6bz">
              <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4yQF8hVWmGs" role="3cqZAp">
          <node concept="3clFbS" id="4yQF8hVWmGt" role="3clFbx">
            <node concept="3clFbF" id="1dlISwUpSw1" role="3cqZAp">
              <node concept="2OqwBi" id="1dlISwUpSw3" role="3clFbG">
                <node concept="37vLTw" id="1dlISwUpSw4" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iyppy3KgCv" resolve="results" />
                </node>
                <node concept="TSZUe" id="1dlISwUpSw5" role="2OqNvi">
                  <node concept="2YIFZM" id="1dlISwUpSw6" role="25WWJ7">
                    <ref role="37wK5l" to="d6hs:~NodeReportItemBase.error(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="error" />
                    <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                    <node concept="3cpWs3" id="1dlISwUpSw7" role="37wK5m">
                      <node concept="2OqwBi" id="1dlISwUpSw8" role="3uHU7w">
                        <node concept="37vLTw" id="1dlISwUpSwa" role="2Oq$k0">
                          <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                        </node>
                        <node concept="2Iv5rx" id="3f8fofNL5H7" role="2OqNvi" />
                      </node>
                      <node concept="Xl_RD" id="4yQF8hVWmGB" role="3uHU7B">
                        <property role="Xl_RC" value="Abstract concept instance found! " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1dlISwUpSwd" role="37wK5m">
                      <node concept="37vLTw" id="1dlISwUpSwe" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                      </node>
                      <node concept="iZEcu" id="1dlISwUpSwf" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="1dlISwUpSwg" role="37wK5m">
                      <node concept="10M0yZ" id="1dlISwUpSwh" role="2Oq$k0">
                        <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                        <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.STRUCTURE" resolve="STRUCTURE" />
                      </node>
                      <node concept="liA8E" id="1dlISwUpSwi" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String)" resolve="deriveItemKind" />
                        <node concept="Xl_RD" id="4yQF8hVWmGD" role="37wK5m">
                          <property role="Xl_RC" value="abstract concept instance" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4yQF8hVWmGF" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4yQF8hVWo$P" role="3clFbw">
            <node concept="37vLTw" id="4yQF8hVWu_2" role="2Oq$k0">
              <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
            </node>
            <node concept="liA8E" id="4yQF8hVWpfx" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1dlISwUqhoh" role="3cqZAp">
          <node concept="3cpWsn" id="1dlISwUqhoi" role="3cpWs9">
            <property role="TrG5h" value="itemKind" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1dlISwUqfZJ" role="1tU5fm">
              <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
            </node>
            <node concept="2OqwBi" id="1dlISwUqhoj" role="33vP2m">
              <node concept="1rXfSq" id="1dlISwUqhok" role="2Oq$k0">
                <ref role="37wK5l" node="3xfDcbRoSJB" resolve="getCategory" />
              </node>
              <node concept="liA8E" id="1dlISwUqhol" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String)" resolve="deriveItemKind" />
                <node concept="Xl_RD" id="1dlISwUqhom" role="37wK5m">
                  <property role="Xl_RC" value="reference to a non-referenceable node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iyppy3L6_g" role="3cqZAp">
          <node concept="37vLTw" id="7iyppy3L7nk" role="3clFbw">
            <ref role="3cqZAo" node="7iyppy3Kjha" resolve="isAncestor" />
          </node>
          <node concept="3clFbS" id="7iyppy3L6_i" role="3clFbx">
            <node concept="3clFbJ" id="7iyppy3MmAk" role="3cqZAp">
              <node concept="1Wc70l" id="2UAn0GTv7Tj" role="3clFbw">
                <node concept="2OqwBi" id="2UAn0GTuIik" role="3uHU7B">
                  <node concept="37vLTw" id="4yQF8hVWu_3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                  </node>
                  <node concept="2Zo12i" id="4yQF8hVWwed" role="2OqNvi">
                    <node concept="chp4Y" id="4yQF8hVWwhK" role="2Zo12j">
                      <ref role="cht4Q" to="tpck:2UAn0GTuXmY" resolve="ScopeFacade" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2UAn0GTvbly" role="3uHU7w">
                  <node concept="2OqwBi" id="2UAn0GTvW67" role="3fr31v">
                    <node concept="3JPx81" id="2UAn0GTw9P3" role="2OqNvi">
                      <node concept="37vLTw" id="2UAn0GTwdvQ" role="25WWJ7">
                        <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2UAn0GTvKRb" role="2Oq$k0">
                      <node concept="37vLTw" id="2UAn0GTvJPv" role="2Oq$k0">
                        <ref role="3cqZAo" node="2UAn0GTviUB" resolve="refNode" />
                      </node>
                      <node concept="z$bX8" id="2UAn0GTvMH$" role="2OqNvi">
                        <node concept="1xIGOp" id="2UAn0GTvU9h" role="1xVPHs" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7iyppy3MmAl" role="3clFbx">
                <node concept="3clFbF" id="1dlISwUqcty" role="3cqZAp">
                  <node concept="2OqwBi" id="1dlISwUqctz" role="3clFbG">
                    <node concept="37vLTw" id="1dlISwUqct$" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iyppy3KgCv" resolve="results" />
                    </node>
                    <node concept="TSZUe" id="1dlISwUqct_" role="2OqNvi">
                      <node concept="2YIFZM" id="1dlISwUqctA" role="25WWJ7">
                        <ref role="37wK5l" to="d6hs:~NodeReportItemBase.error(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="error" />
                        <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                        <node concept="3cpWs3" id="6d$5VVB5LO6" role="37wK5m">
                          <node concept="2OqwBi" id="6d$5VVB5LO7" role="3uHU7w">
                            <node concept="liA8E" id="4yQF8hVWwNM" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                            </node>
                            <node concept="37vLTw" id="4yQF8hVWwqp" role="2Oq$k0">
                              <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6d$5VVB5LOa" role="3uHU7B">
                            <property role="Xl_RC" value="Reference from outside to a node under ScopeFacade: facade=" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3XR0QgVCnIq" role="37wK5m">
                          <node concept="37vLTw" id="3XR0QgVCnIp" role="2Oq$k0">
                            <ref role="3cqZAo" node="7iyppy3MKdY" resolve="anchor" />
                          </node>
                          <node concept="iZEcu" id="3XR0QgVCnIr" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="1dlISwUqET1" role="37wK5m">
                          <ref role="3cqZAo" node="1dlISwUqhoi" resolve="itemKind" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7iyppy3L8MA" role="9aQIa">
            <node concept="3clFbS" id="7iyppy3L8MB" role="9aQI4">
              <node concept="3cpWs8" id="4yQF8hVWCZa" role="3cqZAp">
                <node concept="3cpWsn" id="4yQF8hVWCZb" role="3cpWs9">
                  <property role="TrG5h" value="cd" />
                  <node concept="3uibUv" id="4yQF8hVWCZ8" role="1tU5fm">
                    <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
                  </node>
                  <node concept="2OqwBi" id="4yQF8hVWCZc" role="33vP2m">
                    <node concept="1eOMI4" id="4yQF8hVWCZd" role="2Oq$k0">
                      <node concept="10QFUN" id="4yQF8hVWCZe" role="1eOMHV">
                        <node concept="37vLTw" id="4yQF8hVWCZf" role="10QFUP">
                          <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                        </node>
                        <node concept="3uibUv" id="4yQF8hVWCZg" role="10QFUM">
                          <ref role="3uigEE" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4yQF8hVWCZh" role="2OqNvi">
                      <ref role="37wK5l" to="vxxo:~SAbstractConceptAdapter.getConceptDescriptor()" resolve="getConceptDescriptor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7U5B1qbVJBG" role="3cqZAp">
                <node concept="3clFbS" id="7U5B1qbVJBI" role="3clFbx">
                  <node concept="3clFbF" id="1dlISwUqNrC" role="3cqZAp">
                    <node concept="2OqwBi" id="1dlISwUqNrD" role="3clFbG">
                      <node concept="37vLTw" id="1dlISwUqNrE" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iyppy3KgCv" resolve="results" />
                      </node>
                      <node concept="TSZUe" id="1dlISwUqNrF" role="2OqNvi">
                        <node concept="2YIFZM" id="1dlISwUqNrG" role="25WWJ7">
                          <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                          <ref role="37wK5l" to="d6hs:~NodeReportItemBase.error(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="error" />
                          <node concept="3cpWs3" id="6d$5VVB5LQc" role="37wK5m">
                            <node concept="2OqwBi" id="6d$5VVB5LQd" role="3uHU7w">
                              <node concept="liA8E" id="4yQF8hVWG1p" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                              </node>
                              <node concept="37vLTw" id="4yQF8hVWFBZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="6d$5VVB5LQg" role="3uHU7B">
                              <property role="Xl_RC" value="Reference to a non-referenceable node found: " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1dlISwUqNrM" role="37wK5m">
                            <node concept="37vLTw" id="1dlISwUqNrN" role="2Oq$k0">
                              <ref role="3cqZAo" node="7iyppy3MKdY" resolve="anchor" />
                            </node>
                            <node concept="iZEcu" id="1dlISwUqNrO" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="1dlISwUqNrP" role="37wK5m">
                            <ref role="3cqZAo" node="1dlISwUqhoi" resolve="itemKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4yQF8hVWFjb" role="3clFbw">
                  <node concept="Rm8GO" id="4yQF8hVWFwG" role="3uHU7w">
                    <ref role="Rm8GQ" to="ze1i:~StaticScope.NONE" resolve="NONE" />
                    <ref role="1Px2BO" to="ze1i:~StaticScope" resolve="StaticScope" />
                  </node>
                  <node concept="2OqwBi" id="4yQF8hVWE3w" role="3uHU7B">
                    <node concept="37vLTw" id="4yQF8hVWDPu" role="2Oq$k0">
                      <ref role="3cqZAo" node="4yQF8hVWCZb" resolve="cd" />
                    </node>
                    <node concept="liA8E" id="4yQF8hVWEqd" role="2OqNvi">
                      <ref role="37wK5l" to="ze1i:~ConceptDescriptor.getStaticScope()" resolve="getStaticScope" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="7U5B1qbVN5H" role="3eNLev">
                  <node concept="1Wc70l" id="7U5B1qbVQSm" role="3eO9$A">
                    <node concept="3fqX7Q" id="7iyppy3KGYx" role="3uHU7w">
                      <node concept="1eOMI4" id="3$myXoLql7O" role="3fr31v">
                        <node concept="3clFbC" id="2UAn0GTvIM4" role="1eOMHV">
                          <node concept="2OqwBi" id="2UAn0GTvIM5" role="3uHU7B">
                            <node concept="37vLTw" id="2UAn0GTvIM6" role="2Oq$k0">
                              <ref role="3cqZAo" node="7iyppy3KgGV" resolve="node" />
                            </node>
                            <node concept="2Rxl7S" id="2UAn0GTvIM7" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="2UAn0GTvIM8" role="3uHU7w">
                            <node concept="37vLTw" id="2UAn0GTvIM9" role="2Oq$k0">
                              <ref role="3cqZAo" node="2UAn0GTviUB" resolve="refNode" />
                            </node>
                            <node concept="2Rxl7S" id="2UAn0GTvIMa" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4yQF8hVWFxu" role="3uHU7B">
                      <node concept="Rm8GO" id="a7HeXk0G3E" role="3uHU7w">
                        <ref role="Rm8GQ" to="ze1i:~StaticScope.ROOT" resolve="ROOT" />
                        <ref role="1Px2BO" to="ze1i:~StaticScope" resolve="StaticScope" />
                      </node>
                      <node concept="2OqwBi" id="4yQF8hVWFxw" role="3uHU7B">
                        <node concept="37vLTw" id="4yQF8hVWFxx" role="2Oq$k0">
                          <ref role="3cqZAo" node="4yQF8hVWCZb" resolve="cd" />
                        </node>
                        <node concept="liA8E" id="4yQF8hVWFxy" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptDescriptor.getStaticScope()" resolve="getStaticScope" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7U5B1qbVN5J" role="3eOfB_">
                    <node concept="3clFbF" id="1dlISwUqXtu" role="3cqZAp">
                      <node concept="2OqwBi" id="1dlISwUqXtv" role="3clFbG">
                        <node concept="37vLTw" id="1dlISwUqXtw" role="2Oq$k0">
                          <ref role="3cqZAo" node="7iyppy3KgCv" resolve="results" />
                        </node>
                        <node concept="TSZUe" id="1dlISwUqXtx" role="2OqNvi">
                          <node concept="2YIFZM" id="1dlISwUqXty" role="25WWJ7">
                            <ref role="1Pybhc" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
                            <ref role="37wK5l" to="d6hs:~NodeReportItemBase.error(java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.item.IssueKindReportItem$ItemKind)" resolve="error" />
                            <node concept="3cpWs3" id="1dlISwUqXtz" role="37wK5m">
                              <node concept="2OqwBi" id="1dlISwUqXt$" role="3uHU7w">
                                <node concept="liA8E" id="1dlISwUqXt_" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                </node>
                                <node concept="37vLTw" id="1dlISwUqXtA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4yQF8hVWu$W" resolve="cncpt" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="6d$5VVB5LSf" role="3uHU7B">
                                <property role="Xl_RC" value="Cross-root reference to a locally referenceable node found: " />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1dlISwUqXtC" role="37wK5m">
                              <node concept="37vLTw" id="1dlISwUqXtD" role="2Oq$k0">
                                <ref role="3cqZAo" node="7iyppy3MKdY" resolve="anchor" />
                              </node>
                              <node concept="iZEcu" id="1dlISwUqXtE" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="1dlISwUqXtF" role="37wK5m">
                              <ref role="3cqZAo" node="1dlISwUqhoi" resolve="itemKind" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7iyppy3MagN" role="3clF45" />
      <node concept="3Tm6S6" id="7iyppy3Mb$Z" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1_LT7K4oFQj" role="jymVt" />
  </node>
  <node concept="sE7Ow" id="1_LT7K4ncS$">
    <property role="TrG5h" value="FindReferencesToNonReferenceable" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Find References to non-referable concepts" />
    <property role="3GE5qa" value="DevKit.Internal" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="1_LT7K4nNuU" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="1_LT7K4nNuV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="HL_aTAepJa" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="HL_aTAepJb" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1_LT7K4ncWb" role="tncku">
      <node concept="3clFbS" id="1_LT7K4ncWc" role="2VODD2">
        <node concept="3cpWs8" id="1_LT7K4nKsP" role="3cqZAp">
          <node concept="3cpWsn" id="1_LT7K4nKsQ" role="3cpWs9">
            <property role="TrG5h" value="modelDescriptors" />
            <node concept="_YKpA" id="1_LT7K4nKsR" role="1tU5fm">
              <node concept="3uibUv" id="1_LT7K4nKsS" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="1_LT7K4nKsT" role="33vP2m">
              <node concept="Tc6Ow" id="1_LT7K4nKsU" role="2ShVmc">
                <node concept="2OqwBi" id="7U5B1qbTc$2" role="I$8f6">
                  <node concept="1eOMI4" id="1_LT7K4nKsX" role="2Oq$k0">
                    <node concept="10QFUN" id="1_LT7K4nKsY" role="1eOMHV">
                      <node concept="2OqwBi" id="7LWtwT1qa3G" role="10QFUP">
                        <node concept="2OqwBi" id="7LWtwT1q9dD" role="2Oq$k0">
                          <node concept="1DTwFV" id="7LWtwT1q9dI" role="2OqNvi">
                            <ref role="2WH_rO" node="HL_aTAepJa" resolve="mpsProject" />
                          </node>
                          <node concept="2WthIp" id="7LWtwT1q9dG" role="2Oq$k0" />
                        </node>
                        <node concept="liA8E" id="7LWtwT1qaXc" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getProjectModels()" resolve="getProjectModels" />
                        </node>
                      </node>
                      <node concept="A3Dl8" id="1_LT7K4nKt2" role="10QFUM">
                        <node concept="3uibUv" id="1_LT7K4nKt3" role="A3Ik2">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="7U5B1qbTdLz" role="2OqNvi">
                    <node concept="1bVj0M" id="7U5B1qbTdL$" role="23t8la">
                      <node concept="3clFbS" id="7U5B1qbTdL_" role="1bW5cS">
                        <node concept="3clFbF" id="7U5B1qbTdLA" role="3cqZAp">
                          <node concept="3fqX7Q" id="7d$WBe34Txn" role="3clFbG">
                            <node concept="2YIFZM" id="7d$WBe34Txp" role="3fr31v">
                              <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isStubModel" />
                              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                              <node concept="37vLTw" id="7d$WBe34Txq" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0Xz0" resolve="md" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xz0" role="1bW2Oz">
                        <property role="TrG5h" value="md" />
                        <node concept="2jxLKc" id="5W7E4fV0Xz1" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="1_LT7K4nKsV" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_LT7K4nKtg" role="3cqZAp" />
        <node concept="3clFbF" id="bYTFyV7aMq" role="3cqZAp">
          <node concept="2OqwBi" id="bYTFyV7gRc" role="3clFbG">
            <node concept="2YIFZM" id="bYTFyV7aMs" role="2Oq$k0">
              <ref role="1Pybhc" to="phxh:3etVqSRK$al" resolve="ModelCheckerTool" />
              <ref role="37wK5l" to="phxh:3etVqSRK$jv" resolve="getInstance" />
              <node concept="2OqwBi" id="bYTFyV7aMt" role="37wK5m">
                <node concept="2WthIp" id="bYTFyV7aMu" role="2Oq$k0" />
                <node concept="1DTwFV" id="bYTFyV7aMv" role="2OqNvi">
                  <ref role="2WH_rO" node="1_LT7K4nNuU" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="bYTFyV7mZK" role="2OqNvi">
              <ref role="37wK5l" to="phxh:3pNk_u$9zR0" resolve="checkModelsAndShowResult" />
              <node concept="37vLTw" id="3GM_nagT$7l" role="37wK5m">
                <ref role="3cqZAo" node="1_LT7K4nKsQ" resolve="modelDescriptors" />
              </node>
              <node concept="2ShNRf" id="1_LT7K4nKtC" role="37wK5m">
                <node concept="1pGfFk" id="1_LT7K4nKtD" role="2ShVmc">
                  <ref role="37wK5l" node="1_LT7K4oFQ5" resolve="ReferenceableConceptsChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qnBvvHEvUn" role="3cqZAp" />
        <node concept="3SKdUt" id="7qnBvvHExYU" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojTl" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojTm" role="1PaTwD">
              <property role="3oM_SC" value="extra" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojTn" role="1PaTwD">
              <property role="3oM_SC" value="debug" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qnBvvHEzsg" role="3cqZAp">
          <node concept="3cpWsn" id="7qnBvvHEzsj" role="3cpWs9">
            <property role="TrG5h" value="total" />
            <node concept="10Oyi0" id="7qnBvvHEzse" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="7qnBvvHEzNP" role="3cqZAp">
          <node concept="3cpWsn" id="7qnBvvHEzNS" role="3cpWs9">
            <property role="TrG5h" value="referenceable" />
            <node concept="10Oyi0" id="7qnBvvHEzNN" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="jo2Cbx_kzJ" role="3cqZAp">
          <node concept="3cpWsn" id="jo2Cbx_kzM" role="3cpWs9">
            <property role="TrG5h" value="used" />
            <node concept="2ShNRf" id="jo2Cbx_lz1" role="33vP2m">
              <node concept="3rGOSV" id="jo2Cbx_oSe" role="2ShVmc">
                <node concept="10Oyi0" id="jo2Cbx_pFQ" role="3rHtpV" />
                <node concept="17QB3L" id="jo2Cbx_pw7" role="3rHrn6" />
              </node>
            </node>
            <node concept="3rvAFt" id="jo2Cbx_kzD" role="1tU5fm">
              <node concept="17QB3L" id="jo2Cbx_lpu" role="3rvQeY" />
              <node concept="10Oyi0" id="jo2Cbx_lwd" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qnBvvHEzYi" role="3cqZAp" />
        <node concept="3clFbF" id="1KUoCipvFVP" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvFVQ" role="3clFbG">
            <node concept="2OqwBi" id="HL_aTAfc3q" role="2Oq$k0">
              <node concept="2OqwBi" id="HL_aTAf32j" role="2Oq$k0">
                <node concept="2WthIp" id="HL_aTAf32m" role="2Oq$k0" />
                <node concept="1DTwFV" id="HL_aTAf32o" role="2OqNvi">
                  <ref role="2WH_rO" node="HL_aTAepJa" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="HL_aTAfdj8" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCipvFVS" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipvFVT" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvFVU" role="1bW5cS">
                  <node concept="3clFbF" id="1KUoCipvFVV" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCipvFVW" role="3clFbG">
                      <node concept="37vLTw" id="1KUoCipvFVX" role="2Oq$k0">
                        <ref role="3cqZAo" node="1_LT7K4nKsQ" resolve="modelDescriptors" />
                      </node>
                      <node concept="2es0OD" id="1KUoCipvFVY" role="2OqNvi">
                        <node concept="1bVj0M" id="1KUoCipvFVZ" role="23t8la">
                          <node concept="3clFbS" id="1KUoCipvFW0" role="1bW5cS">
                            <node concept="1DcWWT" id="1KUoCipvFW1" role="3cqZAp">
                              <node concept="2OqwBi" id="1KUoCipvFW2" role="1DdaDG">
                                <node concept="liA8E" id="1KUoCipvFW3" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                </node>
                                <node concept="37vLTw" id="1KUoCipvFW4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xz2" resolve="it" />
                                </node>
                              </node>
                              <node concept="3cpWsn" id="1KUoCipvFW5" role="1Duv9x">
                                <property role="TrG5h" value="n" />
                                <node concept="3Tqbb2" id="1KUoCipvFW6" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="1KUoCipvFW7" role="2LFqv$">
                                <node concept="1DcWWT" id="1KUoCipvFW8" role="3cqZAp">
                                  <node concept="2OqwBi" id="1KUoCipvFW9" role="1DdaDG">
                                    <node concept="2Rf3mk" id="1KUoCipvFWa" role="2OqNvi">
                                      <node concept="1xIGOp" id="1KUoCipvFWb" role="1xVPHs" />
                                    </node>
                                    <node concept="37vLTw" id="1KUoCipvFWc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KUoCipvFW5" resolve="n" />
                                    </node>
                                  </node>
                                  <node concept="3cpWsn" id="1KUoCipvFWd" role="1Duv9x">
                                    <property role="TrG5h" value="i" />
                                    <node concept="3Tqbb2" id="1KUoCipvFWe" role="1tU5fm" />
                                  </node>
                                  <node concept="3clFbS" id="1KUoCipvFWf" role="2LFqv$">
                                    <node concept="3cpWs8" id="1KUoCipvFWg" role="3cqZAp">
                                      <node concept="3cpWsn" id="1KUoCipvFWh" role="3cpWs9">
                                        <property role="TrG5h" value="ccp" />
                                        <node concept="1PxgMI" id="3OvBgpDE8jw" role="33vP2m">
                                          <property role="1BlNFB" value="true" />
                                          <node concept="2OqwBi" id="5nUWeBpfEdv" role="1m5AlR">
                                            <node concept="2OqwBi" id="HL_aTAfeOa" role="2Oq$k0">
                                              <node concept="37vLTw" id="HL_aTAfe$y" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1KUoCipvFWd" resolve="i" />
                                              </node>
                                              <node concept="2yIwOk" id="5nUWeBpfDZJ" role="2OqNvi" />
                                            </node>
                                            <node concept="FGMqu" id="5nUWeBpfEuL" role="2OqNvi" />
                                          </node>
                                          <node concept="chp4Y" id="714IaVdH07S" role="3oSUPX">
                                            <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                          </node>
                                        </node>
                                        <node concept="3Tqbb2" id="1KUoCipvFWi" role="1tU5fm">
                                          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1KUoCipvFWt" role="3cqZAp">
                                      <node concept="3y3z36" id="1KUoCipvFWu" role="3clFbw">
                                        <node concept="10Nm6u" id="1KUoCipvFWv" role="3uHU7w" />
                                        <node concept="37vLTw" id="1KUoCipvFWw" role="3uHU7B">
                                          <ref role="3cqZAo" node="1KUoCipvFWh" resolve="ccp" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="1KUoCipvFWx" role="3clFbx">
                                        <node concept="3clFbF" id="1KUoCipvFWy" role="3cqZAp">
                                          <node concept="3uNrnE" id="1KUoCipvFWz" role="3clFbG">
                                            <node concept="37vLTw" id="1KUoCipvFW$" role="2$L3a6">
                                              <ref role="3cqZAo" node="7qnBvvHEzsj" resolve="total" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="1KUoCipvFW_" role="3cqZAp">
                                          <node concept="3fqX7Q" id="1KUoCipvFWA" role="3clFbw">
                                            <node concept="2OqwBi" id="1KUoCipvFWB" role="3fr31v">
                                              <node concept="21noJN" id="3Ftr4R9iDfM" role="2OqNvi">
                                                <node concept="21nZrQ" id="3Ftr4R9iDfN" role="21noJM">
                                                  <ref role="21nZrZ" to="tpce:3Ftr4R6BF$$" resolve="none" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="1KUoCipvFWE" role="2Oq$k0">
                                                <node concept="3TrcHB" id="3OvBgpDEaxG" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpce:3Ftr4R6BH8E" resolve="staticScope" />
                                                </node>
                                                <node concept="37vLTw" id="1KUoCipvFWG" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="1KUoCipvFWh" resolve="ccp" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbS" id="1KUoCipvFWH" role="3clFbx">
                                            <node concept="3clFbF" id="1KUoCipvFWI" role="3cqZAp">
                                              <node concept="3uNrnE" id="1KUoCipvFWJ" role="3clFbG">
                                                <node concept="37vLTw" id="1KUoCipvFWK" role="2$L3a6">
                                                  <ref role="3cqZAo" node="7qnBvvHEzNS" resolve="referenceable" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="1KUoCipvFWL" role="3cqZAp">
                                              <node concept="3cpWsn" id="1KUoCipvFWM" role="3cpWs9">
                                                <property role="TrG5h" value="cname" />
                                                <node concept="2OqwBi" id="1KUoCipvFWN" role="33vP2m">
                                                  <node concept="2qgKlT" id="1KUoCipvFWO" role="2OqNvi">
                                                    <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                                  </node>
                                                  <node concept="37vLTw" id="1KUoCipvFWP" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="1KUoCipvFWh" resolve="ccp" />
                                                  </node>
                                                </node>
                                                <node concept="17QB3L" id="1KUoCipvFWQ" role="1tU5fm" />
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="1KUoCipvFWR" role="3cqZAp">
                                              <node concept="2OqwBi" id="1KUoCipvFWS" role="3clFbw">
                                                <node concept="2Nt0df" id="1KUoCipvFWT" role="2OqNvi">
                                                  <node concept="37vLTw" id="1KUoCipvFWU" role="38cxEo">
                                                    <ref role="3cqZAo" node="1KUoCipvFWM" resolve="cname" />
                                                  </node>
                                                </node>
                                                <node concept="37vLTw" id="1KUoCipvFWV" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                                                </node>
                                              </node>
                                              <node concept="3clFbS" id="1KUoCipvFWW" role="3clFbx">
                                                <node concept="3clFbF" id="1KUoCipvFWX" role="3cqZAp">
                                                  <node concept="37vLTI" id="1KUoCipvFWY" role="3clFbG">
                                                    <node concept="3cpWs3" id="1KUoCipvFWZ" role="37vLTx">
                                                      <node concept="3cmrfG" id="1KUoCipvFX0" role="3uHU7w">
                                                        <property role="3cmrfH" value="1" />
                                                      </node>
                                                      <node concept="3EllGN" id="1KUoCipvFX1" role="3uHU7B">
                                                        <node concept="37vLTw" id="1KUoCipvFX2" role="3ElVtu">
                                                          <ref role="3cqZAo" node="1KUoCipvFWM" resolve="cname" />
                                                        </node>
                                                        <node concept="37vLTw" id="1KUoCipvFX3" role="3ElQJh">
                                                          <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3EllGN" id="1KUoCipvFX4" role="37vLTJ">
                                                      <node concept="37vLTw" id="1KUoCipvFX5" role="3ElVtu">
                                                        <ref role="3cqZAo" node="1KUoCipvFWM" resolve="cname" />
                                                      </node>
                                                      <node concept="37vLTw" id="1KUoCipvFX6" role="3ElQJh">
                                                        <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="9aQIb" id="1KUoCipvFX7" role="9aQIa">
                                                <node concept="3clFbS" id="1KUoCipvFX8" role="9aQI4">
                                                  <node concept="3clFbF" id="1KUoCipvFX9" role="3cqZAp">
                                                    <node concept="37vLTI" id="1KUoCipvFXa" role="3clFbG">
                                                      <node concept="3cmrfG" id="1KUoCipvFXb" role="37vLTx">
                                                        <property role="3cmrfH" value="1" />
                                                      </node>
                                                      <node concept="3EllGN" id="1KUoCipvFXc" role="37vLTJ">
                                                        <node concept="37vLTw" id="1KUoCipvFXd" role="3ElVtu">
                                                          <ref role="3cqZAo" node="1KUoCipvFWM" resolve="cname" />
                                                        </node>
                                                        <node concept="37vLTw" id="1KUoCipvFXe" role="3ElQJh">
                                                          <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0Xz2" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0Xz3" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="jo2Cbx_LPI" role="3cqZAp">
          <node concept="3cpWsn" id="jo2Cbx_LPL" role="3cpWs9">
            <property role="TrG5h" value="usedNames" />
            <node concept="2OqwBi" id="jo2Cbx_ULN" role="33vP2m">
              <node concept="3_kTaI" id="jo2CbxA0dS" role="2OqNvi" />
              <node concept="2OqwBi" id="jo2Cbx_P8X" role="2Oq$k0">
                <node concept="3lbrtF" id="jo2Cbx_Rze" role="2OqNvi" />
                <node concept="37vLTw" id="jo2Cbx_Oue" role="2Oq$k0">
                  <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                </node>
              </node>
            </node>
            <node concept="10Q1$e" id="jo2Cbx_MMD" role="1tU5fm">
              <node concept="17QB3L" id="jo2Cbx_LPG" role="10Q1$1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jo2CbxA3k$" role="3cqZAp">
          <node concept="2YIFZM" id="jo2CbxA4g8" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[],java.util.Comparator)" resolve="sort" />
            <node concept="37vLTw" id="jo2CbxA54D" role="37wK5m">
              <ref role="3cqZAo" node="jo2Cbx_LPL" resolve="usedNames" />
            </node>
            <node concept="1bVj0M" id="jo2CbxA73G" role="37wK5m">
              <node concept="37vLTG" id="jo2CbxA7mu" role="1bW2Oz">
                <property role="TrG5h" value="a" />
                <node concept="17QB3L" id="jo2CbxA7Uo" role="1tU5fm" />
              </node>
              <node concept="37vLTG" id="jo2CbxA7Bo" role="1bW2Oz">
                <property role="TrG5h" value="b" />
                <node concept="17QB3L" id="jo2CbxA81F" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="jo2CbxA73I" role="1bW5cS">
                <node concept="3clFbF" id="jo2CbxA8fn" role="3cqZAp">
                  <node concept="2OqwBi" id="jo2CbxAoTA" role="3clFbG">
                    <node concept="liA8E" id="jo2CbxAtF2" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Integer.compareTo(java.lang.Integer)" resolve="compareTo" />
                      <node concept="3EllGN" id="jo2CbxAv0$" role="37wK5m">
                        <node concept="37vLTw" id="jo2CbxAvhm" role="3ElVtu">
                          <ref role="3cqZAo" node="jo2CbxA7Bo" resolve="b" />
                        </node>
                        <node concept="37vLTw" id="jo2CbxAulP" role="3ElQJh">
                          <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                        </node>
                      </node>
                    </node>
                    <node concept="2ShNRf" id="jo2CbxAkTD" role="2Oq$k0">
                      <node concept="1pGfFk" id="jo2CbxAmN_" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~Integer.&lt;init&gt;(int)" resolve="Integer" />
                        <node concept="3EllGN" id="jo2CbxAaT8" role="37wK5m">
                          <node concept="37vLTw" id="jo2CbxAaYb" role="3ElVtu">
                            <ref role="3cqZAo" node="jo2CbxA7mu" resolve="a" />
                          </node>
                          <node concept="37vLTw" id="jo2CbxAae9" role="3ElQJh">
                            <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qnBvvHGbGe" role="3cqZAp">
          <node concept="2OqwBi" id="7qnBvvHGcJ0" role="3clFbG">
            <node concept="liA8E" id="7qnBvvHGgN0" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="7qnBvvHGpcq" role="37wK5m">
                <node concept="3cpWs3" id="7qnBvvHGmtS" role="3uHU7B">
                  <node concept="3cpWs3" id="7qnBvvHGjeZ" role="3uHU7B">
                    <node concept="3cpWs3" id="7qnBvvHGhq5" role="3uHU7B">
                      <node concept="37vLTw" id="7qnBvvHGl_m" role="3uHU7w">
                        <ref role="3cqZAo" node="7qnBvvHEzNS" resolve="referenceable" />
                      </node>
                      <node concept="Xl_RD" id="7qnBvvHGgTS" role="3uHU7B">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7qnBvvHGkHQ" role="3uHU7w">
                      <property role="Xl_RC" value=" out of " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7qnBvvHGo9U" role="3uHU7w">
                    <ref role="3cqZAo" node="7qnBvvHEzsj" resolve="total" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7qnBvvHGqi9" role="3uHU7w">
                  <property role="Xl_RC" value=" nodes are referenceable" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7qnBvvHGbGd" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="jo2CbxAAWg" role="3cqZAp">
          <node concept="37vLTw" id="jo2CbxAE$k" role="1DdaDG">
            <ref role="3cqZAo" node="jo2Cbx_LPL" resolve="usedNames" />
          </node>
          <node concept="3clFbS" id="jo2CbxAAWm" role="2LFqv$">
            <node concept="3clFbF" id="jo2CbxAFFY" role="3cqZAp">
              <node concept="2OqwBi" id="jo2CbxAGer" role="3clFbG">
                <node concept="liA8E" id="jo2CbxAJRX" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="jo2CbxAS39" role="37wK5m">
                    <node concept="37vLTw" id="jo2CbxAW_0" role="3uHU7w">
                      <ref role="3cqZAo" node="jo2CbxAAWn" resolve="s" />
                    </node>
                    <node concept="3cpWs3" id="jo2CbxANju" role="3uHU7B">
                      <node concept="3EllGN" id="jo2CbxAKBi" role="3uHU7B">
                        <node concept="37vLTw" id="jo2CbxAM1D" role="3ElVtu">
                          <ref role="3cqZAo" node="jo2CbxAAWn" resolve="s" />
                        </node>
                        <node concept="37vLTw" id="jo2CbxAJWz" role="3ElQJh">
                          <ref role="3cqZAo" node="jo2Cbx_kzM" resolve="used" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="jo2CbxAPi1" role="3uHU7w">
                        <property role="Xl_RC" value="  " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10M0yZ" id="jo2CbxAFFX" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="jo2CbxAAWn" role="1Duv9x">
            <property role="TrG5h" value="s" />
            <node concept="17QB3L" id="jo2CbxAC_l" role="1tU5fm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7RPG7Rwezzl" role="tmbBb">
      <node concept="3clFbS" id="7RPG7Rwezzm" role="2VODD2">
        <node concept="3SKdUt" id="7RPG7RvQtjE" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojTo" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojTp" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojTq" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojTr" role="1PaTwD">
              <property role="3oM_SC" value="disabled," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojTs" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojTt" role="1PaTwD">
              <property role="3oM_SC" value="MPS-18470" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RPG7RweNBo" role="3cqZAp">
          <node concept="2YIFZM" id="1dlISwUpoWU" role="3clFbG">
            <ref role="37wK5l" to="fyhk:~RuntimeFlags.isInternalMode()" resolve="isInternalMode" />
            <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

