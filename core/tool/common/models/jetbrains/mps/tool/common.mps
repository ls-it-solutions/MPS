<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="r9z2" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom.input(MPS.Core/)" />
    <import index="kart" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:org.xml.sax(JDK/)" />
    <import index="se19" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom.output(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
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
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="KL8Aql8enO">
    <property role="TrG5h" value="Script" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="KL8Aql8enP" role="1B3o_S" />
    <node concept="Wx3nA" id="KL8Aql8enQ" role="jymVt">
      <property role="TrG5h" value="ELEMENT_TODO" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8enR" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8enS" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8enT" role="33vP2m">
        <property role="Xl_RC" value="todo" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8enU" role="jymVt">
      <property role="TrG5h" value="ELEMENT_MODEL" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8enV" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8enW" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8enX" role="33vP2m">
        <property role="Xl_RC" value="model" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8enY" role="jymVt">
      <property role="TrG5h" value="ELEMENT_MODULE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8enZ" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eo0" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eo1" role="33vP2m">
        <property role="Xl_RC" value="module" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eo2" role="jymVt">
      <property role="TrG5h" value="ELEMENT_EXCLUDEDFROMDIFF" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8eo3" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eo4" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eo5" role="33vP2m">
        <property role="Xl_RC" value="excludedFromDiff" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eo6" role="jymVt">
      <property role="TrG5h" value="ELEMENT_PROJECT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8eo7" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eo8" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eo9" role="33vP2m">
        <property role="Xl_RC" value="project" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eoa" role="jymVt">
      <property role="TrG5h" value="ELEMENT_PARAMETER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8eob" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eoc" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eod" role="33vP2m">
        <property role="Xl_RC" value="parameter" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eoi" role="jymVt">
      <property role="TrG5h" value="PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8eoj" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eok" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eol" role="33vP2m">
        <property role="Xl_RC" value="path" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eom" role="jymVt">
      <property role="TrG5h" value="VALUE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8eon" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eoo" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eop" role="33vP2m">
        <property role="Xl_RC" value="value" />
      </node>
    </node>
    <node concept="Wx3nA" id="3GGnItM8NcH" role="jymVt">
      <property role="TrG5h" value="ELEMENT_CHUNK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3GGnItM8NcI" role="1B3o_S" />
      <node concept="17QB3L" id="3GGnItM8NcO" role="1tU5fm" />
      <node concept="Xl_RD" id="3GGnItM8NcQ" role="33vP2m">
        <property role="Xl_RC" value="chunk" />
      </node>
    </node>
    <node concept="Wx3nA" id="3GGnItM8NcR" role="jymVt">
      <property role="TrG5h" value="ATTRIBUTE_BOOTSTRAP" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3GGnItM8NcS" role="1B3o_S" />
      <node concept="17QB3L" id="3GGnItM8NcY" role="1tU5fm" />
      <node concept="Xl_RD" id="3GGnItM8Nd0" role="33vP2m">
        <property role="Xl_RC" value="bootstrap" />
      </node>
    </node>
    <node concept="2tJIrI" id="6aGZllYRuru" role="jymVt" />
    <node concept="312cEg" id="6aGZllYSCBv" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myStartupData" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6aGZllYSoKE" role="1B3o_S" />
      <node concept="3uibUv" id="1288c6EcS$f" role="1tU5fm">
        <ref role="3uigEE" node="KL8Aql8eEZ" resolve="ScriptData" />
      </node>
      <node concept="2ShNRf" id="1288c6EcUu2" role="33vP2m">
        <node concept="1pGfFk" id="1288c6EcURv" role="2ShVmc">
          <ref role="37wK5l" node="KL8Aql8eGB" resolve="ScriptData" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eou" role="jymVt">
      <property role="TrG5h" value="myModels" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="KL8Aql8eov" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="KL8Aql8eow" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="KL8Aql8eox" role="1B3o_S" />
      <node concept="2ShNRf" id="KL8Aql8eoy" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8eoz" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="KL8Aql8eo$" role="1pMfVU">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eo_" role="jymVt">
      <property role="TrG5h" value="myModules" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="KL8Aql8eoA" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="KL8Aql8eoB" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="KL8Aql8eoC" role="1B3o_S" />
      <node concept="2ShNRf" id="KL8Aql8eoD" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8eoE" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="KL8Aql8eoF" role="1pMfVU">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eoG" role="jymVt">
      <property role="TrG5h" value="myExcludedFromDiff" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8eoH" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eoI" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="KL8Aql8eoJ" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="2ShNRf" id="KL8Aql8eoK" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8eoL" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="KL8Aql8eoM" role="1pMfVU">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eoN" role="jymVt">
      <property role="TrG5h" value="myMPSProjects" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6tzA4yIjc9L" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6tzA4yIjh_$" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="KL8Aql8eoS" role="1B3o_S" />
      <node concept="2ShNRf" id="KL8Aql8eoT" role="33vP2m">
        <node concept="1pGfFk" id="6tzA4yIkehH" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3cmrfG" id="6tzA4yIkjKH" role="37wK5m">
            <property role="3cmrfH" value="3" />
          </node>
          <node concept="3uibUv" id="6tzA4yIkzA9" role="1pMfVU">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="6tzA4yIiuc3" role="lGtFl">
        <node concept="TZ5HA" id="6tzA4yIiuc4" role="TZ5H$">
          <node concept="1dT_AC" id="6tzA4yIiuc5" role="1dT_Ay">
            <property role="1dT_AB" value="XXX why File, can't I use some macro to specify project location?" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8epC" role="jymVt">
      <property role="TrG5h" value="myParameters" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="KL8Aql8epD" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8epE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="KL8Aql8epF" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="KL8Aql8epG" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8epH" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="17QB3L" id="KL8Aql8epI" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7SWBkX45D4w" role="jymVt">
      <property role="TrG5h" value="myChunks" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7SWBkX45D4x" role="1B3o_S" />
      <node concept="2ShNRf" id="58KrZDESoCt" role="33vP2m">
        <node concept="1pGfFk" id="3GGnItM8Na2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
          <node concept="3uibUv" id="3ag$5R8RUJt" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="17QB3L" id="3ag$5R8RUJu" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="3GGnItM8NaU" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3GGnItM8L86" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="3ag$5R8RUJp" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="3ag$5R8RUJr" role="11_B2D" />
        </node>
        <node concept="3uibUv" id="3GGnItM8LbB" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aGZllYRZeU" role="jymVt" />
    <node concept="3clFbW" id="KL8Aql8epN" role="jymVt">
      <node concept="3Tm1VV" id="KL8Aql8epO" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8epP" role="3clF45" />
      <node concept="3clFbS" id="KL8Aql8epQ" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6aGZllYSILI" role="jymVt">
      <property role="TrG5h" value="getRepoDescriptor" />
      <node concept="3uibUv" id="6aGZllYSILJ" role="3clF45">
        <ref role="3uigEE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
      </node>
      <node concept="3Tm1VV" id="6aGZllYSILK" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYSILL" role="3clF47">
        <node concept="3clFbF" id="6aGZllYSILM" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EfeOf" role="3clFbG">
            <node concept="37vLTw" id="6aGZllYSILH" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6EfeYk" role="2OqNvi">
              <ref role="37wK5l" node="6aGZllYU5b8" resolve="getRepo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6aGZllYSILO" role="jymVt">
      <property role="TrG5h" value="setRepoDescriptor" />
      <node concept="3cqZAl" id="6aGZllYSILP" role="3clF45" />
      <node concept="3Tm1VV" id="6aGZllYSILQ" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYSILR" role="3clF47">
        <node concept="3clFbF" id="1288c6Eff9U" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6Effdf" role="3clFbG">
            <node concept="37vLTw" id="1288c6Eff9S" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6Effpr" role="2OqNvi">
              <ref role="37wK5l" node="6aGZllYU5be" resolve="setRepo" />
              <node concept="37vLTw" id="1288c6EffsU" role="37wK5m">
                <ref role="3cqZAo" node="6aGZllYSILV" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6aGZllYSILV" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="6aGZllYSILW" role="1tU5fm">
          <ref role="3uigEE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yIgLUN" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eqX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addProjectFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eqY" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8eqZ" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8er0" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8er1" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8er2" role="3clF47">
        <node concept="1gVbGN" id="KL8Aql8er3" role="3cqZAp">
          <node concept="1Wc70l" id="KL8Aql8er4" role="1gVkn0">
            <node concept="2OqwBi" id="KL8Aql8er5" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxghit5" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8er0" resolve="projectFile" />
              </node>
              <node concept="liA8E" id="KL8Aql8er7" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
            <node concept="2OqwBi" id="KL8Aql8er8" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxghfqj" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8er0" resolve="projectFile" />
              </node>
              <node concept="liA8E" id="KL8Aql8era" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.isFile():boolean" resolve="isFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="KL8Aql8erb" role="3cqZAp">
          <node concept="3fqX7Q" id="KL8Aql8erc" role="3clFbw">
            <node concept="2OqwBi" id="KL8Aql8erd" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxeuiU7" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8eoN" resolve="myMPSProjects" />
              </node>
              <node concept="liA8E" id="KL8Aql8erf" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                <node concept="37vLTw" id="2BHiRxgm8OM" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8er0" resolve="projectFile" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="KL8Aql8erh" role="3clFbx">
            <node concept="3clFbF" id="KL8Aql8eri" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8erj" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuO47" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eoN" resolve="myMPSProjects" />
                </node>
                <node concept="liA8E" id="KL8Aql8erl" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="37vLTw" id="2BHiRxgm69S" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8er0" resolve="projectFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5reM9ACXLHD" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eqg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addModelFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eqh" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8eqi" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8eqj" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8eqk" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8eql" role="3clF47">
        <node concept="1gVbGN" id="KL8Aql8eqm" role="3cqZAp">
          <node concept="1Wc70l" id="KL8Aql8eqn" role="1gVkn0">
            <node concept="2OqwBi" id="KL8Aql8eqo" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm7VZ" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8eqj" resolve="file" />
              </node>
              <node concept="liA8E" id="KL8Aql8eqq" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
            <node concept="3fqX7Q" id="KL8Aql8eqr" role="3uHU7w">
              <node concept="2OqwBi" id="KL8Aql8eqs" role="3fr31v">
                <node concept="37vLTw" id="2BHiRxgm7yn" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eqj" resolve="file" />
                </node>
                <node concept="liA8E" id="KL8Aql8equ" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.isDirectory():boolean" resolve="isDirectory" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="KL8Aql8eqv" role="1gVpfI">
            <node concept="Xl_RD" id="KL8Aql8eqw" role="3uHU7B">
              <property role="Xl_RC" value="bad file: " />
            </node>
            <node concept="2OqwBi" id="KL8Aql8eqx" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxglgrm" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8eqj" resolve="file" />
              </node>
              <node concept="liA8E" id="KL8Aql8eqz" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eq$" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eq_" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuJRA" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eou" resolve="myModels" />
            </node>
            <node concept="liA8E" id="KL8Aql8eqB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="2BHiRxgm8t4" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eqj" resolve="file" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8esa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModels" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8esb" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8esc" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="KL8Aql8esd" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8ese" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8esf" role="3cqZAp">
          <node concept="2YIFZM" id="KL8Aql8esg" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <node concept="37vLTw" id="2BHiRxeuJ9Y" role="37wK5m">
              <ref role="3cqZAo" node="KL8Aql8eou" resolve="myModels" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8esi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateModels" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8esj" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8esk" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8esl" role="3clF46">
        <property role="TrG5h" value="models" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8esm" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="KL8Aql8esn" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8eso" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8esp" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8esq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunHz" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eou" resolve="myModels" />
            </node>
            <node concept="liA8E" id="KL8Aql8ess" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="2BHiRxgmyup" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8esl" resolve="models" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EfV3C" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eqD" role="jymVt">
      <property role="TrG5h" value="excludeFileFromDiff" />
      <node concept="37vLTG" id="KL8Aql8eqE" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="KL8Aql8eqF" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3cqZAl" id="KL8Aql8eqG" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eqH" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eqI" role="3clF47">
        <node concept="1gVbGN" id="KL8Aql8eqJ" role="3cqZAp">
          <node concept="1Wc70l" id="KL8Aql8eqK" role="1gVkn0">
            <node concept="2OqwBi" id="KL8Aql8eqL" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgkZ0E" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8eqE" resolve="file" />
              </node>
              <node concept="liA8E" id="KL8Aql8eqN" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
            <node concept="3fqX7Q" id="KL8Aql8eqO" role="3uHU7w">
              <node concept="2OqwBi" id="KL8Aql8eqP" role="3fr31v">
                <node concept="37vLTw" id="2BHiRxgm_hU" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eqE" resolve="file" />
                </node>
                <node concept="liA8E" id="KL8Aql8eqR" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.isDirectory():boolean" resolve="isDirectory" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eqS" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eqT" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunkB" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eoG" resolve="myExcludedFromDiff" />
            </node>
            <node concept="liA8E" id="KL8Aql8eqV" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="2BHiRxglGCZ" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eqE" resolve="file" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8esu" role="jymVt">
      <property role="TrG5h" value="getExcludedFromDiffFiles" />
      <node concept="3uibUv" id="KL8Aql8esv" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="KL8Aql8esw" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm1VV" id="KL8Aql8esx" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8esy" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8esz" role="3cqZAp">
          <node concept="2YIFZM" id="KL8Aql8es$" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <node concept="37vLTw" id="2BHiRxeujRb" role="37wK5m">
              <ref role="3cqZAo" node="KL8Aql8eoG" resolve="myExcludedFromDiff" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8esA" role="jymVt">
      <property role="TrG5h" value="updateExcludedFromDiffFiles" />
      <node concept="37vLTG" id="KL8Aql8esB" role="3clF46">
        <property role="TrG5h" value="excluded" />
        <node concept="3uibUv" id="KL8Aql8esC" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="KL8Aql8esD" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="KL8Aql8esE" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8esF" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8esG" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8esH" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8esI" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeun5a" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eoG" resolve="myExcludedFromDiff" />
            </node>
            <node concept="liA8E" id="KL8Aql8esK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="2BHiRxgmuaF" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8esB" resolve="excluded" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EfOKw" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8epR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addModuleFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8epS" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8epT" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8epU" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8epV" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8epW" role="3clF47">
        <node concept="1gVbGN" id="KL8Aql8epX" role="3cqZAp">
          <node concept="1Wc70l" id="KL8Aql8epY" role="1gVkn0">
            <node concept="2OqwBi" id="KL8Aql8epZ" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxglld8" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8epU" resolve="file" />
              </node>
              <node concept="liA8E" id="KL8Aql8eq1" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
            <node concept="3fqX7Q" id="KL8Aql8eq2" role="3uHU7w">
              <node concept="2OqwBi" id="KL8Aql8eq3" role="3fr31v">
                <node concept="37vLTw" id="2BHiRxgmtxN" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8epU" resolve="file" />
                </node>
                <node concept="liA8E" id="KL8Aql8eq5" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.isDirectory():boolean" resolve="isDirectory" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="KL8Aql8eq6" role="1gVpfI">
            <node concept="Xl_RD" id="KL8Aql8eq7" role="3uHU7B">
              <property role="Xl_RC" value="bad file: " />
            </node>
            <node concept="2OqwBi" id="KL8Aql8eq8" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxgm9zT" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8epU" resolve="file" />
              </node>
              <node concept="liA8E" id="KL8Aql8eqa" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eqb" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eqc" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeus2q" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eo_" resolve="myModules" />
            </node>
            <node concept="liA8E" id="KL8Aql8eqe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="2BHiRxgheHh" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8epU" resolve="file" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8esM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModules" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8esN" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8esO" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="KL8Aql8esP" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8esQ" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8esR" role="3cqZAp">
          <node concept="2YIFZM" id="KL8Aql8esS" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <node concept="37vLTw" id="2BHiRxeuqMk" role="37wK5m">
              <ref role="3cqZAo" node="KL8Aql8eo_" resolve="myModules" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8esU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateModules" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8esV" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8esW" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8esX" role="3clF46">
        <property role="TrG5h" value="modules" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8esY" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="KL8Aql8esZ" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8et0" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8et1" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8et2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyVn" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eo_" resolve="myModules" />
            </node>
            <node concept="liA8E" id="KL8Aql8et4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="2BHiRxgm_hd" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8esX" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EfID5" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8et6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMPSProjectFiles" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8et7" role="1B3o_S" />
      <node concept="3uibUv" id="6tzA4yIiWYQ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6tzA4yIj1Ql" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8etc" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8etd" role="3cqZAp">
          <node concept="2YIFZM" id="6tzA4yIj1SS" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="6tzA4yIj1ST" role="37wK5m">
              <ref role="3cqZAo" node="KL8Aql8eoN" resolve="myMPSProjects" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8etg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateMPSProjectFiles" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eth" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8eti" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8etj" role="3clF46">
        <property role="TrG5h" value="mpsProjects" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8etk" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="KL8Aql8etl" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8eto" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8etp" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8etq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTxY" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eoN" resolve="myMPSProjects" />
            </node>
            <node concept="liA8E" id="KL8Aql8ets" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="2BHiRxgmKrG" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8etj" resolve="mpsProjects" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EfCxF" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8etu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFailOnError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8etv" role="1B3o_S" />
      <node concept="10P_77" id="KL8Aql8etw" role="3clF45" />
      <node concept="3clFbS" id="KL8Aql8etx" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8ety" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EeHQD" role="3cqZAk">
            <node concept="37vLTw" id="1288c6EeBUB" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6EeNLB" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eMf" resolve="getFailOnError" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8et$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateFailOnError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8et_" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8etA" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8etB" role="3clF46">
        <property role="TrG5h" value="showError" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="KL8Aql8etC" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="KL8Aql8etD" role="3clF47">
        <node concept="3clFbF" id="1288c6EeTJy" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EeTT5" role="3clFbG">
            <node concept="37vLTw" id="1288c6EeTJt" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6EeU51" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eM5" resolve="setFailOnError" />
              <node concept="37vLTw" id="1288c6EeU9a" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8etB" resolve="showError" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EfynV" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8etI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperties" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8etJ" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8etK" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8etL" role="11_B2D" />
        <node concept="17QB3L" id="KL8Aql8etM" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="KL8Aql8etN" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8etO" role="3cqZAp">
          <node concept="2YIFZM" id="KL8Aql8etP" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map):java.util.Map" resolve="unmodifiableMap" />
            <node concept="2OqwBi" id="1288c6Ef0aS" role="37wK5m">
              <node concept="37vLTw" id="1288c6EeUfi" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6Ef5uk" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eN1" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8etR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateProperties" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8etS" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8etT" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8etU" role="3clF46">
        <property role="TrG5h" value="properties" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8etV" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="KL8Aql8etW" role="11_B2D" />
          <node concept="17QB3L" id="KL8Aql8etX" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8etY" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8etZ" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eu0" role="3clFbG">
            <node concept="liA8E" id="KL8Aql8eu2" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.putAll(java.util.Map):void" resolve="putAll" />
              <node concept="37vLTw" id="2BHiRxgm8wh" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8etU" resolve="properties" />
              </node>
            </node>
            <node concept="2OqwBi" id="1288c6EfeeG" role="2Oq$k0">
              <node concept="37vLTw" id="1288c6EfeeH" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6EfeeI" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eN1" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eBe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="putProperty" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eBf" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8eBg" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8eBh" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8eBi" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="KL8Aql8eBj" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8eBk" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="KL8Aql8eBl" role="3clF47">
        <node concept="3clFbF" id="1288c6Egdz9" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EgdHk" role="3clFbG">
            <node concept="37vLTw" id="1288c6Egdz7" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6EgdRx" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eN9" resolve="addProperty" />
              <node concept="37vLTw" id="1288c6EgdV0" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eBh" resolve="name" />
              </node>
              <node concept="37vLTw" id="1288c6Ege1M" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eBj" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eBs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperty" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eBt" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eBu" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8eBv" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8eBw" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="KL8Aql8eBx" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8eBy" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EgFCa" role="3cqZAk">
            <node concept="2OqwBi" id="1288c6EgsXJ" role="2Oq$k0">
              <node concept="37vLTw" id="1288c6Egmu2" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6EgyMc" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eN1" resolve="getProperties" />
              </node>
            </node>
            <node concept="liA8E" id="1288c6EgLco" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="1288c6EgQZP" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eBv" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EflLO" role="jymVt" />
    <node concept="2tJIrI" id="1288c6Efm7x" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eu4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addLibrary" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eu5" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8eu6" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8eu7" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8eu8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="KL8Aql8eu9" role="3clF46">
        <property role="TrG5h" value="dir" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8eua" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8eud" role="3clF47">
        <node concept="3clFbF" id="1288c6Ee2Ae" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6Ee2Ag" role="3clFbG">
            <node concept="37vLTw" id="1288c6Ee2Ah" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6Ee2Ai" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eOd" resolve="addLibrary" />
              <node concept="37vLTw" id="1288c6Ee315" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eu7" resolve="name" />
              </node>
              <node concept="37vLTw" id="1288c6Ee32U" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eu9" resolve="dir" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eus" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLibraries" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eut" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8euu" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8euv" role="11_B2D" />
        <node concept="3uibUv" id="KL8Aql8euw" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8eux" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8euy" role="3cqZAp">
          <node concept="2YIFZM" id="KL8Aql8euz" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map):java.util.Map" resolve="unmodifiableMap" />
            <node concept="2OqwBi" id="1288c6Ed8Hz" role="37wK5m">
              <node concept="37vLTw" id="1288c6Ed3ql" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6Edflk" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eO5" resolve="getLibraries" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eu_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateLibraries" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8euA" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8euB" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8euC" role="3clF46">
        <property role="TrG5h" value="libraries" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8euD" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="KL8Aql8euE" role="11_B2D" />
          <node concept="3uibUv" id="KL8Aql8euF" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8euG" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8euH" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8euI" role="3clFbG">
            <node concept="liA8E" id="KL8Aql8euK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.putAll(java.util.Map):void" resolve="putAll" />
              <node concept="37vLTw" id="2BHiRxgll7A" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8euC" resolve="libraries" />
              </node>
            </node>
            <node concept="2OqwBi" id="1288c6Ee61M" role="2Oq$k0">
              <node concept="37vLTw" id="1288c6Ee61N" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6Ee61O" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eO5" resolve="getLibraries" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yIgl17" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8ev6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8ev7" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8ev8" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8ev9" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8eva" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="KL8Aql8evb" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8evc" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="KL8Aql8evd" role="3clF47">
        <node concept="3clFbF" id="1288c6Ee6HI" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6Ee6HK" role="3clFbG">
            <node concept="37vLTw" id="1288c6Ee6HL" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6Ee6HM" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eNF" resolve="addMacro" />
              <node concept="37vLTw" id="1288c6Ee73C" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8ev9" resolve="name" />
              </node>
              <node concept="37vLTw" id="1288c6Ee7tg" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8evb" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8evk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8evl" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8evm" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8evn" role="11_B2D" />
        <node concept="17QB3L" id="KL8Aql8evo" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="KL8Aql8evp" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8evq" role="3cqZAp">
          <node concept="2YIFZM" id="KL8Aql8evr" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map):java.util.Map" resolve="unmodifiableMap" />
            <node concept="2OqwBi" id="1288c6Ee7EG" role="37wK5m">
              <node concept="37vLTw" id="1288c6Ee7EH" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6Ee7EI" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eNz" resolve="getMacros" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8evt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8evu" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8evv" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8evw" role="3clF46">
        <property role="TrG5h" value="macro" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8evx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="KL8Aql8evy" role="11_B2D" />
          <node concept="17QB3L" id="KL8Aql8evz" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8ev$" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8ev_" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8evA" role="3clFbG">
            <node concept="liA8E" id="KL8Aql8evC" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.putAll(java.util.Map):void" resolve="putAll" />
              <node concept="37vLTw" id="2BHiRxgkXA3" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8evw" resolve="macro" />
              </node>
            </node>
            <node concept="2OqwBi" id="1288c6Eemod" role="2Oq$k0">
              <node concept="37vLTw" id="1288c6Eemoe" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="1288c6Eemof" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eNz" resolve="getMacros" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yIgqS4" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8evE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateLogLevel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8evF" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8evG" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8evH" role="3clF46">
        <property role="TrG5h" value="level" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8evI" role="1tU5fm">
          <ref role="3uigEE" to="q7tw:~Level" resolve="Level" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8evJ" role="3clF47">
        <node concept="3clFbF" id="1288c6EemXH" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6Een8c" role="3clFbG">
            <node concept="37vLTw" id="1288c6EemXC" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6EenhD" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eMl" resolve="setLogLevel" />
              <node concept="37vLTw" id="1288c6EenlM" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8evH" resolve="level" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8evO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLogLevel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8evP" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8evQ" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8evR" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EesGn" role="3cqZAk">
            <node concept="37vLTw" id="1288c6EenrP" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6EexYZ" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eMv" resolve="getLogLevel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="KL8Aql8evT" role="3clF45">
        <ref role="3uigEE" to="q7tw:~Level" resolve="Level" />
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8evU" role="jymVt">
      <property role="TrG5h" value="addParameter" />
      <node concept="3cqZAl" id="KL8Aql8evV" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8evW" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8evX" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8evY" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8evZ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuu22" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8epC" resolve="myParameters" />
            </node>
            <node concept="liA8E" id="KL8Aql8ew1" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="2BHiRxgm8uu" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8ew3" resolve="parameter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8ew3" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="17QB3L" id="KL8Aql8ew4" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8ew5" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3uibUv" id="KL8Aql8ew6" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="KL8Aql8ew7" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="KL8Aql8ew8" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8ew9" role="3clF47">
        <node concept="3cpWs6" id="KL8Aql8ewa" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuGA2" role="3cqZAk">
            <ref role="3cqZAo" node="KL8Aql8epC" resolve="myParameters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8ewc" role="jymVt">
      <property role="TrG5h" value="updateParameters" />
      <node concept="3cqZAl" id="KL8Aql8ewd" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8ewe" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8ewf" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8ewg" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8ewh" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuNW6" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8epC" resolve="myParameters" />
            </node>
            <node concept="liA8E" id="KL8Aql8ewj" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="2BHiRxgmFl4" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8ewl" resolve="parameters" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8ewl" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="3uibUv" id="KL8Aql8ewm" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="KL8Aql8ewn" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yIn2La" role="jymVt" />
    <node concept="3clFb_" id="58KrZDES$s_" role="jymVt">
      <property role="TrG5h" value="addChunk" />
      <node concept="3cqZAl" id="58KrZDES$sA" role="3clF45" />
      <node concept="3Tm1VV" id="58KrZDES$sB" role="1B3o_S" />
      <node concept="3clFbS" id="58KrZDES$sC" role="3clF47">
        <node concept="3clFbF" id="3GGnItM8Nbt" role="3cqZAp">
          <node concept="2OqwBi" id="3GGnItM8NbF" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeu_Bw" role="2Oq$k0">
              <ref role="3cqZAo" node="7SWBkX45D4w" resolve="myChunks" />
            </node>
            <node concept="liA8E" id="3GGnItM8NbL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2BHiRxgm$QX" role="37wK5m">
                <ref role="3cqZAo" node="58KrZDES$sH" resolve="modules" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmzqp" role="37wK5m">
                <ref role="3cqZAo" node="58KrZDES$sR" resolve="isBootstrap" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58KrZDES$sH" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="3ag$5R8RTAk" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="3ag$5R8RTAm" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="58KrZDES$sR" role="3clF46">
        <property role="TrG5h" value="isBootstrap" />
        <node concept="10P_77" id="58KrZDES$sX" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3GGnItM8KQd" role="jymVt">
      <property role="TrG5h" value="getChunks" />
      <node concept="3Tm1VV" id="3GGnItM8KQf" role="1B3o_S" />
      <node concept="3clFbS" id="3GGnItM8KQg" role="3clF47">
        <node concept="3clFbF" id="3GGnItM8KQN" role="3cqZAp">
          <node concept="2YIFZM" id="3GGnItM8NbP" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map):java.util.Map" resolve="unmodifiableMap" />
            <node concept="37vLTw" id="2BHiRxeuNlU" role="37wK5m">
              <ref role="3cqZAo" node="7SWBkX45D4w" resolve="myChunks" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3GGnItM8NbR" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="3ag$5R8RUJw" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="3ag$5R8RUJx" role="11_B2D" />
        </node>
        <node concept="3uibUv" id="3GGnItM8Nc3" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3GGnItM8Nc4" role="jymVt">
      <property role="TrG5h" value="updateChunks" />
      <node concept="37vLTG" id="3GGnItM8Ncc" role="3clF46">
        <property role="TrG5h" value="chunks" />
        <node concept="3uibUv" id="3GGnItM8Nci" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="3ag$5R8RUJz" role="11_B2D">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="17QB3L" id="3ag$5R8RUJ$" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="3GGnItM8Ncm" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3GGnItM8Nc5" role="3clF45" />
      <node concept="3Tm1VV" id="3GGnItM8Nc6" role="1B3o_S" />
      <node concept="3clFbS" id="3GGnItM8Nc7" role="3clF47">
        <node concept="3clFbF" id="3GGnItM8Ncn" role="3cqZAp">
          <node concept="2OqwBi" id="3GGnItM8Nc_" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuRus" role="2Oq$k0">
              <ref role="3cqZAo" node="7SWBkX45D4w" resolve="myChunks" />
            </node>
            <node concept="liA8E" id="3GGnItM8NcF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.putAll(java.util.Map):void" resolve="putAll" />
              <node concept="37vLTw" id="2BHiRxgm6_u" role="37wK5m">
                <ref role="3cqZAo" node="3GGnItM8Ncc" resolve="chunks" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yImXDv" role="jymVt" />
    <node concept="3clFb_" id="3GGnItM95YQ" role="jymVt">
      <property role="TrG5h" value="addLibraryJar" />
      <node concept="3cqZAl" id="3GGnItM95YR" role="3clF45" />
      <node concept="3Tm1VV" id="3GGnItM95YS" role="1B3o_S" />
      <node concept="3clFbS" id="3GGnItM95YT" role="3clF47">
        <node concept="3clFbF" id="3GGnItM95Z8" role="3cqZAp">
          <node concept="2OqwBi" id="3GGnItM95Zm" role="3clFbG">
            <node concept="37vLTw" id="6tzA4yIoCk$" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="3GGnItM95Zs" role="2OqNvi">
              <ref role="37wK5l" node="6tzA4yInV2o" resolve="addLibraryJar" />
              <node concept="37vLTw" id="2BHiRxgm6VV" role="37wK5m">
                <ref role="3cqZAo" node="3GGnItM95Z0" resolve="libraryJar" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3GGnItM95Z0" role="3clF46">
        <property role="TrG5h" value="libraryJar" />
        <node concept="17QB3L" id="3GGnItM95Z1" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3GGnItM95Zu" role="jymVt">
      <property role="TrG5h" value="getLibraryJars" />
      <node concept="3Tm1VV" id="3GGnItM95Zw" role="1B3o_S" />
      <node concept="3clFbS" id="3GGnItM95Zx" role="3clF47">
        <node concept="3clFbF" id="3GGnItM95ZR" role="3cqZAp">
          <node concept="2YIFZM" id="3GGnItM95ZZ" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <node concept="2OqwBi" id="6tzA4yIoDck" role="37wK5m">
              <node concept="37vLTw" id="6tzA4yIoD1a" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="6tzA4yIoDjt" role="2OqNvi">
                <ref role="37wK5l" node="6tzA4yInV2z" resolve="getLibraryJars" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3GGnItM95ZI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="3GGnItM95ZQ" role="11_B2D" />
      </node>
    </node>
    <node concept="3clFb_" id="5reM9ACYuH5" role="jymVt">
      <property role="TrG5h" value="updateLibraryJars" />
      <node concept="3cqZAl" id="5reM9ACYuH7" role="3clF45" />
      <node concept="3Tm1VV" id="5reM9ACYuH8" role="1B3o_S" />
      <node concept="3clFbS" id="5reM9ACYuH9" role="3clF47">
        <node concept="3clFbF" id="5reM9ACYxS_" role="3cqZAp">
          <node concept="2OqwBi" id="5reM9ACYycq" role="3clFbG">
            <node concept="liA8E" id="5reM9ACZhHs" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="5reM9ACZibP" role="37wK5m">
                <ref role="3cqZAo" node="5reM9ACYwCu" resolve="libraryJars" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tzA4yIoDU1" role="2Oq$k0">
              <node concept="37vLTw" id="6tzA4yIoDB5" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
              </node>
              <node concept="liA8E" id="6tzA4yIoE6H" role="2OqNvi">
                <ref role="37wK5l" node="6tzA4yInV2z" resolve="getLibraryJars" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5reM9ACYwCu" role="3clF46">
        <property role="TrG5h" value="libraryJars" />
        <node concept="3uibUv" id="5reM9ACYwCt" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="5reM9ACYwCD" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EgYym" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eyd" role="jymVt">
      <property role="TrG5h" value="prepareTaskCustomData" />
      <node concept="3uibUv" id="KL8Aql8eye" role="3clF45">
        <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
      </node>
      <node concept="3Tm6S6" id="KL8Aql8eyf" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eyg" role="3clF47">
        <node concept="3cpWs8" id="KL8Aql8eyh" role="3cqZAp">
          <node concept="3cpWsn" id="KL8Aql8eyi" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3uibUv" id="KL8Aql8eyj" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="KL8Aql8eyk" role="33vP2m">
              <node concept="1pGfFk" id="KL8Aql8eyl" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="37vLTw" id="2BHiRxeosop" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8enQ" resolve="ELEMENT_TODO" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="KL8Aql8eyn" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8eyo" role="2LFqv$">
            <node concept="3clFbF" id="KL8Aql8eyp" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8eyq" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_CU" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
                </node>
                <node concept="liA8E" id="KL8Aql8eys" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="KL8Aql8eyt" role="37wK5m">
                    <node concept="2ShNRf" id="KL8Aql8eyu" role="2Oq$k0">
                      <node concept="1pGfFk" id="KL8Aql8eyv" role="2ShVmc">
                        <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="37vLTw" id="2BHiRxeonK_" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8enU" resolve="ELEMENT_MODEL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="KL8Aql8eyx" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="2BHiRxeooL7" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                      </node>
                      <node concept="2OqwBi" id="KL8Aql8eyz" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTyaN" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eyA" resolve="f" />
                        </node>
                        <node concept="liA8E" id="KL8Aql8ey_" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="KL8Aql8eyA" role="1Duv9x">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="KL8Aql8eyB" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeuwxf" role="1DdaDG">
            <ref role="3cqZAo" node="KL8Aql8eou" resolve="myModels" />
          </node>
        </node>
        <node concept="1DcWWT" id="KL8Aql8eyD" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8eyE" role="2LFqv$">
            <node concept="3clFbF" id="KL8Aql8eyF" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8eyG" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTAd2" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
                </node>
                <node concept="liA8E" id="KL8Aql8eyI" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="KL8Aql8eyJ" role="37wK5m">
                    <node concept="2ShNRf" id="KL8Aql8eyK" role="2Oq$k0">
                      <node concept="1pGfFk" id="KL8Aql8eyL" role="2ShVmc">
                        <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="37vLTw" id="2BHiRxeoozn" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8enY" resolve="ELEMENT_MODULE" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="KL8Aql8eyN" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="2BHiRxeon4P" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                      </node>
                      <node concept="2OqwBi" id="KL8Aql8eyP" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTtVj" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eyS" resolve="f" />
                        </node>
                        <node concept="liA8E" id="KL8Aql8eyR" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="KL8Aql8eyS" role="1Duv9x">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="KL8Aql8eyT" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeuswA" role="1DdaDG">
            <ref role="3cqZAo" node="KL8Aql8eo_" resolve="myModules" />
          </node>
        </node>
        <node concept="1DcWWT" id="KL8Aql8eyV" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8eyW" role="2LFqv$">
            <node concept="3clFbF" id="KL8Aql8eyX" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8eyY" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsQV" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
                </node>
                <node concept="liA8E" id="KL8Aql8ez0" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="KL8Aql8ez1" role="37wK5m">
                    <node concept="2ShNRf" id="KL8Aql8ez2" role="2Oq$k0">
                      <node concept="1pGfFk" id="KL8Aql8ez3" role="2ShVmc">
                        <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="37vLTw" id="2BHiRxeoq8r" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eo2" resolve="ELEMENT_EXCLUDEDFROMDIFF" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="KL8Aql8ez5" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="2BHiRxeofmi" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                      </node>
                      <node concept="2OqwBi" id="KL8Aql8ez7" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTtkc" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eza" resolve="f" />
                        </node>
                        <node concept="liA8E" id="KL8Aql8ez9" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="KL8Aql8eza" role="1Duv9x">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="KL8Aql8ezb" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeuW1B" role="1DdaDG">
            <ref role="3cqZAo" node="KL8Aql8eoG" resolve="myExcludedFromDiff" />
          </node>
        </node>
        <node concept="1DcWWT" id="KL8Aql8ezd" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8eze" role="2LFqv$">
            <node concept="3clFbF" id="KL8Aql8ezI" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8ezJ" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTxMz" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
                </node>
                <node concept="liA8E" id="KL8Aql8ezL" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="6tzA4yIitXg" role="37wK5m">
                    <node concept="2ShNRf" id="6tzA4yIitXh" role="2Oq$k0">
                      <node concept="1pGfFk" id="6tzA4yIitXi" role="2ShVmc">
                        <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="37vLTw" id="6tzA4yIitXj" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eo6" resolve="ELEMENT_PROJECT" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6tzA4yIitXk" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="6tzA4yIitXl" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                      </node>
                      <node concept="2OqwBi" id="6tzA4yIitXm" role="37wK5m">
                        <node concept="37vLTw" id="6tzA4yIitXn" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8ezN" resolve="f" />
                        </node>
                        <node concept="liA8E" id="6tzA4yIitXo" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="KL8Aql8ezN" role="1Duv9x">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="KL8Aql8ezO" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeuoXr" role="1DdaDG">
            <ref role="3cqZAo" node="KL8Aql8eoN" resolve="myMPSProjects" />
          </node>
        </node>
        <node concept="1DcWWT" id="KL8Aql8ezS" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8ezT" role="2LFqv$">
            <node concept="3clFbF" id="KL8Aql8ezU" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8ezV" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_dr" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
                </node>
                <node concept="liA8E" id="KL8Aql8ezX" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="KL8Aql8ezY" role="37wK5m">
                    <node concept="2ShNRf" id="KL8Aql8ezZ" role="2Oq$k0">
                      <node concept="1pGfFk" id="KL8Aql8e$0" role="2ShVmc">
                        <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="37vLTw" id="2BHiRxeolJe" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eoa" resolve="ELEMENT_PARAMETER" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="KL8Aql8e$2" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="2BHiRxeoq9p" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eom" resolve="VALUE" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTzUh" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8e$5" resolve="p" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="KL8Aql8e$5" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="17QB3L" id="KL8Aql8e$6" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="2BHiRxeukwo" role="1DdaDG">
            <ref role="3cqZAo" node="KL8Aql8epC" resolve="myParameters" />
          </node>
        </node>
        <node concept="1DcWWT" id="3GGnItM8Nd8" role="3cqZAp">
          <node concept="3clFbS" id="3GGnItM8Nd9" role="2LFqv$">
            <node concept="3cpWs8" id="3GGnItM8NeW" role="3cqZAp">
              <node concept="3cpWsn" id="3GGnItM8NeX" role="3cpWs9">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="5reM9AD9LVp" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2OqwBi" id="3GGnItM8NeZ" role="33vP2m">
                  <node concept="2ShNRf" id="3GGnItM8Nf0" role="2Oq$k0">
                    <node concept="1pGfFk" id="3GGnItM8Nf1" role="2ShVmc">
                      <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                      <node concept="37vLTw" id="5reM9ACWNRU" role="37wK5m">
                        <ref role="3cqZAo" node="3GGnItM8NcH" resolve="ELEMENT_CHUNK" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3GGnItM8Nf3" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                    <node concept="37vLTw" id="5reM9ACWO7x" role="37wK5m">
                      <ref role="3cqZAo" node="3GGnItM8NcR" resolve="ATTRIBUTE_BOOTSTRAP" />
                    </node>
                    <node concept="2OqwBi" id="3GGnItM8Nf5" role="37wK5m">
                      <node concept="2OqwBi" id="3GGnItM8Nf6" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTren" role="2Oq$k0">
                          <ref role="3cqZAo" node="3GGnItM8Ndb" resolve="chunk" />
                        </node>
                        <node concept="liA8E" id="3GGnItM8Nf8" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3GGnItM8Nf9" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Boolean.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3GGnItM8Nfc" role="3cqZAp">
              <node concept="2OqwBi" id="3GGnItM8NfB" role="1DdaDG">
                <node concept="37vLTw" id="3GM_nagTwqG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GGnItM8Ndb" resolve="chunk" />
                </node>
                <node concept="liA8E" id="3GGnItM8NfH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                </node>
              </node>
              <node concept="3clFbS" id="3GGnItM8Nfd" role="2LFqv$">
                <node concept="3clFbF" id="3GGnItM8Qyt" role="3cqZAp">
                  <node concept="2OqwBi" id="3GGnItM8QyF" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTy9J" role="2Oq$k0">
                      <ref role="3cqZAo" node="3GGnItM8NeX" resolve="element" />
                    </node>
                    <node concept="liA8E" id="3GGnItM8QyL" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="2OqwBi" id="3GGnItM8Tly" role="37wK5m">
                        <node concept="2ShNRf" id="3GGnItM8Tl$" role="2Oq$k0">
                          <node concept="1pGfFk" id="3GGnItM8Tl_" role="2ShVmc">
                            <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                            <node concept="37vLTw" id="5reM9ACWOCu" role="37wK5m">
                              <ref role="3cqZAo" node="KL8Aql8enY" resolve="ELEMENT_MODULE" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3GGnItM8TlG" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                          <node concept="37vLTw" id="5reM9ACWPdK" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTzgX" role="37wK5m">
                            <ref role="3cqZAo" node="3GGnItM8Nff" resolve="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3GGnItM8Nff" role="1Duv9x">
                <property role="TrG5h" value="module" />
                <node concept="17QB3L" id="3ag$5R8RUJL" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="3GGnItM8Ngm" role="3cqZAp">
              <node concept="2OqwBi" id="3GGnItM8Ng$" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT$cx" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
                </node>
                <node concept="liA8E" id="3GGnItM8NgE" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="37vLTw" id="3GM_nagTt_k" role="37wK5m">
                    <ref role="3cqZAo" node="3GGnItM8NeX" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3GGnItM8Ndb" role="1Duv9x">
            <property role="TrG5h" value="chunk" />
            <node concept="3uibUv" id="3GGnItM8Nde" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
              <node concept="3uibUv" id="3ag$5R8RUJG" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="17QB3L" id="3ag$5R8RUJH" role="11_B2D" />
              </node>
              <node concept="3uibUv" id="3GGnItM8NdD" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3GGnItM8Ndx" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxeuq6w" role="2Oq$k0">
              <ref role="3cqZAo" node="7SWBkX45D4w" resolve="myChunks" />
            </node>
            <node concept="liA8E" id="3GGnItM8NdB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.entrySet():java.util.Set" resolve="entrySet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8e$8" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTykA" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eyi" resolve="data" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6EaSQ9" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8e$a" role="jymVt">
      <property role="TrG5h" value="parseTaskCustomData" />
      <node concept="3cqZAl" id="KL8Aql8e$b" role="3clF45" />
      <node concept="3Tm6S6" id="1288c6Ec7fW" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8e$d" role="3clF47">
        <node concept="1DcWWT" id="KL8Aql8e$e" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8e$f" role="2LFqv$">
            <node concept="3cpWs8" id="KL8Aql8e$m" role="3cqZAp">
              <node concept="3cpWsn" id="KL8Aql8e$n" role="3cpWs9">
                <property role="TrG5h" value="elementName" />
                <node concept="17QB3L" id="KL8Aql8e$o" role="1tU5fm" />
                <node concept="2OqwBi" id="KL8Aql8e$p" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTw7O" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8e$r" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="KL8Aql8e$s" role="3cqZAp">
              <node concept="3clFbS" id="KL8Aql8e$t" role="3clFbx">
                <node concept="3clFbF" id="KL8Aql8e$u" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyzf7W" role="3clFbG">
                    <ref role="37wK5l" node="KL8Aql8eqg" resolve="addModelFile" />
                    <node concept="2ShNRf" id="KL8Aql8e$w" role="37wK5m">
                      <node concept="1pGfFk" id="KL8Aql8e$x" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="KL8Aql8e$y" role="37wK5m">
                          <node concept="37vLTw" id="3GM_nagTxJZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                          </node>
                          <node concept="liA8E" id="KL8Aql8e$$" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                            <node concept="37vLTw" id="2BHiRxeoicM" role="37wK5m">
                              <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="KL8Aql8e$A" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeonN7" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8enU" resolve="ELEMENT_MODEL" />
                </node>
                <node concept="liA8E" id="KL8Aql8e$C" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="3GM_nagT$KZ" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8e$n" resolve="elementName" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="KL8Aql8e$E" role="3eNLev">
                <node concept="2OqwBi" id="KL8Aql8e$F" role="3eO9$A">
                  <node concept="37vLTw" id="2BHiRxeoqqR" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8enY" resolve="ELEMENT_MODULE" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8e$H" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="3GM_nagT_hw" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8e$n" resolve="elementName" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="KL8Aql8e$J" role="3eOfB_">
                  <node concept="3clFbF" id="KL8Aql8e$K" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyziHN" role="3clFbG">
                      <ref role="37wK5l" node="KL8Aql8epR" resolve="addModuleFile" />
                      <node concept="2ShNRf" id="KL8Aql8e$M" role="37wK5m">
                        <node concept="1pGfFk" id="KL8Aql8e$N" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="KL8Aql8e$O" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagT$nU" role="2Oq$k0">
                              <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                            </node>
                            <node concept="liA8E" id="KL8Aql8e$Q" role="2OqNvi">
                              <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                              <node concept="37vLTw" id="2BHiRxeonLE" role="37wK5m">
                                <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="KL8Aql8e$S" role="3eNLev">
                <node concept="3clFbS" id="KL8Aql8e$T" role="3eOfB_">
                  <node concept="3clFbF" id="KL8Aql8e$U" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyyZRP" role="3clFbG">
                      <ref role="37wK5l" node="KL8Aql8eqD" resolve="excludeFileFromDiff" />
                      <node concept="2ShNRf" id="KL8Aql8e$W" role="37wK5m">
                        <node concept="1pGfFk" id="KL8Aql8e$X" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="KL8Aql8e$Y" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagTuir" role="2Oq$k0">
                              <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                            </node>
                            <node concept="liA8E" id="KL8Aql8e_0" role="2OqNvi">
                              <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                              <node concept="37vLTw" id="2BHiRxeorGy" role="37wK5m">
                                <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="KL8Aql8e_2" role="3eO9$A">
                  <node concept="37vLTw" id="2BHiRxeooIH" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eo2" resolve="ELEMENT_EXCLUDEDFROMDIFF" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8e_4" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="3GM_nagTvn4" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8e$n" resolve="elementName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="KL8Aql8e_6" role="3eNLev">
                <node concept="3clFbS" id="KL8Aql8e_7" role="3eOfB_">
                  <node concept="3clFbF" id="KL8Aql8e_y" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyz5e5" role="3clFbG">
                      <ref role="37wK5l" node="KL8Aql8eqX" resolve="addProjectFile" />
                      <node concept="2ShNRf" id="KL8Aql8e_$" role="37wK5m">
                        <node concept="1pGfFk" id="KL8Aql8e__" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="KL8Aql8e_A" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagTrmy" role="2Oq$k0">
                              <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                            </node>
                            <node concept="liA8E" id="KL8Aql8e_C" role="2OqNvi">
                              <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                              <node concept="37vLTw" id="2BHiRxeok$K" role="37wK5m">
                                <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="KL8Aql8e_O" role="3eO9$A">
                  <node concept="37vLTw" id="2BHiRxeoisq" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eo6" resolve="ELEMENT_PROJECT" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8e_Q" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="3GM_nagTBOd" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8e$n" resolve="elementName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="KL8Aql8e_S" role="3eNLev">
                <node concept="2OqwBi" id="KL8Aql8e_T" role="3eO9$A">
                  <node concept="37vLTw" id="2BHiRxeola5" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eoa" resolve="ELEMENT_PARAMETER" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8e_V" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="3GM_nagTvga" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8e$n" resolve="elementName" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="KL8Aql8e_X" role="3eOfB_">
                  <node concept="3clFbF" id="KL8Aql8e_Y" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyz3qB" role="3clFbG">
                      <ref role="37wK5l" node="KL8Aql8evU" resolve="addParameter" />
                      <node concept="2OqwBi" id="KL8Aql8eA0" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTsME" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                        </node>
                        <node concept="liA8E" id="KL8Aql8eA2" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                          <node concept="37vLTw" id="2BHiRxeohy3" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eom" resolve="VALUE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="3GGnItM8Tm8" role="3eNLev">
                <node concept="2OqwBi" id="3GGnItM8Tmo" role="3eO9$A">
                  <node concept="liA8E" id="3GGnItM8Tmx" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="3GM_nagTxPg" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8e$n" resolve="elementName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5reM9ACXlUz" role="2Oq$k0">
                    <ref role="3cqZAo" node="3GGnItM8NcH" resolve="ELEMENT_CHUNK" />
                  </node>
                </node>
                <node concept="3clFbS" id="3GGnItM8Tma" role="3eOfB_">
                  <node concept="3cpWs8" id="3GGnItM8Tnu" role="3cqZAp">
                    <node concept="3cpWsn" id="3GGnItM8Tnv" role="3cpWs9">
                      <property role="TrG5h" value="chunkModules" />
                      <node concept="3uibUv" id="3ag$5R8RUJR" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="17QB3L" id="3ag$5R8RUJS" role="11_B2D" />
                      </node>
                      <node concept="2ShNRf" id="3GGnItM8TnA" role="33vP2m">
                        <node concept="1pGfFk" id="3GGnItM8TnC" role="2ShVmc">
                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                          <node concept="17QB3L" id="3GGnItM8TnE" role="1pMfVU" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3GGnItM8TmS" role="3cqZAp">
                    <node concept="3cpWsn" id="3GGnItM8TmT" role="3cpWs9">
                      <property role="TrG5h" value="modules" />
                      <node concept="3uibUv" id="5reM9ADa17n" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      </node>
                      <node concept="2OqwBi" id="3GGnItM8TmV" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagTvzV" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                        </node>
                        <node concept="liA8E" id="3GGnItM8TmX" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getChildren():java.util.List" resolve="getChildren" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="3GGnItM8TnH" role="3cqZAp">
                    <node concept="3clFbS" id="3GGnItM8TnI" role="2LFqv$">
                      <node concept="3cpWs8" id="3GGnItM8To6" role="3cqZAp">
                        <node concept="3cpWsn" id="3GGnItM8To7" role="3cpWs9">
                          <property role="TrG5h" value="moduleElement" />
                          <node concept="3uibUv" id="5reM9ADaqCi" role="1tU5fm">
                            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                          </node>
                          <node concept="10QFUN" id="3GGnItM8Toc" role="33vP2m">
                            <node concept="3uibUv" id="5reM9ADaqIy" role="10QFUM">
                              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTyqy" role="10QFUP">
                              <ref role="3cqZAo" node="3GGnItM8TnK" resolve="oo" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3GGnItM8Toh" role="3cqZAp">
                        <node concept="3clFbS" id="3GGnItM8Toi" role="3clFbx">
                          <node concept="3cpWs8" id="3GGnItM8Trn" role="3cqZAp">
                            <node concept="3cpWsn" id="3GGnItM8Tro" role="3cpWs9">
                              <property role="TrG5h" value="path" />
                              <node concept="17QB3L" id="3GGnItM8Trv" role="1tU5fm" />
                              <node concept="2OqwBi" id="3GGnItM8Trq" role="33vP2m">
                                <node concept="37vLTw" id="3GM_nagTvy6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3GGnItM8To7" resolve="moduleElement" />
                                </node>
                                <node concept="liA8E" id="3GGnItM8Trs" role="2OqNvi">
                                  <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                                  <node concept="37vLTw" id="5reM9ACXnAQ" role="37wK5m">
                                    <ref role="3cqZAo" node="KL8Aql8eoi" resolve="PATH" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="3GGnItM8Trx" role="3cqZAp">
                            <node concept="3clFbS" id="3GGnItM8Try" role="3clFbx">
                              <node concept="3clFbF" id="3GGnItM8TqE" role="3cqZAp">
                                <node concept="2OqwBi" id="3GGnItM8TqS" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTtYE" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3GGnItM8Tnv" resolve="chunkModules" />
                                  </node>
                                  <node concept="liA8E" id="3GGnItM8TqY" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                                    <node concept="37vLTw" id="3GM_nagTvWs" role="37wK5m">
                                      <ref role="3cqZAo" node="3GGnItM8Tro" resolve="path" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3GGnItM8TrN" role="3clFbw">
                              <node concept="37vLTw" id="3GM_nagTscd" role="2Oq$k0">
                                <ref role="3cqZAo" node="3GGnItM8Tro" resolve="path" />
                              </node>
                              <node concept="17RvpY" id="3GGnItM8TrT" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3GGnItM8ToA" role="3clFbw">
                          <node concept="liA8E" id="3GGnItM8ToG" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="3GGnItM8ToU" role="37wK5m">
                              <node concept="37vLTw" id="3GM_nagTz0n" role="2Oq$k0">
                                <ref role="3cqZAo" node="3GGnItM8To7" resolve="moduleElement" />
                              </node>
                              <node concept="liA8E" id="3GGnItM8Tp0" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.getName():java.lang.String" resolve="getName" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5reM9ACXn6x" role="2Oq$k0">
                            <ref role="3cqZAo" node="KL8Aql8enY" resolve="ELEMENT_MODULE" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="3GGnItM8TnK" role="1Duv9x">
                      <property role="TrG5h" value="oo" />
                      <node concept="3uibUv" id="3GGnItM8TnM" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTBAD" role="1DdaDG">
                      <ref role="3cqZAo" node="3GGnItM8TmT" resolve="modules" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="3GGnItM8Tp7" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyzbRX" role="3clFbG">
                      <ref role="37wK5l" node="58KrZDES$s_" resolve="addChunk" />
                      <node concept="37vLTw" id="3GM_nagTvbX" role="37wK5m">
                        <ref role="3cqZAo" node="3GGnItM8Tnv" resolve="chunkModules" />
                      </node>
                      <node concept="2YIFZM" id="3GGnItM8XCh" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
                        <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                        <node concept="2OqwBi" id="3GGnItM8XCi" role="37wK5m">
                          <node concept="37vLTw" id="3GM_nagTvWC" role="2Oq$k0">
                            <ref role="3cqZAo" node="KL8Aql8eA4" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3GGnItM8XCk" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                            <node concept="37vLTw" id="5reM9ACXwMn" role="37wK5m">
                              <ref role="3cqZAo" node="3GGnItM8NcR" resolve="ATTRIBUTE_BOOTSTRAP" />
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
          <node concept="3cpWsn" id="KL8Aql8eA4" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="1288c6EaZ0h" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
          </node>
          <node concept="2OqwBi" id="KL8Aql8eA6" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxghfie" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eA9" resolve="elem" />
            </node>
            <node concept="liA8E" id="KL8Aql8eA8" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren():java.util.List" resolve="getChildren" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eA9" role="3clF46">
        <property role="TrG5h" value="elem" />
        <node concept="3uibUv" id="KL8Aql8eAa" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eAb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dumpToTmpFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eAc" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eAd" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="KL8Aql8eAe" role="3clF47">
        <node concept="3cpWs8" id="1288c6E5M69" role="3cqZAp">
          <node concept="3cpWsn" id="1288c6E5M6a" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="1288c6E5M67" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="1288c6E5M6b" role="33vP2m">
              <node concept="1pGfFk" id="1288c6E5M6c" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="Xl_RD" id="1288c6E5M6d" role="37wK5m">
                  <property role="Xl_RC" value="script" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1288c6E9U4X" role="3cqZAp">
          <node concept="3cpWsn" id="1288c6E9U4Y" role="3cpWs9">
            <property role="TrG5h" value="startup" />
            <node concept="3uibUv" id="1288c6E9U4Z" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="1288c6Ea0Ye" role="33vP2m">
              <node concept="1pGfFk" id="1288c6Ea1ho" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="Xl_RD" id="1288c6Ea1lm" role="37wK5m">
                  <property role="Xl_RC" value="startup" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6E5u$W" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6E5$vm" role="3clFbG">
            <node concept="37vLTw" id="1288c6EcXx9" role="2Oq$k0">
              <ref role="3cqZAo" node="6aGZllYSCBv" resolve="myStartupData" />
            </node>
            <node concept="liA8E" id="1288c6E5$KJ" role="2OqNvi">
              <ref role="37wK5l" node="1288c6E4sOG" resolve="write" />
              <node concept="37vLTw" id="1288c6EadsE" role="37wK5m">
                <ref role="3cqZAo" node="1288c6E9U4Y" resolve="startup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6Eajur" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EaoN0" role="3clFbG">
            <node concept="37vLTw" id="1288c6Eajup" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E5M6a" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6EapOZ" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
              <node concept="37vLTw" id="1288c6EapVM" role="37wK5m">
                <ref role="3cqZAo" node="1288c6E9U4Y" resolve="startup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6Eaw2c" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6EaA1A" role="3clFbG">
            <node concept="37vLTw" id="1288c6Eaw2a" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E5M6a" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6EaAqW" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
              <node concept="1rXfSq" id="1288c6EaAw0" role="37wK5m">
                <ref role="37wK5l" node="KL8Aql8eyd" resolve="prepareTaskCustomData" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="KL8Aql8eAW" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8eAX" role="SfCbr">
            <node concept="3cpWs8" id="KL8Aql8eAf" role="3cqZAp">
              <node concept="3cpWsn" id="KL8Aql8eAg" role="3cpWs9">
                <property role="TrG5h" value="tmpFile" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="KL8Aql8eAh" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2YIFZM" id="KL8Aql8eAi" role="33vP2m">
                  <ref role="1Pybhc" node="KL8Aql8enO" resolve="Script" />
                  <ref role="37wK5l" node="KL8Aql8eCh" resolve="createTmpFile" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1288c6E5ozb" role="3cqZAp">
              <node concept="2YIFZM" id="1288c6E5ozc" role="3clFbG">
                <ref role="37wK5l" node="7CnofvYvUXW" resolve="writeDocument" />
                <ref role="1Pybhc" node="7CnofvYvUW6" resolve="JDOMUtil" />
                <node concept="2ShNRf" id="1288c6E5ozd" role="37wK5m">
                  <node concept="1pGfFk" id="1288c6E5oze" role="2ShVmc">
                    <ref role="37wK5l" to="mmaq:~Document.&lt;init&gt;(org.jdom.Element)" resolve="Document" />
                    <node concept="37vLTw" id="1288c6E5Ybu" role="37wK5m">
                      <ref role="3cqZAo" node="1288c6E5M6a" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1288c6E64Lv" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8eAg" resolve="tmpFile" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="KL8Aql8eBb" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT_AI" role="3cqZAk">
                <ref role="3cqZAo" node="KL8Aql8eAg" resolve="tmpFile" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="KL8Aql8eB3" role="TEbGg">
            <node concept="3cpWsn" id="KL8Aql8eB4" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="KL8Aql8eB5" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="KL8Aql8eB6" role="TDEfX">
              <node concept="3clFbF" id="KL8Aql8eB7" role="3cqZAp">
                <node concept="2OqwBi" id="KL8Aql8eB8" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTwpZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eB4" resolve="e" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8eBa" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="1288c6E6itv" role="3cqZAp">
                <node concept="2ShNRf" id="1288c6E6nPx" role="YScLw">
                  <node concept="1pGfFk" id="1288c6E6o7V" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="1288c6E6oGU" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8eB4" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="KL8Aql8eBd" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6E6oO3" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eBB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addPerfomanceReport" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eBC" role="1B3o_S" />
      <node concept="3cqZAl" id="KL8Aql8eBD" role="3clF45" />
      <node concept="37vLTG" id="KL8Aql8eBE" role="3clF46">
        <property role="TrG5h" value="s" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="KL8Aql8eBF" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="KL8Aql8eBG" role="3clF47">
        <node concept="3cpWs8" id="KL8Aql8eBH" role="3cqZAp">
          <node concept="3cpWsn" id="KL8Aql8eBI" role="3cpWs9">
            <property role="TrG5h" value="reports" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="KL8Aql8eBJ" role="1tU5fm" />
            <node concept="1rXfSq" id="1288c6EgXao" role="33vP2m">
              <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
              <node concept="10M0yZ" id="1288c6EgXrF" role="37wK5m">
                <ref role="3cqZAo" node="1bMaI2Xpecl" resolve="GENERATE_PERFORMANCE_REPORT" />
                <ref role="1PxDUh" node="6R7vamtty$v" resolve="ScriptProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="KL8Aql8eBO" role="3cqZAp">
          <node concept="3clFbC" id="KL8Aql8eBP" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTydh" role="3uHU7B">
              <ref role="3cqZAo" node="KL8Aql8eBI" resolve="reports" />
            </node>
            <node concept="10Nm6u" id="KL8Aql8eBR" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="KL8Aql8eBS" role="3clFbx">
            <node concept="3clFbF" id="KL8Aql8eBT" role="3cqZAp">
              <node concept="37vLTI" id="KL8Aql8eBU" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTzEM" role="37vLTJ">
                  <ref role="3cqZAo" node="KL8Aql8eBI" resolve="reports" />
                </node>
                <node concept="Xl_RD" id="KL8Aql8eBW" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="KL8Aql8eBX" role="3cqZAp">
          <node concept="3fqX7Q" id="KL8Aql8eBY" role="3clFbw">
            <node concept="2OqwBi" id="KL8Aql8eBZ" role="3fr31v">
              <node concept="37vLTw" id="3GM_nagTzzA" role="2Oq$k0">
                <ref role="3cqZAo" node="KL8Aql8eBI" resolve="reports" />
              </node>
              <node concept="liA8E" id="KL8Aql8eC1" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="KL8Aql8eC2" role="3clFbx">
            <node concept="3clFbF" id="KL8Aql8eC3" role="3cqZAp">
              <node concept="d57v9" id="KL8Aql8eC4" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTy3_" role="37vLTJ">
                  <ref role="3cqZAo" node="KL8Aql8eBI" resolve="reports" />
                </node>
                <node concept="Xl_RD" id="KL8Aql8eC6" role="37vLTx">
                  <property role="Xl_RC" value="," />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eC7" role="3cqZAp">
          <node concept="d57v9" id="KL8Aql8eC8" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTz4h" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eBI" resolve="reports" />
            </node>
            <node concept="37vLTw" id="2BHiRxghemz" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eBE" resolve="s" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6EgXZ$" role="3cqZAp">
          <node concept="1rXfSq" id="1288c6EgXZy" role="3clFbG">
            <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
            <node concept="10M0yZ" id="1288c6EgYhh" role="37wK5m">
              <ref role="3cqZAo" node="1bMaI2Xpecl" resolve="GENERATE_PERFORMANCE_REPORT" />
              <ref role="1PxDUh" node="6R7vamtty$v" resolve="ScriptProperties" />
            </node>
            <node concept="37vLTw" id="1288c6EgYkK" role="37wK5m">
              <ref role="3cqZAo" node="KL8Aql8eBI" resolve="reports" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6E9x6X" role="jymVt" />
    <node concept="2tJIrI" id="2ER7O$f2Sm7" role="jymVt" />
    <node concept="2YIFZL" id="KL8Aql8eCh" role="jymVt">
      <property role="TrG5h" value="createTmpFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="1288c6E9reC" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eCj" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="KL8Aql8eCk" role="3clF47">
        <node concept="3cpWs8" id="KL8Aql8eCM" role="3cqZAp">
          <node concept="3cpWsn" id="KL8Aql8eCN" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="false" />
            <node concept="10Nm6u" id="2ER7O$f2Nj4" role="33vP2m" />
            <node concept="3uibUv" id="KL8Aql8eCO" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="KL8Aql8eCV" role="3cqZAp">
          <node concept="TDmWw" id="KL8Aql8eCW" role="TEbGg">
            <node concept="3clFbS" id="KL8Aql8eCX" role="TDEfX">
              <node concept="3clFbF" id="KL8Aql8eCY" role="3cqZAp">
                <node concept="2OqwBi" id="KL8Aql8eCZ" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTy4V" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eD2" resolve="e" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8eD1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="KL8Aql8eD2" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="KL8Aql8eD3" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="KL8Aql8eD4" role="SfCbr">
            <node concept="3clFbF" id="KL8Aql8eD5" role="3cqZAp">
              <node concept="37vLTI" id="2ER7O$f2RQz" role="3clFbG">
                <node concept="2YIFZM" id="2ER7O$f2S5Z" role="37vLTx">
                  <ref role="37wK5l" to="guwi:~File.createTempFile(java.lang.String,java.lang.String):java.io.File" resolve="createTempFile" />
                  <ref role="1Pybhc" to="guwi:~File" resolve="File" />
                  <node concept="Xl_RD" id="2ER7O$f2ShF" role="37wK5m">
                    <property role="Xl_RC" value="mpstemp" />
                  </node>
                  <node concept="Xl_RD" id="2ER7O$f2Slf" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTByw" role="37vLTJ">
                  <ref role="3cqZAo" node="KL8Aql8eCN" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="KL8Aql8eD9" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTy73" role="3cqZAk">
            <ref role="3cqZAo" node="KL8Aql8eCN" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6E9Bjp" role="jymVt" />
    <node concept="2YIFZL" id="KL8Aql8eDb" role="jymVt">
      <property role="TrG5h" value="fromDumpInFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="KL8Aql8eDc" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eDd" role="3clF45">
        <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
      </node>
      <node concept="37vLTG" id="KL8Aql8eDe" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="KL8Aql8eDf" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="KL8Aql8eDg" role="3clF47">
        <node concept="3cpWs8" id="KL8Aql8eDX" role="3cqZAp">
          <node concept="3cpWsn" id="KL8Aql8eDY" role="3cpWs9">
            <property role="TrG5h" value="whatToDo" />
            <node concept="3uibUv" id="KL8Aql8eDZ" role="1tU5fm">
              <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
            </node>
            <node concept="2ShNRf" id="KL8Aql8eE0" role="33vP2m">
              <node concept="1pGfFk" id="KL8Aql8eE1" role="2ShVmc">
                <ref role="37wK5l" node="KL8Aql8epN" resolve="Script" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="KL8Aql8eDm" role="3cqZAp">
          <node concept="3clFbS" id="KL8Aql8eDn" role="2GV8ay">
            <node concept="3cpWs8" id="1288c6E9HEy" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E9HEz" role="3cpWs9">
                <property role="TrG5h" value="doc" />
                <node concept="3uibUv" id="1288c6E9HEv" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                </node>
                <node concept="2YIFZM" id="1288c6E9HE$" role="33vP2m">
                  <ref role="37wK5l" node="7CnofvYvUWm" resolve="loadDocument" />
                  <ref role="1Pybhc" node="7CnofvYvUW6" resolve="JDOMUtil" />
                  <node concept="37vLTw" id="1288c6E9HE_" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eDe" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1288c6Ecegy" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6Ecegz" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3uibUv" id="1288c6Ecegr" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2OqwBi" id="1288c6Eceg$" role="33vP2m">
                  <node concept="37vLTw" id="1288c6Eceg_" role="2Oq$k0">
                    <ref role="3cqZAo" node="1288c6E9HEz" resolve="doc" />
                  </node>
                  <node concept="liA8E" id="1288c6EcegA" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Document.getRootElement():org.jdom.Element" resolve="getRootElement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="KL8Aql8eDo" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8eDp" role="3clFbG">
                <node concept="2OqwBi" id="1288c6EcWzG" role="2Oq$k0">
                  <node concept="37vLTw" id="1288c6EcWwU" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eDY" resolve="whatToDo" />
                  </node>
                  <node concept="2OwXpG" id="1288c6EcWPo" role="2OqNvi">
                    <ref role="2Oxat5" node="6aGZllYSCBv" resolve="myStartupData" />
                  </node>
                </node>
                <node concept="liA8E" id="1288c6E9I5W" role="2OqNvi">
                  <ref role="37wK5l" node="1288c6E4EV2" resolve="read" />
                  <node concept="2OqwBi" id="1288c6EceD4" role="37wK5m">
                    <node concept="37vLTw" id="1288c6Ecezb" role="2Oq$k0">
                      <ref role="3cqZAo" node="1288c6Ecegz" resolve="root" />
                    </node>
                    <node concept="liA8E" id="1288c6EceRR" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                      <node concept="Xl_RD" id="1288c6EceVW" role="37wK5m">
                        <property role="Xl_RC" value="startup" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="KL8Aql8eEP" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8eEQ" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTugc" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eDY" resolve="whatToDo" />
                </node>
                <node concept="liA8E" id="KL8Aql8eES" role="2OqNvi">
                  <ref role="37wK5l" node="KL8Aql8e$a" resolve="parseTaskCustomData" />
                  <node concept="2OqwBi" id="KL8Aql8eET" role="37wK5m">
                    <node concept="37vLTw" id="1288c6EckLF" role="2Oq$k0">
                      <ref role="3cqZAo" node="1288c6Ecegz" resolve="root" />
                    </node>
                    <node concept="liA8E" id="KL8Aql8eEV" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                      <node concept="37vLTw" id="2BHiRxeofma" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8enQ" resolve="ELEMENT_TODO" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="KL8Aql8eDt" role="TEXxN">
            <node concept="3cpWsn" id="KL8Aql8eDu" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="KL8Aql8eDv" role="1tU5fm">
                <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
              </node>
            </node>
            <node concept="3clFbS" id="KL8Aql8eDw" role="TDEfX">
              <node concept="3clFbF" id="KL8Aql8eDx" role="3cqZAp">
                <node concept="2OqwBi" id="KL8Aql8eDy" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTASb" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eDu" resolve="e" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8eD$" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="KL8Aql8eD_" role="TEXxN">
            <node concept="3cpWsn" id="KL8Aql8eDA" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="KL8Aql8eDB" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="KL8Aql8eDC" role="TDEfX">
              <node concept="3clFbF" id="KL8Aql8eDD" role="3cqZAp">
                <node concept="2OqwBi" id="KL8Aql8eDE" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTwYv" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eDA" resolve="e" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8eDG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="KL8Aql8eDH" role="2GVbov">
            <node concept="3SKdUt" id="1288c6EcXsw" role="3cqZAp">
              <node concept="3SKdUq" id="1288c6EcXsy" role="3SKWNk">
                <property role="3SKdUp" value="XXX why on earth do we remove the file here" />
              </node>
            </node>
            <node concept="3clFbJ" id="KL8Aql8eDI" role="3cqZAp">
              <node concept="3fqX7Q" id="KL8Aql8eDJ" role="3clFbw">
                <node concept="2OqwBi" id="KL8Aql8eDK" role="3fr31v">
                  <node concept="37vLTw" id="2BHiRxgl_qv" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eDe" resolve="file" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8eDM" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.delete():boolean" resolve="delete" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="KL8Aql8eDN" role="3clFbx">
                <node concept="YS8fn" id="KL8Aql8eDO" role="3cqZAp">
                  <node concept="2ShNRf" id="KL8Aql8eDP" role="YScLw">
                    <node concept="1pGfFk" id="KL8Aql8eDQ" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                      <node concept="3cpWs3" id="KL8Aql8eDR" role="37wK5m">
                        <node concept="3cpWs3" id="KL8Aql8eDS" role="3uHU7B">
                          <node concept="Xl_RD" id="KL8Aql8eDT" role="3uHU7B">
                            <property role="Xl_RC" value="File " />
                          </node>
                          <node concept="37vLTw" id="2BHiRxghgqE" role="3uHU7w">
                            <ref role="3cqZAo" node="KL8Aql8eDe" resolve="file" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="KL8Aql8eDV" role="3uHU7w">
                          <property role="Xl_RC" value=" was not deleted." />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="KL8Aql8eEX" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTys8" role="3cqZAk">
            <ref role="3cqZAo" node="KL8Aql8eDY" resolve="whatToDo" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3QFNug6ypYF" role="lGtFl">
        <node concept="TZ5HA" id="3QFNug6yuuQ" role="TZ5H$">
          <node concept="1dT_AC" id="3QFNug6yuuR" role="1dT_Ay">
            <property role="1dT_AB" value="XXX InputStream would be better than File, but I'm lazy to get this fixed now" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="KL8Aql8eEZ">
    <property role="TrG5h" value="ScriptData" />
    <node concept="3Tm1VV" id="KL8Aql8eF0" role="1B3o_S" />
    <node concept="Wx3nA" id="KL8Aql8eF1" role="jymVt">
      <property role="TrG5h" value="ROOT_TASKDATA" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpcdF" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eF3" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eF4" role="33vP2m">
        <property role="Xl_RC" value="taskdata" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eF5" role="jymVt">
      <property role="TrG5h" value="PROP_WORKER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpcap" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eF7" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eF8" role="33vP2m">
        <property role="Xl_RC" value="worker" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eF9" role="jymVt">
      <property role="TrG5h" value="PROP_FAILONERROR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpc7A" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFb" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFc" role="33vP2m">
        <property role="Xl_RC" value="failOnError" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFd" role="jymVt">
      <property role="TrG5h" value="PROP_LOGLEVEL" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpc1$" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFf" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFg" role="33vP2m">
        <property role="Xl_RC" value="logLevel" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFh" role="jymVt">
      <property role="TrG5h" value="PROP_LOADBOOTSTRAPLIBRARIES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpbYL" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFj" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFk" role="33vP2m">
        <property role="Xl_RC" value="loadBootstrapLibraries" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFl" role="jymVt">
      <property role="TrG5h" value="ELEM_PROPERTY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpb89" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFn" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFo" role="33vP2m">
        <property role="Xl_RC" value="property" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFp" role="jymVt">
      <property role="TrG5h" value="ELEM_MACRO" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpb3S" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFr" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFs" role="33vP2m">
        <property role="Xl_RC" value="macro" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFt" role="jymVt">
      <property role="TrG5h" value="NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpaRK" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFv" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFw" role="33vP2m">
        <property role="Xl_RC" value="name" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFx" role="jymVt">
      <property role="TrG5h" value="VALUE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpaJ9" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFz" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eF$" role="33vP2m">
        <property role="Xl_RC" value="value" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eF_" role="jymVt">
      <property role="TrG5h" value="PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpaw5" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFB" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFC" role="33vP2m">
        <property role="Xl_RC" value="path" />
      </node>
    </node>
    <node concept="2tJIrI" id="ubtK7iZ_cf" role="jymVt" />
    <node concept="Wx3nA" id="KL8Aql8eFD" role="jymVt">
      <property role="TrG5h" value="ELEM_LIBRARIES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIpa0i" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFF" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFG" role="33vP2m">
        <property role="Xl_RC" value="libraries" />
      </node>
    </node>
    <node concept="Wx3nA" id="KL8Aql8eFH" role="jymVt">
      <property role="TrG5h" value="ELEM_LIBRARY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tzA4yIp9xP" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFJ" role="1tU5fm" />
      <node concept="Xl_RD" id="KL8Aql8eFK" role="33vP2m">
        <property role="Xl_RC" value="library" />
      </node>
    </node>
    <node concept="Wx3nA" id="3GGnItM960t" role="jymVt">
      <property role="TrG5h" value="ELEM_LIBRARYJAR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3GGnItM960u" role="1B3o_S" />
      <node concept="17QB3L" id="3GGnItM960v" role="1tU5fm" />
      <node concept="Xl_RD" id="3GGnItM960w" role="33vP2m">
        <property role="Xl_RC" value="jar" />
      </node>
    </node>
    <node concept="2tJIrI" id="ubtK7iZDg_" role="jymVt" />
    <node concept="Wx3nA" id="6aGZllYVfZl" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ELEM_REPO" />
      <node concept="3Tm6S6" id="6aGZllYVfZi" role="1B3o_S" />
      <node concept="17QB3L" id="6aGZllYVfZj" role="1tU5fm" />
      <node concept="Xl_RD" id="6aGZllYVfZk" role="33vP2m">
        <property role="Xl_RC" value="repository" />
      </node>
    </node>
    <node concept="Wx3nA" id="6aGZllYVH_k" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ELEM_REPO_FOLDER" />
      <node concept="3Tm6S6" id="6aGZllYVH_h" role="1B3o_S" />
      <node concept="17QB3L" id="6aGZllYVH_i" role="1tU5fm" />
      <node concept="Xl_RD" id="6aGZllYVH_j" role="33vP2m">
        <property role="Xl_RC" value="folder" />
      </node>
    </node>
    <node concept="Wx3nA" id="6aGZllYW3Fz" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ELEM_REPO_MODULEFILE" />
      <node concept="3Tm6S6" id="6aGZllYW3Fw" role="1B3o_S" />
      <node concept="17QB3L" id="6aGZllYW3Fx" role="1tU5fm" />
      <node concept="Xl_RD" id="6aGZllYW3Fy" role="33vP2m">
        <property role="Xl_RC" value="module" />
      </node>
    </node>
    <node concept="2tJIrI" id="ubtK7iZHkW" role="jymVt" />
    <node concept="312cEg" id="KL8Aql8eFO" role="jymVt">
      <property role="TrG5h" value="myWorker" />
      <node concept="3Tm6S6" id="KL8Aql8eFP" role="1B3o_S" />
      <node concept="17QB3L" id="KL8Aql8eFQ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="KL8Aql8eFR" role="jymVt">
      <property role="TrG5h" value="myFailOnError" />
      <node concept="3Tm6S6" id="KL8Aql8eFS" role="1B3o_S" />
      <node concept="10P_77" id="KL8Aql8eFT" role="1tU5fm" />
      <node concept="3clFbT" id="KL8Aql8eFU" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eFV" role="jymVt">
      <property role="TrG5h" value="myLogLevel" />
      <node concept="10M0yZ" id="KL8Aql8eFW" role="33vP2m">
        <ref role="1PxDUh" to="q7tw:~Level" resolve="Level" />
        <ref role="3cqZAo" to="q7tw:~Level.INFO" resolve="INFO" />
      </node>
      <node concept="3uibUv" id="KL8Aql8eFX" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Level" resolve="Level" />
      </node>
      <node concept="3Tm6S6" id="KL8Aql8eFY" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="KL8Aql8eFZ" role="jymVt">
      <property role="TrG5h" value="myLoadBootstrapLibraries" />
      <node concept="3Tm6S6" id="KL8Aql8eG0" role="1B3o_S" />
      <node concept="10P_77" id="KL8Aql8eG1" role="1tU5fm" />
      <node concept="3clFbT" id="KL8Aql8eG2" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eG3" role="jymVt">
      <property role="TrG5h" value="myProperties" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="KL8Aql8eG4" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eG5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8eG6" role="11_B2D" />
        <node concept="17QB3L" id="KL8Aql8eG7" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="KL8Aql8eG8" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8eG9" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
          <node concept="17QB3L" id="KL8Aql8eGa" role="1pMfVU" />
          <node concept="17QB3L" id="KL8Aql8eGb" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eGc" role="jymVt">
      <property role="TrG5h" value="myMacros" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="KL8Aql8eGd" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eGe" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8eGf" role="11_B2D" />
        <node concept="17QB3L" id="KL8Aql8eGg" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="KL8Aql8eGh" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8eGi" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
          <node concept="17QB3L" id="KL8Aql8eGj" role="1pMfVU" />
          <node concept="17QB3L" id="KL8Aql8eGk" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="KL8Aql8eGl" role="jymVt">
      <property role="TrG5h" value="myLibraries" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="KL8Aql8eGm" role="1B3o_S" />
      <node concept="3uibUv" id="KL8Aql8eGn" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8eGo" role="11_B2D" />
        <node concept="3uibUv" id="KL8Aql8eGp" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="2ShNRf" id="KL8Aql8eGq" role="33vP2m">
        <node concept="1pGfFk" id="KL8Aql8eGr" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
          <node concept="17QB3L" id="KL8Aql8eGs" role="1pMfVU" />
          <node concept="3uibUv" id="KL8Aql8eGt" role="1pMfVU">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3GGnItM95Yy" role="jymVt">
      <property role="TrG5h" value="myLibraryJars" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3GGnItM95Yz" role="1B3o_S" />
      <node concept="2ShNRf" id="3GGnItM95YJ" role="33vP2m">
        <node concept="1pGfFk" id="3GGnItM95YP" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="17QB3L" id="5reM9ACVTp$" role="1pMfVU" />
        </node>
      </node>
      <node concept="3uibUv" id="3GGnItM95YM" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="3GGnItM95YO" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yIoaQ6" role="jymVt" />
    <node concept="312cEg" id="6aGZllYTY_Z" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myRepo" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6aGZllYTVsG" role="1B3o_S" />
      <node concept="3uibUv" id="6aGZllYTY__" role="1tU5fm">
        <ref role="3uigEE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
      </node>
      <node concept="10Nm6u" id="6aGZllYUog3" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="1288c6E4hUt" role="jymVt" />
    <node concept="3clFbW" id="KL8Aql8eGB" role="jymVt">
      <node concept="3cqZAl" id="KL8Aql8eGC" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eGD" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eGE" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1288c6E4e9w" role="jymVt" />
    <node concept="3clFb_" id="1288c6E4sOG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="write" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1288c6E4sOJ" role="3clF47">
        <node concept="3cpWs8" id="1288c6E3_RG" role="3cqZAp">
          <node concept="3cpWsn" id="1288c6E3_RJ" role="3cpWs9">
            <property role="TrG5h" value="misc" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="1288c6E3_RL" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="KL8Aql8eGL" role="33vP2m">
              <node concept="1pGfFk" id="KL8Aql8eGM" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="37vLTw" id="1288c6E7IYp" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8eF1" resolve="ROOT_TASKDATA" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="KL8Aql8eGP" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="KL8Aql8eGQ" role="3clFbx">
            <node concept="3clFbF" id="KL8Aql8eGR" role="3cqZAp">
              <node concept="2OqwBi" id="KL8Aql8eGS" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeus8y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E3_RJ" resolve="misc" />
                </node>
                <node concept="liA8E" id="KL8Aql8eGU" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                  <node concept="37vLTw" id="1288c6E7IY_" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eF5" resolve="PROP_WORKER" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuHtf" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eFO" resolve="myWorker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="KL8Aql8eGX" role="3clFbw">
            <node concept="10Nm6u" id="KL8Aql8eGY" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuvyT" role="3uHU7B">
              <ref role="3cqZAo" node="KL8Aql8eFO" resolve="myWorker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eH0" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eH1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMzT" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E3_RJ" resolve="misc" />
            </node>
            <node concept="liA8E" id="KL8Aql8eH3" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
              <node concept="37vLTw" id="1288c6E7IYL" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eF9" resolve="PROP_FAILONERROR" />
              </node>
              <node concept="2YIFZM" id="1288c6E80zT" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="1288c6E80AX" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8eFR" resolve="myFailOnError" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eH8" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eH9" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuXyf" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E3_RJ" resolve="misc" />
            </node>
            <node concept="liA8E" id="KL8Aql8eHb" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
              <node concept="37vLTw" id="1288c6E7IYX" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eFd" resolve="PROP_LOGLEVEL" />
              </node>
              <node concept="2YIFZM" id="1288c6E7ZaA" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Integer.toString(int):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <node concept="2OqwBi" id="KL8Aql8eHe" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuft8" role="2Oq$k0">
                    <ref role="3cqZAo" node="KL8Aql8eFV" resolve="myLogLevel" />
                  </node>
                  <node concept="liA8E" id="KL8Aql8eHg" role="2OqNvi">
                    <ref role="37wK5l" to="q7tw:~Priority.toInt():int" resolve="toInt" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8Aql8eHi" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eHj" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeudce" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E3_RJ" resolve="misc" />
            </node>
            <node concept="liA8E" id="KL8Aql8eHl" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
              <node concept="37vLTw" id="1288c6E7IZ9" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eFh" resolve="PROP_LOADBOOTSTRAPLIBRARIES" />
              </node>
              <node concept="2YIFZM" id="1288c6E80Iu" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="1288c6E80X6" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8eFZ" resolve="myLoadBootstrapLibraries" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6E7ST2" role="3cqZAp">
          <node concept="2OqwBi" id="1288c6E7Vur" role="3clFbG">
            <node concept="37vLTw" id="1288c6E7ST0" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E4wr4" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6E7XFo" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
              <node concept="37vLTw" id="1288c6E7XGO" role="37wK5m">
                <ref role="3cqZAo" node="1288c6E3_RJ" resolve="misc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1288c6E7GG6" role="3cqZAp" />
        <node concept="3clFbJ" id="1288c6E6F74" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E6F75" role="3clFbx">
            <node concept="3cpWs8" id="1288c6E6$1q" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E6$1r" role="3cpWs9">
                <property role="TrG5h" value="libraries" />
                <node concept="3uibUv" id="1288c6E6$1s" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2ShNRf" id="1288c6E6$1t" role="33vP2m">
                  <node concept="1pGfFk" id="1288c6E6$1u" role="2ShVmc">
                    <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="37vLTw" id="1288c6E6IT9" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8eFD" resolve="ELEM_LIBRARIES" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1288c6E6$1F" role="3cqZAp">
              <node concept="3clFbS" id="1288c6E6$1G" role="2LFqv$">
                <node concept="3clFbF" id="1288c6E6$1H" role="3cqZAp">
                  <node concept="2OqwBi" id="1288c6E6$1I" role="3clFbG">
                    <node concept="37vLTw" id="1288c6E6$1J" role="2Oq$k0">
                      <ref role="3cqZAo" node="1288c6E6$1r" resolve="libraries" />
                    </node>
                    <node concept="liA8E" id="1288c6E6$1K" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="2OqwBi" id="1288c6E6$1L" role="37wK5m">
                        <node concept="2OqwBi" id="1288c6E6$1M" role="2Oq$k0">
                          <node concept="2ShNRf" id="1288c6E6$1N" role="2Oq$k0">
                            <node concept="1pGfFk" id="1288c6E6$1O" role="2ShVmc">
                              <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                              <node concept="37vLTw" id="1288c6E6ITl" role="37wK5m">
                                <ref role="3cqZAo" node="KL8Aql8eFH" resolve="ELEM_LIBRARY" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1288c6E6$1P" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                            <node concept="37vLTw" id="1288c6E6ITx" role="37wK5m">
                              <ref role="3cqZAo" node="KL8Aql8eFt" resolve="NAME" />
                            </node>
                            <node concept="37vLTw" id="1288c6E6$1Q" role="37wK5m">
                              <ref role="3cqZAo" node="1288c6E6$1Y" resolve="key" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1288c6E6$1R" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                          <node concept="37vLTw" id="1288c6E6ITH" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                          </node>
                          <node concept="2OqwBi" id="1288c6E6$1S" role="37wK5m">
                            <node concept="2OqwBi" id="1288c6E6$1T" role="2Oq$k0">
                              <node concept="37vLTw" id="1288c6E6$1U" role="2Oq$k0">
                                <ref role="3cqZAo" node="KL8Aql8eGl" resolve="myLibraries" />
                              </node>
                              <node concept="liA8E" id="1288c6E6$1V" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                <node concept="37vLTw" id="1288c6E6$1W" role="37wK5m">
                                  <ref role="3cqZAo" node="1288c6E6$1Y" resolve="key" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1288c6E6$1X" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1288c6E6$1Y" role="1Duv9x">
                <property role="TrG5h" value="key" />
                <node concept="17QB3L" id="1288c6E6$1Z" role="1tU5fm" />
              </node>
              <node concept="2OqwBi" id="1288c6E6$20" role="1DdaDG">
                <node concept="37vLTw" id="1288c6E6$21" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eGl" resolve="myLibraries" />
                </node>
                <node concept="liA8E" id="1288c6E6$22" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3GGnItM9608" role="3cqZAp">
              <node concept="3clFbS" id="3GGnItM9609" role="2LFqv$">
                <node concept="3clFbF" id="3GGnItM96qh" role="3cqZAp">
                  <node concept="2OqwBi" id="3GGnItM96qv" role="3clFbG">
                    <node concept="37vLTw" id="6tzA4yIoZ4d" role="2Oq$k0">
                      <ref role="3cqZAo" node="1288c6E6$1r" resolve="libraries" />
                    </node>
                    <node concept="liA8E" id="3GGnItM96q_" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="2OqwBi" id="3GGnItM96qE" role="37wK5m">
                        <node concept="2ShNRf" id="3GGnItM96qF" role="2Oq$k0">
                          <node concept="1pGfFk" id="3GGnItM96qG" role="2ShVmc">
                            <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                            <node concept="37vLTw" id="6tzA4yIpcy1" role="37wK5m">
                              <ref role="3cqZAo" node="3GGnItM960t" resolve="ELEM_LIBRARYJAR" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3GGnItM96qI" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                          <node concept="37vLTw" id="6tzA4yIpcCh" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTvxp" role="37wK5m">
                            <ref role="3cqZAo" node="3GGnItM960b" resolve="jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3GGnItM960b" role="1Duv9x">
                <property role="TrG5h" value="jar" />
                <node concept="17QB3L" id="3GGnItM960j" role="1tU5fm" />
              </node>
              <node concept="37vLTw" id="2BHiRxeus9V" role="1DdaDG">
                <ref role="3cqZAo" node="3GGnItM95Yy" resolve="myLibraryJars" />
              </node>
            </node>
            <node concept="3clFbF" id="1288c6E6KOK" role="3cqZAp">
              <node concept="2OqwBi" id="1288c6E6Lkc" role="3clFbG">
                <node concept="37vLTw" id="1288c6E6KOI" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E4wr4" resolve="root" />
                </node>
                <node concept="liA8E" id="1288c6E6Lyy" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="37vLTw" id="1288c6E6L$g" role="37wK5m">
                    <ref role="3cqZAo" node="1288c6E6$1r" resolve="libraries" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6tzA4yIoQxW" role="3clFbw">
            <node concept="3fqX7Q" id="6tzA4yIoTJY" role="3uHU7w">
              <node concept="2OqwBi" id="6tzA4yIoTK0" role="3fr31v">
                <node concept="37vLTw" id="6tzA4yIoTK1" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GGnItM95Yy" resolve="myLibraryJars" />
                </node>
                <node concept="liA8E" id="6tzA4yIoTK2" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="1288c6E6F78" role="3uHU7B">
              <node concept="2OqwBi" id="1288c6E6F79" role="3fr31v">
                <node concept="37vLTw" id="1288c6E6F7a" role="2Oq$k0">
                  <ref role="3cqZAo" node="KL8Aql8eGl" resolve="myLibraries" />
                </node>
                <node concept="liA8E" id="1288c6E6F7b" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6tzA4yIoKLv" role="3cqZAp" />
        <node concept="3clFbJ" id="1288c6E6F7d" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E6F7e" role="3clFbx">
            <node concept="3cpWs8" id="1288c6E6NcS" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E6NcT" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="1288c6E6NcU" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2ShNRf" id="1288c6E6NcV" role="33vP2m">
                  <node concept="1pGfFk" id="1288c6E6NcW" role="2ShVmc">
                    <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="37vLTw" id="1288c6E6Nd7" role="37wK5m">
                      <ref role="3cqZAo" node="6aGZllYVfZl" resolve="ELEM_REPO" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1288c6E6Ndb" role="3cqZAp">
              <node concept="3clFbS" id="1288c6E6Ndc" role="2LFqv$">
                <node concept="3clFbF" id="1288c6E6Ndd" role="3cqZAp">
                  <node concept="2OqwBi" id="1288c6E6Nde" role="3clFbG">
                    <node concept="37vLTw" id="1288c6E6Ndf" role="2Oq$k0">
                      <ref role="3cqZAo" node="1288c6E6NcT" resolve="repo" />
                    </node>
                    <node concept="liA8E" id="1288c6E6Ndg" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="2OqwBi" id="1288c6E6Ndh" role="37wK5m">
                        <node concept="2ShNRf" id="1288c6E6Ndi" role="2Oq$k0">
                          <node concept="1pGfFk" id="1288c6E6Ndj" role="2ShVmc">
                            <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                            <node concept="37vLTw" id="1288c6E6Nd_" role="37wK5m">
                              <ref role="3cqZAo" node="6aGZllYVH_k" resolve="ELEM_REPO_FOLDER" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1288c6E6Ndk" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                          <node concept="37vLTw" id="1288c6E6NdL" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                          </node>
                          <node concept="37vLTw" id="1288c6E6Ndl" role="37wK5m">
                            <ref role="3cqZAo" node="1288c6E6Ndm" resolve="f" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1288c6E6Ndm" role="1Duv9x">
                <property role="TrG5h" value="f" />
                <node concept="3uibUv" id="1288c6E6Ndn" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2OqwBi" id="1288c6E6Ndo" role="1DdaDG">
                <node concept="37vLTw" id="1288c6E6Ndp" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aGZllYTY_Z" resolve="myRepo" />
                </node>
                <node concept="2OwXpG" id="1288c6E6Ndq" role="2OqNvi">
                  <ref role="2Oxat5" node="6aGZllYQuUJ" resolve="folders" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1288c6E6NdN" role="3cqZAp">
              <node concept="3clFbS" id="1288c6E6NdO" role="2LFqv$">
                <node concept="3clFbF" id="1288c6E6NdP" role="3cqZAp">
                  <node concept="2OqwBi" id="1288c6E6NdQ" role="3clFbG">
                    <node concept="37vLTw" id="1288c6E6NdR" role="2Oq$k0">
                      <ref role="3cqZAo" node="1288c6E6NcT" resolve="repo" />
                    </node>
                    <node concept="liA8E" id="1288c6E6NdS" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="2OqwBi" id="1288c6E6NdT" role="37wK5m">
                        <node concept="2ShNRf" id="1288c6E6NdU" role="2Oq$k0">
                          <node concept="1pGfFk" id="1288c6E6NdV" role="2ShVmc">
                            <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                            <node concept="37vLTw" id="1288c6E6Ned" role="37wK5m">
                              <ref role="3cqZAo" node="6aGZllYW3Fz" resolve="ELEM_REPO_MODULEFILE" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1288c6E6NdW" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                          <node concept="37vLTw" id="1288c6E6Nep" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                          </node>
                          <node concept="37vLTw" id="1288c6E6NdX" role="37wK5m">
                            <ref role="3cqZAo" node="1288c6E6NdY" resolve="f" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1288c6E6NdY" role="1Duv9x">
                <property role="TrG5h" value="f" />
                <node concept="3uibUv" id="1288c6E6NdZ" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2OqwBi" id="1288c6E6Ne0" role="1DdaDG">
                <node concept="37vLTw" id="1288c6E6Ne1" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aGZllYTY_Z" resolve="myRepo" />
                </node>
                <node concept="2OwXpG" id="1288c6E6Ne2" role="2OqNvi">
                  <ref role="2Oxat5" node="6aGZllYQt7F" resolve="files" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1288c6E6Q7s" role="3cqZAp">
              <node concept="2OqwBi" id="1288c6E6QXI" role="3clFbG">
                <node concept="37vLTw" id="1288c6E6Q7q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E4wr4" resolve="root" />
                </node>
                <node concept="liA8E" id="1288c6E6Rfr" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="37vLTw" id="1288c6E6RgR" role="37wK5m">
                    <ref role="3cqZAo" node="1288c6E6NcT" resolve="repo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1288c6E6F7h" role="3clFbw">
            <node concept="10Nm6u" id="1288c6E6F7i" role="3uHU7w" />
            <node concept="37vLTw" id="1288c6E6F7j" role="3uHU7B">
              <ref role="3cqZAo" node="6aGZllYTY_Z" resolve="myRepo" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1288c6E4Q74" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E4Q75" role="2LFqv$">
            <node concept="3clFbF" id="1288c6E4Q76" role="3cqZAp">
              <node concept="2OqwBi" id="1288c6E4Q77" role="3clFbG">
                <node concept="37vLTw" id="1288c6E5bau" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E4wr4" resolve="root" />
                </node>
                <node concept="liA8E" id="1288c6E4Q79" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="1288c6E4Q7a" role="37wK5m">
                    <node concept="2OqwBi" id="1288c6E4Q7b" role="2Oq$k0">
                      <node concept="2ShNRf" id="1288c6E4Q7c" role="2Oq$k0">
                        <node concept="1pGfFk" id="1288c6E4Q7d" role="2ShVmc">
                          <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                          <node concept="37vLTw" id="1288c6E4Q7$" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eFp" resolve="ELEM_MACRO" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1288c6E4Q7e" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                        <node concept="37vLTw" id="1288c6E4Q7K" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eFt" resolve="NAME" />
                        </node>
                        <node concept="37vLTw" id="1288c6E4Q7f" role="37wK5m">
                          <ref role="3cqZAo" node="1288c6E4Q7l" resolve="key" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1288c6E4Q7g" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="1288c6E4Q7W" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eFx" resolve="VALUE" />
                      </node>
                      <node concept="2OqwBi" id="1288c6E4Q7h" role="37wK5m">
                        <node concept="37vLTw" id="1288c6E4Q7i" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eGc" resolve="myMacros" />
                        </node>
                        <node concept="liA8E" id="1288c6E4Q7j" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                          <node concept="37vLTw" id="1288c6E4Q7k" role="37wK5m">
                            <ref role="3cqZAo" node="1288c6E4Q7l" resolve="key" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1288c6E4Q7l" role="1Duv9x">
            <property role="TrG5h" value="key" />
            <node concept="17QB3L" id="1288c6E4Q7m" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="1288c6E4Q7n" role="1DdaDG">
            <node concept="37vLTw" id="1288c6E4Q7o" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eGc" resolve="myMacros" />
            </node>
            <node concept="liA8E" id="1288c6E4Q7p" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1288c6E7l2s" role="3cqZAp">
          <node concept="3SKdUq" id="1288c6E7l2u" role="3SKWNk">
            <property role="3SKdUp" value="auxiliary properties one may want to share using this script. They are not interpreted by MPS startup sequence" />
          </node>
        </node>
        <node concept="3SKdUt" id="1288c6E7pBb" role="3cqZAp">
          <node concept="3SKdUq" id="1288c6E7pBd" role="3SKWNk">
            <property role="3SKdUp" value="and therefore shall not be part of the class, perhaps. OTOH, it's quite convenient to keep everything related to values passed between task and worker in a single place." />
          </node>
        </node>
        <node concept="1DcWWT" id="1288c6E4Q6a" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E4Q6b" role="2LFqv$">
            <node concept="3clFbF" id="1288c6E4Q6c" role="3cqZAp">
              <node concept="2OqwBi" id="1288c6E4Q6d" role="3clFbG">
                <node concept="37vLTw" id="1288c6E4RL1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E4wr4" resolve="root" />
                </node>
                <node concept="liA8E" id="1288c6E4Q6f" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                  <node concept="2OqwBi" id="1288c6E4Q6g" role="37wK5m">
                    <node concept="2OqwBi" id="1288c6E4Q6h" role="2Oq$k0">
                      <node concept="2ShNRf" id="1288c6E4Q6i" role="2Oq$k0">
                        <node concept="1pGfFk" id="1288c6E4Q6j" role="2ShVmc">
                          <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                          <node concept="37vLTw" id="1288c6E4Q6E" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eFl" resolve="ELEM_PROPERTY" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1288c6E4Q6k" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                        <node concept="37vLTw" id="1288c6E4Q6Q" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eFt" resolve="NAME" />
                        </node>
                        <node concept="37vLTw" id="1288c6E4Q6l" role="37wK5m">
                          <ref role="3cqZAo" node="1288c6E4Q6r" resolve="key" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1288c6E4Q6m" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="37vLTw" id="1288c6E4Q72" role="37wK5m">
                        <ref role="3cqZAo" node="KL8Aql8eFx" resolve="VALUE" />
                      </node>
                      <node concept="2OqwBi" id="1288c6E4Q6n" role="37wK5m">
                        <node concept="37vLTw" id="1288c6E4Q6o" role="2Oq$k0">
                          <ref role="3cqZAo" node="KL8Aql8eG3" resolve="myProperties" />
                        </node>
                        <node concept="liA8E" id="1288c6E4Q6p" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                          <node concept="37vLTw" id="1288c6E4Q6q" role="37wK5m">
                            <ref role="3cqZAo" node="1288c6E4Q6r" resolve="key" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1288c6E4Q6r" role="1Duv9x">
            <property role="TrG5h" value="key" />
            <node concept="17QB3L" id="1288c6E4Q6s" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="1288c6E4Q6t" role="1DdaDG">
            <node concept="37vLTw" id="1288c6E4Q6u" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eG3" resolve="myProperties" />
            </node>
            <node concept="liA8E" id="1288c6E4Q6v" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1288c6E4pbM" role="1B3o_S" />
      <node concept="3cqZAl" id="1288c6E4sNC" role="3clF45" />
      <node concept="37vLTG" id="1288c6E4wr4" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="1288c6E4wr3" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6E4zPA" role="jymVt" />
    <node concept="3clFb_" id="1288c6E4EV2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="read" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1288c6E4EV5" role="3clF47">
        <node concept="3cpWs8" id="1288c6E81VF" role="3cqZAp">
          <node concept="3cpWsn" id="1288c6E81VG" role="3cpWs9">
            <property role="TrG5h" value="misc" />
            <node concept="3uibUv" id="1288c6E81VA" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2OqwBi" id="1288c6E81VH" role="33vP2m">
              <node concept="37vLTw" id="1288c6E81VI" role="2Oq$k0">
                <ref role="3cqZAo" node="1288c6E4Iy7" resolve="root" />
              </node>
              <node concept="liA8E" id="1288c6E81VJ" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                <node concept="37vLTw" id="1288c6E81VK" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8eF1" resolve="ROOT_TASKDATA" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6E82cq" role="3cqZAp">
          <node concept="37vLTI" id="1288c6E82cr" role="3clFbG">
            <node concept="2OqwBi" id="1288c6E82cs" role="37vLTx">
              <node concept="37vLTw" id="1288c6E82ct" role="2Oq$k0">
                <ref role="3cqZAo" node="1288c6E81VG" resolve="misc" />
              </node>
              <node concept="liA8E" id="1288c6E82cu" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                <node concept="37vLTw" id="1288c6E82cE" role="37wK5m">
                  <ref role="3cqZAo" node="KL8Aql8eF5" resolve="PROP_WORKER" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1288c6E82cv" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFO" resolve="myWorker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6E82cG" role="3cqZAp">
          <node concept="37vLTI" id="1288c6E82cH" role="3clFbG">
            <node concept="37vLTw" id="1288c6E82cI" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFR" resolve="myFailOnError" />
            </node>
            <node concept="2YIFZM" id="1288c6E82cJ" role="37vLTx">
              <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
              <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
              <node concept="2OqwBi" id="1288c6E82cK" role="37wK5m">
                <node concept="37vLTw" id="1288c6E82cL" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E81VG" resolve="misc" />
                </node>
                <node concept="liA8E" id="1288c6E82cM" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                  <node concept="37vLTw" id="1288c6E82cX" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eF9" resolve="PROP_FAILONERROR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1288c6E82cZ" role="3cqZAp">
          <node concept="3cpWsn" id="1288c6E82d0" role="3cpWs9">
            <property role="TrG5h" value="logLevelInt" />
            <node concept="10Oyi0" id="1288c6E82d1" role="1tU5fm" />
            <node concept="2YIFZM" id="1288c6E82d2" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="2OqwBi" id="1288c6E82d3" role="37wK5m">
                <node concept="37vLTw" id="1288c6E82d4" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E81VG" resolve="misc" />
                </node>
                <node concept="liA8E" id="1288c6E82d5" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                  <node concept="37vLTw" id="1288c6E82dg" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eFd" resolve="PROP_LOGLEVEL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6E82di" role="3cqZAp">
          <node concept="37vLTI" id="1288c6E82dj" role="3clFbG">
            <node concept="2YIFZM" id="1288c6E82dk" role="37vLTx">
              <ref role="1Pybhc" to="q7tw:~Level" resolve="Level" />
              <ref role="37wK5l" to="q7tw:~Level.toLevel(int,org.apache.log4j.Level):org.apache.log4j.Level" resolve="toLevel" />
              <node concept="37vLTw" id="1288c6E82dl" role="37wK5m">
                <ref role="3cqZAo" node="1288c6E82d0" resolve="logLevelInt" />
              </node>
              <node concept="10M0yZ" id="1288c6E82dm" role="37wK5m">
                <ref role="1PxDUh" to="q7tw:~Level" resolve="Level" />
                <ref role="3cqZAo" to="q7tw:~Level.INFO" resolve="INFO" />
              </node>
            </node>
            <node concept="37vLTw" id="1288c6E82dn" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFV" resolve="myLogLevel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1288c6E82dy" role="3cqZAp">
          <node concept="37vLTI" id="1288c6E82dz" role="3clFbG">
            <node concept="37vLTw" id="1288c6E82d$" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFZ" resolve="myLoadBootstrapLibraries" />
            </node>
            <node concept="2YIFZM" id="1288c6E82d_" role="37vLTx">
              <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
              <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
              <node concept="2OqwBi" id="1288c6E82dA" role="37wK5m">
                <node concept="37vLTw" id="1288c6E82dB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E81VG" resolve="misc" />
                </node>
                <node concept="liA8E" id="1288c6E82dC" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                  <node concept="37vLTw" id="1288c6E82dN" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eFh" resolve="PROP_LOADBOOTSTRAPLIBRARIES" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1288c6E841L" role="3cqZAp" />
        <node concept="1DcWWT" id="1288c6E8EsB" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E8EsE" role="2LFqv$">
            <node concept="1DcWWT" id="1288c6E8HwS" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E8HwT" role="1Duv9x">
                <property role="TrG5h" value="lib" />
                <node concept="3uibUv" id="1288c6E8HDZ" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
              </node>
              <node concept="2OqwBi" id="1288c6E8Ix9" role="1DdaDG">
                <node concept="37vLTw" id="1288c6E8IoC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E8EsF" resolve="e" />
                </node>
                <node concept="liA8E" id="1288c6E8II2" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                  <node concept="37vLTw" id="1288c6E8JBI" role="37wK5m">
                    <ref role="3cqZAo" node="KL8Aql8eFH" resolve="ELEM_LIBRARY" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1288c6E8HwV" role="2LFqv$">
                <node concept="3cpWs8" id="1288c6E8KyZ" role="3cqZAp">
                  <node concept="3cpWsn" id="1288c6E8Kz0" role="3cpWs9">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="1288c6E8Kz1" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2ShNRf" id="1288c6E8Kz2" role="33vP2m">
                      <node concept="1pGfFk" id="1288c6E8Kz3" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="1288c6E8Kz4" role="37wK5m">
                          <node concept="37vLTw" id="1288c6E8KRn" role="2Oq$k0">
                            <ref role="3cqZAo" node="1288c6E8HwT" resolve="lib" />
                          </node>
                          <node concept="liA8E" id="1288c6E8Kz6" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                            <node concept="37vLTw" id="1288c6E8Kzh" role="37wK5m">
                              <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1288c6E8Kzj" role="3cqZAp">
                  <node concept="1rXfSq" id="1288c6E8Kzk" role="3clFbG">
                    <ref role="37wK5l" node="KL8Aql8eOd" resolve="addLibrary" />
                    <node concept="2OqwBi" id="1288c6E8Kzl" role="37wK5m">
                      <node concept="37vLTw" id="1288c6E8L5b" role="2Oq$k0">
                        <ref role="3cqZAo" node="1288c6E8HwT" resolve="lib" />
                      </node>
                      <node concept="liA8E" id="1288c6E8Kzn" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                        <node concept="37vLTw" id="1288c6E8Kzz" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eFt" resolve="NAME" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1288c6E8Kzo" role="37wK5m">
                      <ref role="3cqZAo" node="1288c6E8Kz0" resolve="file" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="6tzA4yIpcKl" role="3cqZAp">
              <node concept="3cpWsn" id="6tzA4yIpcKm" role="1Duv9x">
                <property role="TrG5h" value="lib" />
                <node concept="3uibUv" id="6tzA4yIpcKn" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
              </node>
              <node concept="2OqwBi" id="6tzA4yIpcKo" role="1DdaDG">
                <node concept="37vLTw" id="6tzA4yIpcKp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E8EsF" resolve="e" />
                </node>
                <node concept="liA8E" id="6tzA4yIpcKq" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                  <node concept="37vLTw" id="6tzA4yIpdGG" role="37wK5m">
                    <ref role="3cqZAo" node="3GGnItM960t" resolve="ELEM_LIBRARYJAR" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6tzA4yIpcKs" role="2LFqv$">
                <node concept="3clFbF" id="6tzA4yIpcKA" role="3cqZAp">
                  <node concept="1rXfSq" id="6tzA4yIpcKB" role="3clFbG">
                    <ref role="37wK5l" node="6tzA4yInV2o" resolve="addLibraryJar" />
                    <node concept="2OqwBi" id="6tzA4yIpcKy" role="37wK5m">
                      <node concept="37vLTw" id="6tzA4yIpcKz" role="2Oq$k0">
                        <ref role="3cqZAo" node="6tzA4yIpcKm" resolve="lib" />
                      </node>
                      <node concept="liA8E" id="6tzA4yIpcK$" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                        <node concept="37vLTw" id="6tzA4yIpein" role="37wK5m">
                          <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1288c6E8EsF" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="1288c6E8EsJ" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
          </node>
          <node concept="2OqwBi" id="1288c6E8EsK" role="1DdaDG">
            <node concept="37vLTw" id="1288c6E8EsL" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E4Iy7" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6E8EsM" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
              <node concept="37vLTw" id="1288c6E8EsN" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eFD" resolve="ELEM_LIBRARIES" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1288c6E8VEh" role="3cqZAp" />
        <node concept="1DcWWT" id="1288c6E8PJv" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E8PJw" role="2LFqv$">
            <node concept="3cpWs8" id="1288c6E93Sw" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E93Sx" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="1288c6E93Sy" role="1tU5fm">
                  <ref role="3uigEE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
                </node>
                <node concept="2ShNRf" id="1288c6E94sN" role="33vP2m">
                  <node concept="HV5vD" id="1288c6E94HI" role="2ShVmc">
                    <ref role="HV5vE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1288c6E8PJx" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E8PJy" role="1Duv9x">
                <property role="TrG5h" value="f" />
                <node concept="3uibUv" id="1288c6E8PJz" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
              </node>
              <node concept="2OqwBi" id="1288c6E8PJ$" role="1DdaDG">
                <node concept="37vLTw" id="1288c6E8PJ_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E8PJT" resolve="e" />
                </node>
                <node concept="liA8E" id="1288c6E8PJA" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                  <node concept="37vLTw" id="1288c6E94Jk" role="37wK5m">
                    <ref role="3cqZAo" node="6aGZllYVH_k" resolve="ELEM_REPO_FOLDER" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1288c6E8PJC" role="2LFqv$">
                <node concept="3clFbF" id="1288c6E97ni" role="3cqZAp">
                  <node concept="2OqwBi" id="1288c6E97Pw" role="3clFbG">
                    <node concept="2OqwBi" id="1288c6E97yg" role="2Oq$k0">
                      <node concept="37vLTw" id="1288c6E97ng" role="2Oq$k0">
                        <ref role="3cqZAo" node="1288c6E93Sx" resolve="repo" />
                      </node>
                      <node concept="2OwXpG" id="1288c6E97AL" role="2OqNvi">
                        <ref role="2Oxat5" node="6aGZllYQuUJ" resolve="folders" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1288c6E98ge" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2OqwBi" id="1288c6E98$a" role="37wK5m">
                        <node concept="37vLTw" id="1288c6E98vm" role="2Oq$k0">
                          <ref role="3cqZAo" node="1288c6E8PJy" resolve="f" />
                        </node>
                        <node concept="liA8E" id="1288c6E99hb" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                          <node concept="37vLTw" id="1288c6E99kJ" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1288c6E99GT" role="3cqZAp">
              <node concept="3cpWsn" id="1288c6E99GU" role="1Duv9x">
                <property role="TrG5h" value="f" />
                <node concept="3uibUv" id="1288c6E99GV" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
              </node>
              <node concept="2OqwBi" id="1288c6E99GW" role="1DdaDG">
                <node concept="37vLTw" id="1288c6E99GX" role="2Oq$k0">
                  <ref role="3cqZAo" node="1288c6E8PJT" resolve="e" />
                </node>
                <node concept="liA8E" id="1288c6E99GY" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                  <node concept="37vLTw" id="1288c6E9b2f" role="37wK5m">
                    <ref role="3cqZAo" node="6aGZllYW3Fz" resolve="ELEM_REPO_MODULEFILE" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1288c6E99H0" role="2LFqv$">
                <node concept="3clFbF" id="1288c6E99H1" role="3cqZAp">
                  <node concept="2OqwBi" id="1288c6E99H2" role="3clFbG">
                    <node concept="2OqwBi" id="1288c6E99H3" role="2Oq$k0">
                      <node concept="37vLTw" id="1288c6E99H4" role="2Oq$k0">
                        <ref role="3cqZAo" node="1288c6E93Sx" resolve="repo" />
                      </node>
                      <node concept="2OwXpG" id="1288c6E9bK7" role="2OqNvi">
                        <ref role="2Oxat5" node="6aGZllYQt7F" resolve="files" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1288c6E99H6" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2OqwBi" id="1288c6E99H7" role="37wK5m">
                        <node concept="37vLTw" id="1288c6E99H8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1288c6E99GU" resolve="f" />
                        </node>
                        <node concept="liA8E" id="1288c6E99H9" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                          <node concept="37vLTw" id="1288c6E99Ha" role="37wK5m">
                            <ref role="3cqZAo" node="KL8Aql8eF_" resolve="PATH" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1288c6E9eJe" role="3cqZAp">
              <node concept="3SKdUq" id="1288c6E9eJg" role="3SKWNk">
                <property role="3SKdUp" value="I know I'm inside a loop, but I don't expect more that 1 &lt;repo&gt; tag" />
              </node>
            </node>
            <node concept="3clFbF" id="1288c6E9cP_" role="3cqZAp">
              <node concept="1rXfSq" id="1288c6E9cPz" role="3clFbG">
                <ref role="37wK5l" node="6aGZllYU5be" resolve="setRepo" />
                <node concept="37vLTw" id="1288c6E9dSK" role="37wK5m">
                  <ref role="3cqZAo" node="1288c6E93Sx" resolve="repo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1288c6E8PJT" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="1288c6E8PJU" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
          </node>
          <node concept="2OqwBi" id="1288c6E8PJV" role="1DdaDG">
            <node concept="37vLTw" id="1288c6E8PJW" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E4Iy7" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6E8PJX" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
              <node concept="37vLTw" id="1288c6E92fN" role="37wK5m">
                <ref role="3cqZAo" node="6aGZllYVfZl" resolve="ELEM_REPO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1288c6E8A_g" role="3cqZAp" />
        <node concept="1DcWWT" id="1288c6E8j8O" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E8j8P" role="2LFqv$">
            <node concept="3clFbF" id="1288c6E84$w" role="3cqZAp">
              <node concept="1rXfSq" id="1288c6E84$x" role="3clFbG">
                <ref role="37wK5l" node="KL8Aql8eNF" resolve="addMacro" />
                <node concept="2OqwBi" id="1288c6E84$y" role="37wK5m">
                  <node concept="37vLTw" id="1288c6E8ltX" role="2Oq$k0">
                    <ref role="3cqZAo" node="1288c6E8j90" resolve="e" />
                  </node>
                  <node concept="liA8E" id="1288c6E84$$" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                    <node concept="37vLTw" id="1288c6E84_L" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8eFt" resolve="NAME" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1288c6E84$_" role="37wK5m">
                  <node concept="37vLTw" id="1288c6E8zjU" role="2Oq$k0">
                    <ref role="3cqZAo" node="1288c6E8j90" resolve="e" />
                  </node>
                  <node concept="liA8E" id="1288c6E84$B" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                    <node concept="37vLTw" id="1288c6E84_X" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8eFx" resolve="VALUE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1288c6E8j90" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="1288c6E8j91" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
          </node>
          <node concept="2OqwBi" id="1288c6E8j92" role="1DdaDG">
            <node concept="37vLTw" id="1288c6E8j93" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E4Iy7" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6E8j94" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
              <node concept="37vLTw" id="6tzA4yIpKZG" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eFp" resolve="ELEM_MACRO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1288c6E84$2" role="3cqZAp">
          <node concept="3clFbS" id="1288c6E84$3" role="2LFqv$">
            <node concept="3clFbF" id="1288c6E84$c" role="3cqZAp">
              <node concept="1rXfSq" id="1288c6E84$d" role="3clFbG">
                <ref role="37wK5l" node="KL8Aql8eN9" resolve="addProperty" />
                <node concept="2OqwBi" id="1288c6E84$e" role="37wK5m">
                  <node concept="37vLTw" id="1288c6E8av1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1288c6E84$M" resolve="e" />
                  </node>
                  <node concept="liA8E" id="1288c6E84$g" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                    <node concept="37vLTw" id="1288c6E84_1" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8eFt" resolve="NAME" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1288c6E84$h" role="37wK5m">
                  <node concept="liA8E" id="1288c6E84$j" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                    <node concept="37vLTw" id="1288c6E84_d" role="37wK5m">
                      <ref role="3cqZAo" node="KL8Aql8eFx" resolve="VALUE" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1288c6E8aRl" role="2Oq$k0">
                    <ref role="3cqZAo" node="1288c6E84$M" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1288c6E84$M" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="1288c6E87jw" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
          </node>
          <node concept="2OqwBi" id="1288c6E84$O" role="1DdaDG">
            <node concept="37vLTw" id="1288c6E85Le" role="2Oq$k0">
              <ref role="3cqZAo" node="1288c6E4Iy7" resolve="root" />
            </node>
            <node concept="liA8E" id="1288c6E84$Q" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
              <node concept="37vLTw" id="1288c6E86lN" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eFl" resolve="ELEM_PROPERTY" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1288c6E4BDi" role="1B3o_S" />
      <node concept="3cqZAl" id="1288c6E4EV0" role="3clF45" />
      <node concept="37vLTG" id="1288c6E4Iy7" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="1288c6E4Iy6" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1288c6E4emd" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eLP" role="jymVt">
      <property role="TrG5h" value="setWorker" />
      <node concept="3cqZAl" id="KL8Aql8eLQ" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eLR" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eLS" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eLT" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eLU" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgkWnv" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eLX" resolve="workerClass" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuVuq" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFO" resolve="myWorker" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eLX" role="3clF46">
        <property role="TrG5h" value="workerClass" />
        <node concept="17QB3L" id="KL8Aql8eLY" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eLZ" role="jymVt">
      <property role="TrG5h" value="getWorker" />
      <node concept="17QB3L" id="KL8Aql8eM0" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eM1" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eM2" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eM3" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuvys" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eFO" resolve="myWorker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eM5" role="jymVt">
      <property role="TrG5h" value="setFailOnError" />
      <node concept="3cqZAl" id="KL8Aql8eM6" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eM7" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eM8" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eM9" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eMa" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmjys" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eMd" resolve="failOnError" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuftv" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFR" resolve="myFailOnError" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eMd" role="3clF46">
        <property role="TrG5h" value="failOnError" />
        <node concept="10P_77" id="KL8Aql8eMe" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eMf" role="jymVt">
      <property role="TrG5h" value="getFailOnError" />
      <node concept="10P_77" id="KL8Aql8eMg" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eMh" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eMi" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eMj" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeut46" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eFR" resolve="myFailOnError" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eMl" role="jymVt">
      <property role="TrG5h" value="setLogLevel" />
      <node concept="3cqZAl" id="KL8Aql8eMm" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eMn" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eMo" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eMp" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eMq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgl82O" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eMt" resolve="logLevel" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuHs7" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFV" resolve="myLogLevel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eMt" role="3clF46">
        <property role="TrG5h" value="logLevel" />
        <node concept="3uibUv" id="KL8Aql8eMu" role="1tU5fm">
          <ref role="3uigEE" to="q7tw:~Level" resolve="Level" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eMv" role="jymVt">
      <property role="TrG5h" value="getLogLevel" />
      <node concept="3uibUv" id="KL8Aql8eMw" role="3clF45">
        <ref role="3uigEE" to="q7tw:~Level" resolve="Level" />
      </node>
      <node concept="3Tm1VV" id="KL8Aql8eMx" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eMy" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eMz" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuKkI" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eFV" resolve="myLogLevel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6aGZllYU5b8" role="jymVt">
      <property role="TrG5h" value="getRepo" />
      <node concept="3uibUv" id="6aGZllYU5b9" role="3clF45">
        <ref role="3uigEE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
      </node>
      <node concept="3Tm1VV" id="6aGZllYU5ba" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYU5bb" role="3clF47">
        <node concept="3clFbF" id="6aGZllYU5bc" role="3cqZAp">
          <node concept="37vLTw" id="6aGZllYU5b7" role="3clFbG">
            <ref role="3cqZAo" node="6aGZllYTY_Z" resolve="myRepo" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6aGZllYU5be" role="jymVt">
      <property role="TrG5h" value="setRepo" />
      <node concept="3cqZAl" id="6aGZllYU5bf" role="3clF45" />
      <node concept="3Tm1VV" id="6aGZllYU5bg" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYU5bh" role="3clF47">
        <node concept="3clFbF" id="6aGZllYU5bi" role="3cqZAp">
          <node concept="37vLTI" id="6aGZllYU5bj" role="3clFbG">
            <node concept="37vLTw" id="6aGZllYU5bk" role="37vLTx">
              <ref role="3cqZAo" node="6aGZllYU5bl" resolve="repo" />
            </node>
            <node concept="37vLTw" id="6aGZllYU5bd" role="37vLTJ">
              <ref role="3cqZAo" node="6aGZllYTY_Z" resolve="myRepo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6aGZllYU5bl" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="6aGZllYU5bm" role="1tU5fm">
          <ref role="3uigEE" node="6aGZllYQgzH" resolve="RepositoryDescriptor" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eM_" role="jymVt">
      <property role="TrG5h" value="setLoadBootstrapLibraries" />
      <node concept="3cqZAl" id="KL8Aql8eMA" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eMB" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eMC" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eMD" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eME" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghiZy" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eMH" resolve="isLoadBootstrapLibraries" />
            </node>
            <node concept="37vLTw" id="2BHiRxeun26" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eFZ" resolve="myLoadBootstrapLibraries" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eMH" role="3clF46">
        <property role="TrG5h" value="isLoadBootstrapLibraries" />
        <node concept="10P_77" id="KL8Aql8eMI" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eMJ" role="jymVt">
      <property role="TrG5h" value="getLoadBootstrapLibraries" />
      <node concept="10P_77" id="KL8Aql8eMK" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eML" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eMM" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eMN" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuWT6" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eFZ" resolve="myLoadBootstrapLibraries" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eMP" role="jymVt">
      <property role="TrG5h" value="setProperties" />
      <node concept="3cqZAl" id="KL8Aql8eMQ" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eMR" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eMS" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eMT" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eMU" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm7mX" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eMX" resolve="properties" />
            </node>
            <node concept="37vLTw" id="2BHiRxeumQY" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eG3" resolve="myProperties" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eMX" role="3clF46">
        <property role="TrG5h" value="properties" />
        <node concept="3uibUv" id="KL8Aql8eMY" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="KL8Aql8eMZ" role="11_B2D" />
          <node concept="17QB3L" id="KL8Aql8eN0" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eN1" role="jymVt">
      <property role="TrG5h" value="getProperties" />
      <node concept="3uibUv" id="KL8Aql8eN2" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8eN3" role="11_B2D" />
        <node concept="17QB3L" id="KL8Aql8eN4" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="KL8Aql8eN5" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eN6" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eN7" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeun7x" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eG3" resolve="myProperties" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eN9" role="jymVt">
      <property role="TrG5h" value="addProperty" />
      <node concept="3cqZAl" id="KL8Aql8eNa" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eNb" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eNc" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eNd" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eNe" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuror" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eG3" resolve="myProperties" />
            </node>
            <node concept="liA8E" id="KL8Aql8eNg" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2BHiRxgmamB" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eNj" resolve="key" />
              </node>
              <node concept="37vLTw" id="2BHiRxgheiB" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eNl" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eNj" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="KL8Aql8eNk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="KL8Aql8eNl" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="KL8Aql8eNm" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eNn" role="jymVt">
      <property role="TrG5h" value="setMacros" />
      <node concept="3cqZAl" id="KL8Aql8eNo" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eNp" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eNq" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eNr" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eNs" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmP7v" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eNv" resolve="macros" />
            </node>
            <node concept="37vLTw" id="2BHiRxeup0n" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eGc" resolve="myMacros" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eNv" role="3clF46">
        <property role="TrG5h" value="macros" />
        <node concept="3uibUv" id="KL8Aql8eNw" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="KL8Aql8eNx" role="11_B2D" />
          <node concept="17QB3L" id="KL8Aql8eNy" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eNz" role="jymVt">
      <property role="TrG5h" value="getMacros" />
      <node concept="3uibUv" id="KL8Aql8eN$" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8eN_" role="11_B2D" />
        <node concept="17QB3L" id="KL8Aql8eNA" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="KL8Aql8eNB" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eNC" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eND" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuNUt" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eGc" resolve="myMacros" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eNF" role="jymVt">
      <property role="TrG5h" value="addMacro" />
      <node concept="3cqZAl" id="KL8Aql8eNG" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eNH" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eNI" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eNJ" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eNK" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyKb" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eGc" resolve="myMacros" />
            </node>
            <node concept="liA8E" id="KL8Aql8eNM" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2BHiRxglJSf" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eNP" resolve="key" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmP4X" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eNR" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eNP" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="KL8Aql8eNQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="KL8Aql8eNR" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="KL8Aql8eNS" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yIov1U" role="jymVt" />
    <node concept="3clFb_" id="KL8Aql8eNT" role="jymVt">
      <property role="TrG5h" value="setLibraries" />
      <node concept="3cqZAl" id="KL8Aql8eNU" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eNV" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eNW" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eNX" role="3cqZAp">
          <node concept="37vLTI" id="KL8Aql8eNY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglliu" role="37vLTx">
              <ref role="3cqZAo" node="KL8Aql8eO1" resolve="libraries" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuu5D" role="37vLTJ">
              <ref role="3cqZAo" node="KL8Aql8eGl" resolve="myLibraries" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eO1" role="3clF46">
        <property role="TrG5h" value="libraries" />
        <node concept="3uibUv" id="KL8Aql8eO2" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="KL8Aql8eO3" role="11_B2D" />
          <node concept="3uibUv" id="KL8Aql8eO4" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eO5" role="jymVt">
      <property role="TrG5h" value="getLibraries" />
      <node concept="3uibUv" id="KL8Aql8eO6" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="KL8Aql8eO7" role="11_B2D" />
        <node concept="3uibUv" id="KL8Aql8eO8" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm1VV" id="KL8Aql8eO9" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eOa" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eOb" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeufAI" role="3clFbG">
            <ref role="3cqZAo" node="KL8Aql8eGl" resolve="myLibraries" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="KL8Aql8eOd" role="jymVt">
      <property role="TrG5h" value="addLibrary" />
      <node concept="3cqZAl" id="KL8Aql8eOe" role="3clF45" />
      <node concept="3Tm1VV" id="KL8Aql8eOf" role="1B3o_S" />
      <node concept="3clFbS" id="KL8Aql8eOg" role="3clF47">
        <node concept="3clFbF" id="KL8Aql8eOh" role="3cqZAp">
          <node concept="2OqwBi" id="KL8Aql8eOi" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeut3l" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8Aql8eGl" resolve="myLibraries" />
            </node>
            <node concept="liA8E" id="KL8Aql8eOk" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2BHiRxghfOF" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eOn" resolve="name" />
              </node>
              <node concept="37vLTw" id="2BHiRxghiJI" role="37wK5m">
                <ref role="3cqZAo" node="KL8Aql8eOp" resolve="library" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="KL8Aql8eOn" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="KL8Aql8eOo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="KL8Aql8eOp" role="3clF46">
        <property role="TrG5h" value="library" />
        <node concept="3uibUv" id="KL8Aql8eOq" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="P$JXv" id="6tzA4yIpetL" role="lGtFl">
        <node concept="TZ5HA" id="6tzA4yIpetM" role="TZ5H$">
          <node concept="1dT_AC" id="6tzA4yIpetN" role="1dT_Ay">
            <property role="1dT_AB" value="XXX seems to be identical to library jar, both end up in EnvironmentConfig.addLib(). Deprecate?" />
          </node>
        </node>
        <node concept="TUZQ0" id="6tzA4yIpetO" role="3nqlJM">
          <property role="TUZQ4" value="unused" />
          <node concept="zr_55" id="6tzA4yIpetQ" role="zr_5Q">
            <ref role="zr_51" node="KL8Aql8eOn" resolve="name" />
          </node>
        </node>
        <node concept="TUZQ0" id="6tzA4yIpetR" role="3nqlJM">
          <property role="TUZQ4" value="library location" />
          <node concept="zr_55" id="6tzA4yIpetT" role="zr_5Q">
            <ref role="zr_51" node="KL8Aql8eOp" resolve="library" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tzA4yInSfq" role="jymVt" />
    <node concept="3clFb_" id="6tzA4yInV2o" role="jymVt">
      <property role="TrG5h" value="addLibraryJar" />
      <node concept="3cqZAl" id="6tzA4yInV2p" role="3clF45" />
      <node concept="3Tm1VV" id="6tzA4yInV2q" role="1B3o_S" />
      <node concept="3clFbS" id="6tzA4yInV2r" role="3clF47">
        <node concept="3clFbF" id="6tzA4yInV2s" role="3cqZAp">
          <node concept="2OqwBi" id="6tzA4yInV2t" role="3clFbG">
            <node concept="37vLTw" id="6tzA4yIoios" role="2Oq$k0">
              <ref role="3cqZAo" node="3GGnItM95Yy" resolve="myLibraryJars" />
            </node>
            <node concept="liA8E" id="6tzA4yInV2v" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="6tzA4yInV2w" role="37wK5m">
                <ref role="3cqZAo" node="6tzA4yInV2x" resolve="libraryJar" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6tzA4yInV2x" role="3clF46">
        <property role="TrG5h" value="libraryJar" />
        <node concept="17QB3L" id="6tzA4yInV2y" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6tzA4yInV2z" role="jymVt">
      <property role="TrG5h" value="getLibraryJars" />
      <node concept="3Tm1VV" id="6tzA4yInV2$" role="1B3o_S" />
      <node concept="3clFbS" id="6tzA4yInV2_" role="3clF47">
        <node concept="3clFbF" id="6tzA4yIopf_" role="3cqZAp">
          <node concept="37vLTw" id="6tzA4yIopfB" role="3clFbG">
            <ref role="3cqZAo" node="3GGnItM95Yy" resolve="myLibraryJars" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6tzA4yInV2D" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="6tzA4yInV2E" role="11_B2D" />
      </node>
    </node>
    <node concept="3UR2Jj" id="6aGZllYTPlT" role="lGtFl">
      <node concept="TZ5HA" id="6aGZllYTPlU" role="TZ5H$">
        <node concept="1dT_AC" id="6aGZllYTPlV" role="1dT_Ay">
          <property role="1dT_AB" value="Keeps properties necessary to start an MPS instance and to execute a worker class within this new instance. " />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E4lyv" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E4lyw" role="1dT_Ay">
          <property role="1dT_AB" value="Primary purpose is to supply persistence of the attributes to ensure they get passed between Java process boundaries." />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E4lzK" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E4lzL" role="1dT_Ay">
          <property role="1dT_AB" value="Primary scenario for this class is to get MPS started in a dtinct setup (e.g. by configuring IdeaEnvionment with EnvironmentConfig which gets populated with the properties serialized by this class)" />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E4lxg" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E4lxh" role="1dT_Ay">
          <property role="1dT_AB" value="Unlike Script counterpart, doesn't know anything about specific ant tasks and their possible arguments." />
        </node>
      </node>
      <node concept="TZ5HA" id="6tzA4yIoF9Q" role="TZ5H$">
        <node concept="1dT_AC" id="6tzA4yIoF9R" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="6tzA4yIoFcA" role="TZ5H$">
        <node concept="1dT_AC" id="6tzA4yIoFcB" role="1dT_Ay">
          <property role="1dT_AB" value="Collections are returned by-reference and could be modified from outside (this class is just a data holder + persistence)" />
        </node>
      </node>
      <node concept="TZ5HA" id="6tzA4yIoFbd" role="TZ5H$">
        <node concept="1dT_AC" id="6tzA4yIoFbe" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E4lxa" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E4lxb" role="1dT_Ay">
          <property role="1dT_AB" value="FIXME deserves better name" />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E9nWU" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E9nWV" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E9o4i" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E9o4j" role="1dT_Ay">
          <property role="1dT_AB" value="FIXME auxiliary properties are likely not part of MPS statup sequence" />
        </node>
      </node>
      <node concept="TZ5HA" id="1288c6E9obG" role="TZ5H$">
        <node concept="1dT_AC" id="1288c6E9obH" role="1dT_Ay">
          <property role="1dT_AB" value="FIXME myLibraries - what the hell is 'name' key, and do I really want to stick to File there provided I may use macro values as part of a library path" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2doG_VG50$M">
    <property role="TrG5h" value="IMessageFormat" />
    <node concept="3Tm1VV" id="2doG_VG50$N" role="1B3o_S" />
    <node concept="3clFb_" id="2doG_VG50$O" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="escapeBuildMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50$P" role="1B3o_S" />
      <node concept="3uibUv" id="2doG_VG50$Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
      </node>
      <node concept="37vLTG" id="2doG_VG50$R" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2doG_VG50$S" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
        </node>
        <node concept="2AHcQZ" id="2doG_VG50$T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50$U" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50$V" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="escapeBuildMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50$W" role="1B3o_S" />
      <node concept="17QB3L" id="2doG_VG50$X" role="3clF45" />
      <node concept="37vLTG" id="2doG_VG50$Y" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2doG_VG50$Z" role="1tU5fm" />
        <node concept="2AHcQZ" id="2doG_VG50_0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50_1" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50_2" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getLinesSeparator" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50_3" role="1B3o_S" />
      <node concept="17QB3L" id="2doG_VG50_4" role="3clF45" />
      <node concept="3clFbS" id="2doG_VG50_5" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50_6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="formatTestStart" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50_7" role="1B3o_S" />
      <node concept="17QB3L" id="2doG_VG50_8" role="3clF45" />
      <node concept="37vLTG" id="2doG_VG50_9" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2doG_VG50_a" role="1tU5fm" />
        <node concept="2AHcQZ" id="2doG_VG50_b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50_c" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50_d" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="formatTestFinish" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50_e" role="1B3o_S" />
      <node concept="17QB3L" id="2doG_VG50_f" role="3clF45" />
      <node concept="37vLTG" id="2doG_VG50_g" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2doG_VG50_h" role="1tU5fm" />
        <node concept="2AHcQZ" id="2doG_VG50_i" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50_j" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50_k" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="formatTestFailure" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50_l" role="1B3o_S" />
      <node concept="3uibUv" id="2doG_VG50_m" role="3clF45">
        <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
      </node>
      <node concept="37vLTG" id="2doG_VG50_n" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2doG_VG50_o" role="1tU5fm" />
        <node concept="2AHcQZ" id="2doG_VG50_p" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2doG_VG50_q" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2doG_VG50_r" role="1tU5fm" />
        <node concept="2AHcQZ" id="2doG_VG50_s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2doG_VG50_t" role="3clF46">
        <property role="TrG5h" value="details" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2doG_VG50_u" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
        <node concept="2AHcQZ" id="2doG_VG50_v" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50_w" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50_x" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isBuildServerMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50_y" role="1B3o_S" />
      <node concept="10P_77" id="2doG_VG50_z" role="3clF45" />
      <node concept="37vLTG" id="2doG_VG50_$" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2doG_VG50__" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
        <node concept="2AHcQZ" id="2doG_VG50_A" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50_B" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2doG_VG50_C" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="hasContinuation" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2doG_VG50_D" role="1B3o_S" />
      <node concept="10Oyi0" id="2doG_VG50_E" role="3clF45" />
      <node concept="37vLTG" id="2doG_VG50_F" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2doG_VG50_G" role="1tU5fm" />
        <node concept="2AHcQZ" id="2doG_VG50_H" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2doG_VG50_I" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="6R7vamttxmq">
    <property role="TrG5h" value="TeamCityMessageFormat" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="6R7vamttxmr" role="1B3o_S" />
    <node concept="3uibUv" id="6R7vamttxms" role="EKbjA">
      <ref role="3uigEE" node="2doG_VG50$M" resolve="IMessageFormat" />
    </node>
    <node concept="Wx3nA" id="6R7vamttxmt" role="jymVt">
      <property role="TrG5h" value="LINES_SEPARATOR" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6R7vamttxmu" role="1tU5fm" />
      <node concept="3Tm6S6" id="6R7vamttxmv" role="1B3o_S" />
      <node concept="Xl_RD" id="6R7vamttxmw" role="33vP2m">
        <property role="Xl_RC" value="|n" />
      </node>
    </node>
    <node concept="Wx3nA" id="6R7vamttxmx" role="jymVt">
      <property role="TrG5h" value="SERVER_PREFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6R7vamttxmy" role="1tU5fm" />
      <node concept="3Tm6S6" id="6R7vamttxmz" role="1B3o_S" />
      <node concept="Xl_RD" id="6R7vamttxm$" role="33vP2m">
        <property role="Xl_RC" value="##teamcity[" />
      </node>
    </node>
    <node concept="Wx3nA" id="6R7vamttxm_" role="jymVt">
      <property role="TrG5h" value="SERVER_TEST_FAILED_PREFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6R7vamttxmA" role="1tU5fm" />
      <node concept="3Tm6S6" id="6R7vamttxmB" role="1B3o_S" />
      <node concept="Xl_RD" id="6R7vamttxmC" role="33vP2m">
        <property role="Xl_RC" value="##teamcity[testFailed" />
      </node>
    </node>
    <node concept="3clFbW" id="6R7vamttxmD" role="jymVt">
      <node concept="3Tm1VV" id="6R7vamttxmE" role="1B3o_S" />
      <node concept="3cqZAl" id="6R7vamttxmF" role="3clF45" />
      <node concept="3clFbS" id="6R7vamttxmG" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6R7vamttxmH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="escapeBuildMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxmI" role="1B3o_S" />
      <node concept="17QB3L" id="6R7vamttxmJ" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxmK" role="3clF46">
        <property role="TrG5h" value="rawMessage" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxmL" role="1tU5fm" />
        <node concept="2AHcQZ" id="6R7vamttxmM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxmN" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxmO" role="3cqZAp">
          <node concept="2OqwBi" id="6R7vamttxmP" role="3cqZAk">
            <node concept="2OqwBi" id="6R7vamttxmQ" role="2Oq$k0">
              <node concept="2OqwBi" id="6R7vamttxmR" role="2Oq$k0">
                <node concept="2OqwBi" id="6R7vamttxmS" role="2Oq$k0">
                  <node concept="2OqwBi" id="6R7vamttxmT" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmoyr" role="2Oq$k0">
                      <ref role="3cqZAo" node="6R7vamttxmK" resolve="rawMessage" />
                    </node>
                    <node concept="liA8E" id="6R7vamttxmV" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" resolve="replace" />
                      <node concept="Xl_RD" id="6R7vamttxmW" role="37wK5m">
                        <property role="Xl_RC" value="|" />
                      </node>
                      <node concept="Xl_RD" id="6R7vamttxmX" role="37wK5m">
                        <property role="Xl_RC" value="||" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6R7vamttxmY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" resolve="replace" />
                    <node concept="Xl_RD" id="6R7vamttxmZ" role="37wK5m">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="Xl_RD" id="6R7vamttxn0" role="37wK5m">
                      <property role="Xl_RC" value="|'" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6R7vamttxn1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" resolve="replace" />
                  <node concept="Xl_RD" id="6R7vamttxn2" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeoe4S" role="37wK5m">
                    <ref role="3cqZAo" node="6R7vamttxmt" resolve="LINES_SEPARATOR" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6R7vamttxn4" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" resolve="replace" />
                <node concept="Xl_RD" id="6R7vamttxn5" role="37wK5m">
                  <property role="Xl_RC" value="\r" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxn6" role="37wK5m">
                  <property role="Xl_RC" value="|r" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6R7vamttxn7" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" resolve="replace" />
              <node concept="Xl_RD" id="6R7vamttxn8" role="37wK5m">
                <property role="Xl_RC" value="]" />
              </node>
              <node concept="Xl_RD" id="6R7vamttxn9" role="37wK5m">
                <property role="Xl_RC" value="|]" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Lj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxna" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="escapeBuildMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxnb" role="1B3o_S" />
      <node concept="3uibUv" id="6R7vamttxnc" role="3clF45">
        <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
      </node>
      <node concept="37vLTG" id="6R7vamttxnd" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6R7vamttxne" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
        </node>
        <node concept="2AHcQZ" id="6R7vamttxnf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxng" role="3clF47">
        <node concept="3cpWs8" id="6R7vamttxnh" role="3cqZAp">
          <node concept="3cpWsn" id="6R7vamttxni" role="3cpWs9">
            <property role="TrG5h" value="replacements" />
            <property role="3TUv4t" value="false" />
            <node concept="10Q1$e" id="6R7vamttxnj" role="1tU5fm">
              <node concept="17QB3L" id="6R7vamttxnk" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="6R7vamttxnl" role="33vP2m">
              <node concept="3g6Rrh" id="6R7vamttxnm" role="2ShVmc">
                <node concept="Xl_RD" id="6R7vamttxnn" role="3g7hyw">
                  <property role="Xl_RC" value="\\|" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxno" role="3g7hyw">
                  <property role="Xl_RC" value="||" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnp" role="3g7hyw">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnq" role="3g7hyw">
                  <property role="Xl_RC" value="|'" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnr" role="3g7hyw">
                  <property role="Xl_RC" value="\n" />
                </node>
                <node concept="37vLTw" id="2BHiRxeoflG" role="3g7hyw">
                  <ref role="3cqZAo" node="6R7vamttxmt" resolve="LINES_SEPARATOR" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnt" role="3g7hyw">
                  <property role="Xl_RC" value="\r" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnu" role="3g7hyw">
                  <property role="Xl_RC" value="|r" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnv" role="3g7hyw">
                  <property role="Xl_RC" value="]" />
                </node>
                <node concept="Xl_RD" id="6R7vamttxnw" role="3g7hyw">
                  <property role="Xl_RC" value="|]" />
                </node>
                <node concept="17QB3L" id="6R7vamttxnx" role="3g7fb8" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="6R7vamttxny" role="3cqZAp">
          <node concept="3cpWsn" id="6R7vamttxnz" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <property role="3TUv4t" value="false" />
            <node concept="10Oyi0" id="6R7vamttxn$" role="1tU5fm" />
            <node concept="3cmrfG" id="6R7vamttxn_" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="6R7vamttxnA" role="1Dwp0S">
            <node concept="37vLTw" id="3GM_nagTBEG" role="3uHU7B">
              <ref role="3cqZAo" node="6R7vamttxnz" resolve="i" />
            </node>
            <node concept="2OqwBi" id="6R7vamttxnC" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTxAn" role="2Oq$k0">
                <ref role="3cqZAo" node="6R7vamttxni" resolve="replacements" />
              </node>
              <node concept="1Rwk04" id="6R7vamttxnE" role="2OqNvi" />
            </node>
          </node>
          <node concept="d57v9" id="6R7vamttxnF" role="1Dwrff">
            <node concept="37vLTw" id="3GM_nagT$TG" role="37vLTJ">
              <ref role="3cqZAo" node="6R7vamttxnz" resolve="i" />
            </node>
            <node concept="3cmrfG" id="6R7vamttxnH" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
          <node concept="3clFbS" id="6R7vamttxnI" role="2LFqv$">
            <node concept="3cpWs8" id="6R7vamttxnJ" role="3cqZAp">
              <node concept="3cpWsn" id="6R7vamttxnK" role="3cpWs9">
                <property role="TrG5h" value="newMessage" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="6R7vamttxnL" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
                </node>
                <node concept="2ShNRf" id="6R7vamttxnM" role="33vP2m">
                  <node concept="1pGfFk" id="6R7vamttxnN" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;(int)" resolve="StringBuffer" />
                    <node concept="2OqwBi" id="6R7vamttxnO" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxgm1Ld" role="2Oq$k0">
                        <ref role="3cqZAo" node="6R7vamttxnd" resolve="message" />
                      </node>
                      <node concept="liA8E" id="6R7vamttxnQ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuffer.length():int" resolve="length" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6R7vamttxnR" role="3cqZAp">
              <node concept="3cpWsn" id="6R7vamttxnS" role="3cpWs9">
                <property role="TrG5h" value="p" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="6R7vamttxnT" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
                </node>
                <node concept="2YIFZM" id="6R7vamttxnU" role="33vP2m">
                  <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                  <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String):java.util.regex.Pattern" resolve="compile" />
                  <node concept="AH0OO" id="6R7vamttxnV" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTyk9" role="AHHXb">
                      <ref role="3cqZAo" node="6R7vamttxni" resolve="replacements" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTvAu" role="AHEQo">
                      <ref role="3cqZAo" node="6R7vamttxnz" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6R7vamttxnY" role="3cqZAp">
              <node concept="3cpWsn" id="6R7vamttxnZ" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="6R7vamttxo0" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
                </node>
                <node concept="2OqwBi" id="6R7vamttxo1" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTzMF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxnS" resolve="p" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxo3" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence):java.util.regex.Matcher" resolve="matcher" />
                    <node concept="37vLTw" id="2BHiRxgkW_k" role="37wK5m">
                      <ref role="3cqZAo" node="6R7vamttxnd" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6R7vamttxo5" role="3cqZAp">
              <node concept="3cpWsn" id="6R7vamttxo6" role="3cpWs9">
                <property role="TrG5h" value="found" />
                <property role="3TUv4t" value="false" />
                <node concept="10P_77" id="6R7vamttxo7" role="1tU5fm" />
                <node concept="3clFbT" id="6R7vamttxo8" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="6R7vamttxo9" role="3cqZAp">
              <node concept="2OqwBi" id="6R7vamttxoa" role="2$JKZa">
                <node concept="37vLTw" id="3GM_nagTvgr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6R7vamttxnZ" resolve="m" />
                </node>
                <node concept="liA8E" id="6R7vamttxoc" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.find():boolean" resolve="find" />
                </node>
              </node>
              <node concept="3clFbS" id="6R7vamttxod" role="2LFqv$">
                <node concept="3clFbF" id="6R7vamttxoe" role="3cqZAp">
                  <node concept="37vLTI" id="6R7vamttxof" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT$Df" role="37vLTJ">
                      <ref role="3cqZAo" node="6R7vamttxo6" resolve="found" />
                    </node>
                    <node concept="3clFbT" id="6R7vamttxoh" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6R7vamttxoi" role="3cqZAp">
                  <node concept="2OqwBi" id="6R7vamttxoj" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTzaQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6R7vamttxnZ" resolve="m" />
                    </node>
                    <node concept="liA8E" id="6R7vamttxol" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.appendReplacement(java.lang.StringBuffer,java.lang.String):java.util.regex.Matcher" resolve="appendReplacement" />
                      <node concept="37vLTw" id="3GM_nagTtKb" role="37wK5m">
                        <ref role="3cqZAo" node="6R7vamttxnK" resolve="newMessage" />
                      </node>
                      <node concept="AH0OO" id="6R7vamttxon" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTwE7" role="AHHXb">
                          <ref role="3cqZAo" node="6R7vamttxni" resolve="replacements" />
                        </node>
                        <node concept="3cpWs3" id="6R7vamttxop" role="AHEQo">
                          <node concept="37vLTw" id="3GM_nagT$ay" role="3uHU7B">
                            <ref role="3cqZAo" node="6R7vamttxnz" resolve="i" />
                          </node>
                          <node concept="3cmrfG" id="6R7vamttxor" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6R7vamttxos" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTtqp" role="3clFbw">
                <ref role="3cqZAo" node="6R7vamttxo6" resolve="found" />
              </node>
              <node concept="3clFbS" id="6R7vamttxou" role="3clFbx">
                <node concept="3clFbF" id="6R7vamttxov" role="3cqZAp">
                  <node concept="2OqwBi" id="6R7vamttxow" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT$oQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6R7vamttxnZ" resolve="m" />
                    </node>
                    <node concept="liA8E" id="6R7vamttxoy" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.appendTail(java.lang.StringBuffer):java.lang.StringBuffer" resolve="appendTail" />
                      <node concept="37vLTw" id="3GM_nagTAsF" role="37wK5m">
                        <ref role="3cqZAo" node="6R7vamttxnK" resolve="newMessage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6R7vamttxo$" role="3cqZAp">
                  <node concept="37vLTI" id="6R7vamttxo_" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxghgio" role="37vLTJ">
                      <ref role="3cqZAo" node="6R7vamttxnd" resolve="message" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTssN" role="37vLTx">
                      <ref role="3cqZAo" node="6R7vamttxnK" resolve="newMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6R7vamttxoC" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgkWzJ" role="3cqZAk">
            <ref role="3cqZAo" node="6R7vamttxnd" resolve="message" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Lm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxoE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLinesSeparator" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxoF" role="1B3o_S" />
      <node concept="17QB3L" id="6R7vamttxoG" role="3clF45" />
      <node concept="3clFbS" id="6R7vamttxoH" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxoI" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeolZ_" role="3cqZAk">
            <ref role="3cqZAo" node="6R7vamttxmt" resolve="LINES_SEPARATOR" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Ll" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxoK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="formatTestStart" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxoL" role="1B3o_S" />
      <node concept="17QB3L" id="6R7vamttxoM" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxoN" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxoO" role="1tU5fm" />
        <node concept="2AHcQZ" id="6R7vamttxoP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxoQ" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxoR" role="3cqZAp">
          <node concept="3cpWs3" id="6R7vamttxoS" role="3cqZAk">
            <node concept="3cpWs3" id="6R7vamttxoT" role="3uHU7B">
              <node concept="Xl_RD" id="6R7vamttxoU" role="3uHU7B">
                <property role="Xl_RC" value="##teamcity[testStarted name='" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmaQb" role="3uHU7w">
                <ref role="3cqZAo" node="6R7vamttxoN" resolve="testName" />
              </node>
            </node>
            <node concept="Xl_RD" id="6R7vamttxoW" role="3uHU7w">
              <property role="Xl_RC" value="' captureStandardOutput='true']" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Lg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxoX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="formatTestFinish" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxoY" role="1B3o_S" />
      <node concept="17QB3L" id="6R7vamttxoZ" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxp0" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxp1" role="1tU5fm" />
        <node concept="2AHcQZ" id="6R7vamttxp2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxp3" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxp4" role="3cqZAp">
          <node concept="3cpWs3" id="6R7vamttxp5" role="3cqZAk">
            <node concept="3cpWs3" id="6R7vamttxp6" role="3uHU7B">
              <node concept="Xl_RD" id="6R7vamttxp7" role="3uHU7B">
                <property role="Xl_RC" value="##teamcity[testFinished name='" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmafL" role="3uHU7w">
                <ref role="3cqZAo" node="6R7vamttxp0" resolve="testName" />
              </node>
            </node>
            <node concept="Xl_RD" id="6R7vamttxp9" role="3uHU7w">
              <property role="Xl_RC" value="']" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Lk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxpa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="formatTestFailure" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxpb" role="1B3o_S" />
      <node concept="17QB3L" id="6R7vamttxpc" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxpd" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxpe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6R7vamttxpf" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxpg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6R7vamttxph" role="3clF46">
        <property role="TrG5h" value="detailes" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxpi" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6R7vamttxpj" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxpk" role="3cqZAp">
          <node concept="3cpWs3" id="6R7vamttxpl" role="3cqZAk">
            <node concept="3cpWs3" id="6R7vamttxpm" role="3uHU7B">
              <node concept="3cpWs3" id="6R7vamttxpn" role="3uHU7B">
                <node concept="3cpWs3" id="6R7vamttxpo" role="3uHU7B">
                  <node concept="3cpWs3" id="6R7vamttxpp" role="3uHU7B">
                    <node concept="3cpWs3" id="6R7vamttxpq" role="3uHU7B">
                      <node concept="Xl_RD" id="6R7vamttxpr" role="3uHU7B">
                        <property role="Xl_RC" value="##teamcity[testFailed name='" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgmCnE" role="3uHU7w">
                        <ref role="3cqZAo" node="6R7vamttxpd" resolve="testName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6R7vamttxpt" role="3uHU7w">
                      <property role="Xl_RC" value="' message='" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxglB7H" role="3uHU7w">
                    <ref role="3cqZAo" node="6R7vamttxpf" resolve="message" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6R7vamttxpv" role="3uHU7w">
                  <property role="Xl_RC" value="' details='" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgluM_" role="3uHU7w">
                <ref role="3cqZAo" node="6R7vamttxph" resolve="detailes" />
              </node>
            </node>
            <node concept="Xl_RD" id="6R7vamttxpx" role="3uHU7w">
              <property role="Xl_RC" value="']" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxpy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="formatTestFailure" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxpz" role="1B3o_S" />
      <node concept="3uibUv" id="6R7vamttxp$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
      </node>
      <node concept="37vLTG" id="6R7vamttxp_" role="3clF46">
        <property role="TrG5h" value="testName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxpA" role="1tU5fm" />
        <node concept="2AHcQZ" id="6R7vamttxpB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6R7vamttxpC" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxpD" role="1tU5fm" />
        <node concept="2AHcQZ" id="6R7vamttxpE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6R7vamttxpF" role="3clF46">
        <property role="TrG5h" value="details" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6R7vamttxpG" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
        <node concept="2AHcQZ" id="6R7vamttxpH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxpI" role="3clF47">
        <node concept="3cpWs8" id="6R7vamttxpJ" role="3cqZAp">
          <node concept="3cpWsn" id="6R7vamttxpK" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="6R7vamttxpL" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
            </node>
            <node concept="2ShNRf" id="6R7vamttxpM" role="33vP2m">
              <node concept="1pGfFk" id="6R7vamttxpN" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;()" resolve="StringBuffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6R7vamttxpO" role="3cqZAp">
          <node concept="2OqwBi" id="6R7vamttxpP" role="3clFbG">
            <node concept="2OqwBi" id="6R7vamttxpQ" role="2Oq$k0">
              <node concept="2OqwBi" id="6R7vamttxpR" role="2Oq$k0">
                <node concept="2OqwBi" id="6R7vamttxpS" role="2Oq$k0">
                  <node concept="2OqwBi" id="6R7vamttxpT" role="2Oq$k0">
                    <node concept="2OqwBi" id="6R7vamttxpU" role="2Oq$k0">
                      <node concept="2OqwBi" id="6R7vamttxpV" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTzjo" role="2Oq$k0">
                          <ref role="3cqZAo" node="6R7vamttxpK" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="6R7vamttxpX" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                          <node concept="Xl_RD" id="6R7vamttxpY" role="37wK5m">
                            <property role="Xl_RC" value="##teamcity[testFailed name='" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6R7vamttxpZ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                        <node concept="37vLTw" id="2BHiRxgmkjl" role="37wK5m">
                          <ref role="3cqZAo" node="6R7vamttxp_" resolve="testName" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6R7vamttxq1" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                      <node concept="Xl_RD" id="6R7vamttxq2" role="37wK5m">
                        <property role="Xl_RC" value="' message='" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6R7vamttxq3" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                    <node concept="37vLTw" id="2BHiRxgmFz_" role="37wK5m">
                      <ref role="3cqZAo" node="6R7vamttxpC" resolve="message" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6R7vamttxq5" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                  <node concept="Xl_RD" id="6R7vamttxq6" role="37wK5m">
                    <property role="Xl_RC" value="' details='" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6R7vamttxq7" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.CharSequence):java.lang.StringBuffer" resolve="append" />
                <node concept="37vLTw" id="2BHiRxgmwW2" role="37wK5m">
                  <ref role="3cqZAo" node="6R7vamttxpF" resolve="details" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6R7vamttxq9" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
              <node concept="Xl_RD" id="6R7vamttxqa" role="37wK5m">
                <property role="Xl_RC" value="']" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6R7vamttxqb" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTtOT" role="3cqZAk">
            <ref role="3cqZAo" node="6R7vamttxpK" resolve="sb" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Li" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxqd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isBuildServerMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxqe" role="1B3o_S" />
      <node concept="10P_77" id="6R7vamttxqf" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxqg" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6R7vamttxqh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
        <node concept="2AHcQZ" id="6R7vamttxqi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxqj" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxqk" role="3cqZAp">
          <node concept="1Wc70l" id="6R7vamttxql" role="3cqZAk">
            <node concept="1eOMI4" id="6R7vamttxqm" role="3uHU7B">
              <node concept="2d3UOw" id="6R7vamttxqn" role="1eOMHV">
                <node concept="2OqwBi" id="6R7vamttxqo" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxglyIy" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxqg" resolve="message" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxqq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~CharSequence.length():int" resolve="length" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6R7vamttxqr" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxeoqCo" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxmx" resolve="SERVER_PREFIX" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxqt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6R7vamttxqu" role="3uHU7w">
              <node concept="2OqwBi" id="6R7vamttxqv" role="2Oq$k0">
                <node concept="2OqwBi" id="6R7vamttxqw" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmzEz" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxqg" resolve="message" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxqy" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~CharSequence.subSequence(int,int):java.lang.CharSequence" resolve="subSequence" />
                    <node concept="3cmrfG" id="6R7vamttxqz" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="6R7vamttxq$" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxeorGa" role="2Oq$k0">
                        <ref role="3cqZAo" node="6R7vamttxmx" resolve="SERVER_PREFIX" />
                      </node>
                      <node concept="liA8E" id="6R7vamttxqA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6R7vamttxqB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~CharSequence.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
              <node concept="liA8E" id="6R7vamttxqC" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="2BHiRxeogS4" role="37wK5m">
                  <ref role="3cqZAo" node="6R7vamttxmx" resolve="SERVER_PREFIX" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Lf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxqE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hasContinuation" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxqF" role="1B3o_S" />
      <node concept="10Oyi0" id="6R7vamttxqG" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxqH" role="3clF46">
        <property role="TrG5h" value="message" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="6R7vamttxqI" role="1tU5fm" />
        <node concept="2AHcQZ" id="6R7vamttxqJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxqK" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxqL" role="3cqZAp">
          <node concept="3K4zz7" id="6R7vamttxqM" role="3cqZAk">
            <node concept="2OqwBi" id="6R7vamttxqN" role="3K4Cdx">
              <node concept="37vLTw" id="2BHiRxgllaA" role="2Oq$k0">
                <ref role="3cqZAo" node="6R7vamttxqH" resolve="message" />
              </node>
              <node concept="liA8E" id="6R7vamttxqP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                <node concept="Xl_RD" id="6R7vamttxqQ" role="37wK5m">
                  <property role="Xl_RC" value="\\" />
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="6R7vamttxqR" role="3K4E3e">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3cmrfG" id="6R7vamttxqS" role="3K4GZi">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6Lh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6R7vamttxqT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isTestFailMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6R7vamttxqU" role="1B3o_S" />
      <node concept="10P_77" id="6R7vamttxqV" role="3clF45" />
      <node concept="37vLTG" id="6R7vamttxqW" role="3clF46">
        <property role="TrG5h" value="text" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6R7vamttxqX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
      </node>
      <node concept="3clFbS" id="6R7vamttxqY" role="3clF47">
        <node concept="3cpWs6" id="6R7vamttxqZ" role="3cqZAp">
          <node concept="1Wc70l" id="6R7vamttxr0" role="3cqZAk">
            <node concept="1eOMI4" id="6R7vamttxr1" role="3uHU7B">
              <node concept="2d3UOw" id="6R7vamttxr2" role="1eOMHV">
                <node concept="2OqwBi" id="6R7vamttxr3" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxglEsV" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxqW" resolve="text" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxr5" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~CharSequence.length():int" resolve="length" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6R7vamttxr6" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxeor0G" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxm_" resolve="SERVER_TEST_FAILED_PREFIX" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxr8" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6R7vamttxr9" role="3uHU7w">
              <node concept="2OqwBi" id="6R7vamttxra" role="2Oq$k0">
                <node concept="2OqwBi" id="6R7vamttxrb" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmyUA" role="2Oq$k0">
                    <ref role="3cqZAo" node="6R7vamttxqW" resolve="text" />
                  </node>
                  <node concept="liA8E" id="6R7vamttxrd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~CharSequence.subSequence(int,int):java.lang.CharSequence" resolve="subSequence" />
                    <node concept="3cmrfG" id="6R7vamttxre" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="6R7vamttxrf" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxeohaw" role="2Oq$k0">
                        <ref role="3cqZAo" node="6R7vamttxm_" resolve="SERVER_TEST_FAILED_PREFIX" />
                      </node>
                      <node concept="liA8E" id="6R7vamttxrh" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6R7vamttxri" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~CharSequence.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
              <node concept="liA8E" id="6R7vamttxrj" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="2BHiRxeodlp" role="37wK5m">
                  <ref role="3cqZAo" node="6R7vamttxm_" resolve="SERVER_TEST_FAILED_PREFIX" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6R7vamtty$v">
    <property role="TrG5h" value="ScriptProperties" />
    <node concept="2tJIrI" id="1bMaI2XpeA8" role="jymVt" />
    <node concept="Wx3nA" id="6R7vamttDB3" role="jymVt">
      <property role="TrG5h" value="COMPILE" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6R7vamttDB4" role="1tU5fm" />
      <node concept="3Tm1VV" id="6R7vamttDB5" role="1B3o_S" />
      <node concept="Xl_RD" id="6R7vamttDB6" role="33vP2m">
        <property role="Xl_RC" value="COMPILE" />
      </node>
    </node>
    <node concept="Wx3nA" id="QkG2t1bArt" role="jymVt">
      <property role="TrG5h" value="PLUGIN_PATHS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="QkG2t1bJ$C" role="1B3o_S" />
      <node concept="17QB3L" id="QkG2t1bArv" role="1tU5fm" />
      <node concept="Xl_RD" id="QkG2t1bArw" role="33vP2m">
        <property role="Xl_RC" value="plugin.path" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bMaI2Xpe$j" role="jymVt" />
    <node concept="Wx3nA" id="1bMaI2Xp9cF" role="jymVt">
      <property role="TrG5h" value="INVOKE_TESTS" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1bMaI2Xp9cG" role="1tU5fm" />
      <node concept="3Tm1VV" id="1bMaI2Xp9cH" role="1B3o_S" />
      <node concept="Xl_RD" id="1bMaI2Xp9cI" role="33vP2m">
        <property role="Xl_RC" value="INVOKE_TESTS" />
      </node>
    </node>
    <node concept="Wx3nA" id="1bMaI2XpbmB" role="jymVt">
      <property role="TrG5h" value="SAVE_ON_DISK" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1bMaI2XpbmC" role="1tU5fm" />
      <node concept="3Tm1VV" id="1bMaI2XpbmD" role="1B3o_S" />
      <node concept="Xl_RD" id="1bMaI2XpbmE" role="33vP2m">
        <property role="Xl_RC" value="SAVE_ON_DISK" />
      </node>
    </node>
    <node concept="Wx3nA" id="1bMaI2Xpbut" role="jymVt">
      <property role="TrG5h" value="SHOW_DIFF" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1bMaI2Xpbuu" role="1tU5fm" />
      <node concept="3Tm1VV" id="1bMaI2Xpbuv" role="1B3o_S" />
      <node concept="Xl_RD" id="1bMaI2Xpbuw" role="33vP2m">
        <property role="Xl_RC" value="SHOW_DIFF" />
      </node>
    </node>
    <node concept="Wx3nA" id="1bMaI2XpbAn" role="jymVt">
      <property role="TrG5h" value="WHOLE_PROJECT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1bMaI2XpbAo" role="1tU5fm" />
      <node concept="3Tm1VV" id="1bMaI2XpbAp" role="1B3o_S" />
      <node concept="Xl_RD" id="1bMaI2XpbAq" role="33vP2m">
        <property role="Xl_RC" value="WHOLE_PROJECT" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bMaI2XpezH" role="jymVt" />
    <node concept="Wx3nA" id="1bMaI2Xpecl" role="jymVt">
      <property role="TrG5h" value="GENERATE_PERFORMANCE_REPORT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1bMaI2Xpecm" role="1tU5fm" />
      <node concept="3Tm1VV" id="1bMaI2Xpecn" role="1B3o_S" />
      <node concept="Xl_RD" id="1bMaI2Xpeco" role="33vP2m">
        <property role="Xl_RC" value="GENERATE_PERFORMANCE_REPORT" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bMaI2XpeAK" role="jymVt" />
    <node concept="3Tm1VV" id="6R7vamtty$w" role="1B3o_S" />
    <node concept="3clFbW" id="6R7vamtty$x" role="jymVt">
      <node concept="3Tm6S6" id="6R7vamttD2H" role="1B3o_S" />
      <node concept="3cqZAl" id="6R7vamtty$y" role="3clF45" />
      <node concept="3clFbS" id="6R7vamtty$$" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="7CnofvYvUW6">
    <property role="TrG5h" value="JDOMUtil" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="7CnofvYvUW7" role="jymVt">
      <property role="TrG5h" value="DEFAULT_CHARSET" />
      <property role="3TUv4t" value="true" />
      <node concept="2YIFZM" id="7CnofvYvUW8" role="33vP2m">
        <ref role="37wK5l" to="7x5y:~Charset.forName(java.lang.String):java.nio.charset.Charset" resolve="forName" />
        <ref role="1Pybhc" to="7x5y:~Charset" resolve="Charset" />
        <node concept="Xl_RD" id="7CnofvYvUW9" role="37wK5m">
          <property role="Xl_RC" value="UTF-8" />
        </node>
      </node>
      <node concept="3uibUv" id="7CnofvYvUWa" role="1tU5fm">
        <ref role="3uigEE" to="7x5y:~Charset" resolve="Charset" />
      </node>
      <node concept="3Tm1VV" id="7CnofvYvUWb" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7CnofvYvUWc" role="1B3o_S" />
    <node concept="Wx3nA" id="7CnofvYvUWd" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="2YIFZM" id="7CnofvYvUWe" role="33vP2m">
        <ref role="1Pybhc" to="q7tw:~LogManager" resolve="LogManager" />
        <ref role="37wK5l" to="q7tw:~LogManager.getLogger(java.lang.Class):org.apache.log4j.Logger" resolve="getLogger" />
        <node concept="3VsKOn" id="7CnofvYvUWf" role="37wK5m">
          <ref role="3VsUkX" node="7CnofvYvUW6" resolve="JDOMUtil" />
        </node>
      </node>
      <node concept="3uibUv" id="7CnofvYvUWg" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="3Tm6S6" id="7CnofvYvUWh" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7CnofvYvUWi" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="7CnofvYvUWj" role="3clF45" />
      <node concept="3clFbS" id="7CnofvYvUWk" role="3clF47" />
      <node concept="3Tm1VV" id="7CnofvYvUWl" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7CnofvYvUWm" role="jymVt">
      <property role="TrG5h" value="loadDocument" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="7CnofvYvUWn" role="Sfmx6">
        <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
      </node>
      <node concept="3uibUv" id="7CnofvYvUWo" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="7CnofvYvUWp" role="3clF45">
        <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
      </node>
      <node concept="37vLTG" id="7CnofvYvUWq" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7CnofvYvUWr" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="7CnofvYvUWs" role="3clF47">
        <node concept="3cpWs8" id="7CnofvYvUWt" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvUWu" role="3cpWs9">
            <property role="TrG5h" value="saxBuilder" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvUWv" role="1tU5fm">
              <ref role="3uigEE" to="r9z2:~SAXBuilder" resolve="SAXBuilder" />
            </node>
            <node concept="1rXfSq" id="7CnofvYvUWw" role="33vP2m">
              <ref role="37wK5l" node="7CnofvYvUXl" resolve="createBuilder" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7CnofvYvUWx" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvUWy" role="3cpWs9">
            <property role="TrG5h" value="in" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvUWz" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~FileInputStream" resolve="FileInputStream" />
            </node>
            <node concept="2ShNRf" id="7CnofvYvUW$" role="33vP2m">
              <node concept="1pGfFk" id="7CnofvYvUW_" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~FileInputStream.&lt;init&gt;(java.io.File)" resolve="FileInputStream" />
                <node concept="37vLTw" id="7CnofvYvUWA" role="37wK5m">
                  <ref role="3cqZAo" node="7CnofvYvUWq" resolve="file" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="7CnofvYvUWB" role="3cqZAp">
          <node concept="TDmWw" id="7CnofvYvUWC" role="TEXxN">
            <node concept="3clFbS" id="7CnofvYvUWD" role="TDEfX">
              <node concept="3clFbF" id="7CnofvYvUWE" role="3cqZAp">
                <node concept="2OqwBi" id="7CnofvYvUWF" role="3clFbG">
                  <node concept="37vLTw" id="7CnofvYvUWG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CnofvYvUWd" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="7CnofvYvUWH" role="2OqNvi">
                    <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object):void" resolve="error" />
                    <node concept="3cpWs3" id="7CnofvYvUWI" role="37wK5m">
                      <node concept="2OqwBi" id="7CnofvYvUWJ" role="3uHU7w">
                        <node concept="37vLTw" id="7CnofvYvUWK" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvUWq" resolve="file" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvUWL" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7CnofvYvUWM" role="3uHU7B">
                        <property role="Xl_RC" value="FAILED TO LOAD FILE : " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="7CnofvYvUWN" role="3cqZAp">
                <node concept="37vLTw" id="7CnofvYvUWO" role="YScLw">
                  <ref role="3cqZAo" node="7CnofvYvUWP" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7CnofvYvUWP" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="7CnofvYvUWQ" role="1tU5fm">
                <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="7CnofvYvUWR" role="TEXxN">
            <node concept="3clFbS" id="7CnofvYvUWS" role="TDEfX">
              <node concept="3clFbF" id="7CnofvYvUWT" role="3cqZAp">
                <node concept="2OqwBi" id="7CnofvYvUWU" role="3clFbG">
                  <node concept="37vLTw" id="7CnofvYvUWV" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CnofvYvUWd" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="7CnofvYvUWW" role="2OqNvi">
                    <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object):void" resolve="error" />
                    <node concept="3cpWs3" id="7CnofvYvUWX" role="37wK5m">
                      <node concept="2OqwBi" id="7CnofvYvUWY" role="3uHU7w">
                        <node concept="37vLTw" id="7CnofvYvUWZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvUWq" resolve="file" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvUX0" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7CnofvYvUX1" role="3uHU7B">
                        <property role="Xl_RC" value="FAILED TO LOAD FILE : " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="7CnofvYvUX2" role="3cqZAp">
                <node concept="37vLTw" id="7CnofvYvUX3" role="YScLw">
                  <ref role="3cqZAo" node="7CnofvYvUX4" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7CnofvYvUX4" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="7CnofvYvUX5" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvUX6" role="2GVbov">
            <node concept="3clFbF" id="7CnofvYvUX7" role="3cqZAp">
              <node concept="2OqwBi" id="7CnofvYvUX8" role="3clFbG">
                <node concept="37vLTw" id="7CnofvYvUX9" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CnofvYvUWy" resolve="in" />
                </node>
                <node concept="liA8E" id="7CnofvYvUXa" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~FileInputStream.close():void" resolve="close" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvUXb" role="2GV8ay">
            <node concept="3cpWs6" id="7CnofvYvUXc" role="3cqZAp">
              <node concept="2OqwBi" id="7CnofvYvUXd" role="3cqZAk">
                <node concept="37vLTw" id="7CnofvYvUXe" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CnofvYvUWu" resolve="saxBuilder" />
                </node>
                <node concept="liA8E" id="7CnofvYvUXf" role="2OqNvi">
                  <ref role="37wK5l" to="r9z2:~SAXBuilder.build(java.io.Reader):org.jdom.Document" resolve="build" />
                  <node concept="2ShNRf" id="7CnofvYvUXg" role="37wK5m">
                    <node concept="1pGfFk" id="7CnofvYvUXh" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream,java.nio.charset.Charset)" resolve="InputStreamReader" />
                      <node concept="37vLTw" id="7CnofvYvUXi" role="37wK5m">
                        <ref role="3cqZAo" node="7CnofvYvUWy" resolve="in" />
                      </node>
                      <node concept="37vLTw" id="7CnofvYvUXj" role="37wK5m">
                        <ref role="3cqZAo" node="7CnofvYvUW7" resolve="DEFAULT_CHARSET" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvUXk" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7CnofvYvUXl" role="jymVt">
      <property role="TrG5h" value="createBuilder" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="7CnofvYvUXm" role="3clF45">
        <ref role="3uigEE" to="r9z2:~SAXBuilder" resolve="SAXBuilder" />
      </node>
      <node concept="3clFbS" id="7CnofvYvUXn" role="3clF47">
        <node concept="3cpWs8" id="7CnofvYvUXo" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvUXp" role="3cpWs9">
            <property role="TrG5h" value="saxBuilder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7CnofvYvUXq" role="1tU5fm">
              <ref role="3uigEE" to="r9z2:~SAXBuilder" resolve="SAXBuilder" />
            </node>
            <node concept="2ShNRf" id="7CnofvYvUXr" role="33vP2m">
              <node concept="1pGfFk" id="7CnofvYvUXs" role="2ShVmc">
                <ref role="37wK5l" to="r9z2:~SAXBuilder.&lt;init&gt;()" resolve="SAXBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CnofvYvUXt" role="3cqZAp">
          <node concept="2OqwBi" id="7CnofvYvUXu" role="3clFbG">
            <node concept="37vLTw" id="7CnofvYvUXv" role="2Oq$k0">
              <ref role="3cqZAo" node="7CnofvYvUXp" resolve="saxBuilder" />
            </node>
            <node concept="liA8E" id="7CnofvYvUXw" role="2OqNvi">
              <ref role="37wK5l" to="r9z2:~SAXBuilder.setEntityResolver(org.xml.sax.EntityResolver):void" resolve="setEntityResolver" />
              <node concept="2ShNRf" id="7CnofvYvUXx" role="37wK5m">
                <node concept="YeOm9" id="7CnofvYvUXy" role="2ShVmc">
                  <node concept="1Y3b0j" id="7CnofvYvUXz" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="kart:~EntityResolver" resolve="EntityResolver" />
                    <node concept="3Tm1VV" id="7CnofvYvUX$" role="1B3o_S" />
                    <node concept="3clFb_" id="7CnofvYvUX_" role="jymVt">
                      <property role="TrG5h" value="resolveEntity" />
                      <property role="od$2w" value="false" />
                      <property role="DiZV1" value="false" />
                      <node concept="3uibUv" id="7CnofvYvUXA" role="Sfmx6">
                        <ref role="3uigEE" to="kart:~SAXException" resolve="SAXException" />
                      </node>
                      <node concept="3uibUv" id="7CnofvYvUXB" role="Sfmx6">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                      <node concept="3uibUv" id="7CnofvYvUXC" role="3clF45">
                        <ref role="3uigEE" to="kart:~InputSource" resolve="InputSource" />
                      </node>
                      <node concept="37vLTG" id="7CnofvYvUXD" role="3clF46">
                        <property role="TrG5h" value="publicId" />
                        <node concept="3uibUv" id="7CnofvYvUXE" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7CnofvYvUXF" role="3clF46">
                        <property role="TrG5h" value="systemId" />
                        <node concept="3uibUv" id="7CnofvYvUXG" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7CnofvYvUXH" role="3clF47">
                        <node concept="3cpWs6" id="7CnofvYvUXI" role="3cqZAp">
                          <node concept="2ShNRf" id="7CnofvYvUXJ" role="3cqZAk">
                            <node concept="1pGfFk" id="7CnofvYvUXK" role="2ShVmc">
                              <ref role="37wK5l" to="kart:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                              <node concept="2ShNRf" id="7CnofvYvUXL" role="37wK5m">
                                <node concept="1pGfFk" id="7CnofvYvUXM" role="2ShVmc">
                                  <ref role="37wK5l" to="guwi:~CharArrayReader.&lt;init&gt;(char[])" resolve="CharArrayReader" />
                                  <node concept="2ShNRf" id="7CnofvYvUXN" role="37wK5m">
                                    <node concept="3$_iS1" id="7CnofvYvUXO" role="2ShVmc">
                                      <node concept="3$GHV9" id="7CnofvYvUXP" role="3$GQph">
                                        <node concept="3cmrfG" id="7CnofvYvUXQ" role="3$I4v7">
                                          <property role="3cmrfH" value="0" />
                                        </node>
                                      </node>
                                      <node concept="10Pfzv" id="7CnofvYvUXR" role="3$_nBY" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="7CnofvYvUXS" role="1B3o_S" />
                      <node concept="2AHcQZ" id="3tYsUK_p4aB" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7CnofvYvUXT" role="3cqZAp">
          <node concept="37vLTw" id="7CnofvYvUXU" role="3cqZAk">
            <ref role="3cqZAo" node="7CnofvYvUXp" resolve="saxBuilder" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvUXV" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="7CnofvYvUXW" role="jymVt">
      <property role="TrG5h" value="writeDocument" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="7CnofvYvUXX" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="37vLTG" id="7CnofvYvUXY" role="3clF46">
        <property role="TrG5h" value="document" />
        <node concept="3uibUv" id="7CnofvYvUXZ" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="37vLTG" id="7CnofvYvUY0" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7CnofvYvUY1" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="7CnofvYvUY2" role="3clF47">
        <node concept="3clFbJ" id="7CnofvYvUY3" role="3cqZAp">
          <node concept="3fqX7Q" id="7CnofvYvUY4" role="3clFbw">
            <node concept="2OqwBi" id="7CnofvYvUY5" role="3fr31v">
              <node concept="2OqwBi" id="7CnofvYvUY6" role="2Oq$k0">
                <node concept="37vLTw" id="7CnofvYvUY7" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CnofvYvUY0" resolve="file" />
                </node>
                <node concept="liA8E" id="7CnofvYvUY8" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getParentFile():java.io.File" resolve="getParentFile" />
                </node>
              </node>
              <node concept="liA8E" id="7CnofvYvUY9" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvUYa" role="3clFbx">
            <node concept="3clFbF" id="7CnofvYvUYb" role="3cqZAp">
              <node concept="2OqwBi" id="7CnofvYvUYc" role="3clFbG">
                <node concept="2OqwBi" id="7CnofvYvUYd" role="2Oq$k0">
                  <node concept="37vLTw" id="7CnofvYvUYe" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CnofvYvUY0" resolve="file" />
                  </node>
                  <node concept="liA8E" id="7CnofvYvUYf" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.getParentFile():java.io.File" resolve="getParentFile" />
                  </node>
                </node>
                <node concept="liA8E" id="7CnofvYvUYg" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.mkdirs():boolean" resolve="mkdirs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7CnofvYvUYh" role="3cqZAp">
          <node concept="3fqX7Q" id="7CnofvYvUYi" role="3clFbw">
            <node concept="2OqwBi" id="7CnofvYvUYj" role="3fr31v">
              <node concept="37vLTw" id="7CnofvYvUYk" role="2Oq$k0">
                <ref role="3cqZAo" node="7CnofvYvUY0" resolve="file" />
              </node>
              <node concept="liA8E" id="7CnofvYvUYl" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvUYm" role="3clFbx">
            <node concept="3clFbF" id="7CnofvYvUYn" role="3cqZAp">
              <node concept="2OqwBi" id="7CnofvYvUYo" role="3clFbG">
                <node concept="37vLTw" id="7CnofvYvUYp" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CnofvYvUY0" resolve="file" />
                </node>
                <node concept="liA8E" id="7CnofvYvUYq" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.createNewFile():boolean" resolve="createNewFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7CnofvYvUYr" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvUYs" role="3cpWs9">
            <property role="TrG5h" value="stream" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvUYt" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
            </node>
            <node concept="2ShNRf" id="7CnofvYvUYu" role="33vP2m">
              <node concept="1pGfFk" id="7CnofvYvUYv" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~BufferedOutputStream.&lt;init&gt;(java.io.OutputStream)" resolve="BufferedOutputStream" />
                <node concept="2ShNRf" id="7CnofvYvUYw" role="37wK5m">
                  <node concept="1pGfFk" id="7CnofvYvUYx" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileOutputStream.&lt;init&gt;(java.io.File)" resolve="FileOutputStream" />
                    <node concept="37vLTw" id="7CnofvYvUYy" role="37wK5m">
                      <ref role="3cqZAo" node="7CnofvYvUY0" resolve="file" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="7CnofvYvUYz" role="3cqZAp">
          <node concept="3clFbS" id="7CnofvYvUY$" role="2GVbov">
            <node concept="3clFbF" id="7CnofvYvUY_" role="3cqZAp">
              <node concept="2OqwBi" id="7CnofvYvUYA" role="3clFbG">
                <node concept="37vLTw" id="7CnofvYvUYB" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CnofvYvUYs" resolve="stream" />
                </node>
                <node concept="liA8E" id="7CnofvYvUYC" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~OutputStream.close():void" resolve="close" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvUYD" role="2GV8ay">
            <node concept="3clFbF" id="7CnofvYvUYE" role="3cqZAp">
              <node concept="1rXfSq" id="7CnofvYvUYF" role="3clFbG">
                <ref role="37wK5l" node="7CnofvYvUYK" resolve="writeDocument" />
                <node concept="37vLTw" id="7CnofvYvUYG" role="37wK5m">
                  <ref role="3cqZAo" node="7CnofvYvUXY" resolve="document" />
                </node>
                <node concept="37vLTw" id="7CnofvYvUYH" role="37wK5m">
                  <ref role="3cqZAo" node="7CnofvYvUYs" resolve="stream" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvUYI" role="1B3o_S" />
      <node concept="3cqZAl" id="7CnofvYvUYJ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7CnofvYvUYK" role="jymVt">
      <property role="TrG5h" value="writeDocument" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="7CnofvYvUYL" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="37vLTG" id="7CnofvYvUYM" role="3clF46">
        <property role="TrG5h" value="document" />
        <node concept="3uibUv" id="7CnofvYvUYN" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="37vLTG" id="7CnofvYvUYO" role="3clF46">
        <property role="TrG5h" value="stream" />
        <node concept="3uibUv" id="7CnofvYvUYP" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
        </node>
      </node>
      <node concept="3clFbS" id="7CnofvYvUYQ" role="3clF47">
        <node concept="3clFbF" id="7CnofvYvUYR" role="3cqZAp">
          <node concept="1rXfSq" id="7CnofvYvUYS" role="3clFbG">
            <ref role="37wK5l" node="7CnofvYvUZ0" resolve="writeDocument" />
            <node concept="37vLTw" id="7CnofvYvUYT" role="37wK5m">
              <ref role="3cqZAo" node="7CnofvYvUYM" resolve="document" />
            </node>
            <node concept="2ShNRf" id="7CnofvYvUYU" role="37wK5m">
              <node concept="1pGfFk" id="7CnofvYvUYV" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~OutputStreamWriter.&lt;init&gt;(java.io.OutputStream,java.nio.charset.Charset)" resolve="OutputStreamWriter" />
                <node concept="37vLTw" id="7CnofvYvUYW" role="37wK5m">
                  <ref role="3cqZAo" node="7CnofvYvUYO" resolve="stream" />
                </node>
                <node concept="37vLTw" id="7CnofvYvUYX" role="37wK5m">
                  <ref role="3cqZAo" node="7CnofvYvUW7" resolve="DEFAULT_CHARSET" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvUYY" role="1B3o_S" />
      <node concept="3cqZAl" id="7CnofvYvUYZ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7CnofvYvUZ0" role="jymVt">
      <property role="TrG5h" value="writeDocument" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="7CnofvYvUZ1" role="3clF46">
        <property role="TrG5h" value="document" />
        <node concept="3uibUv" id="7CnofvYvUZ2" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="37vLTG" id="7CnofvYvUZ3" role="3clF46">
        <property role="TrG5h" value="writer" />
        <node concept="3uibUv" id="7CnofvYvUZ4" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~Writer" resolve="Writer" />
        </node>
      </node>
      <node concept="3uibUv" id="7CnofvYvUZ5" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="7CnofvYvUZ6" role="3clF47">
        <node concept="3cpWs8" id="7CnofvYvUZ7" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvUZ8" role="3cpWs9">
            <property role="TrG5h" value="xmlOutputter" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvUZ9" role="1tU5fm">
              <ref role="3uigEE" to="se19:~XMLOutputter" resolve="XMLOutputter" />
            </node>
            <node concept="1rXfSq" id="7CnofvYvUZa" role="33vP2m">
              <ref role="37wK5l" node="7CnofvYvUZS" resolve="createOutputter" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7CnofvYvUZb" role="3cqZAp">
          <node concept="3clFbC" id="7CnofvYvUZc" role="3clFbw">
            <node concept="37vLTw" id="7CnofvYvUZd" role="3uHU7B">
              <ref role="3cqZAo" node="7CnofvYvUZ8" resolve="xmlOutputter" />
            </node>
            <node concept="10Nm6u" id="7CnofvYvUZe" role="3uHU7w" />
          </node>
          <node concept="3clFbJ" id="7CnofvYvUZf" role="9aQIa">
            <node concept="3clFbC" id="7CnofvYvUZg" role="3clFbw">
              <node concept="37vLTw" id="7CnofvYvUZh" role="3uHU7B">
                <ref role="3cqZAo" node="7CnofvYvUZ1" resolve="document" />
              </node>
              <node concept="10Nm6u" id="7CnofvYvUZi" role="3uHU7w" />
            </node>
            <node concept="3clFbJ" id="7CnofvYvUZj" role="9aQIa">
              <node concept="3clFbC" id="7CnofvYvUZk" role="3clFbw">
                <node concept="37vLTw" id="7CnofvYvUZl" role="3uHU7B">
                  <ref role="3cqZAo" node="7CnofvYvUZ3" resolve="writer" />
                </node>
                <node concept="10Nm6u" id="7CnofvYvUZm" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="7CnofvYvUZn" role="9aQIa">
                <node concept="3clFbS" id="7CnofvYvUZo" role="9aQI4">
                  <node concept="3clFbF" id="7CnofvYvUZp" role="3cqZAp">
                    <node concept="2OqwBi" id="7CnofvYvUZq" role="3clFbG">
                      <node concept="37vLTw" id="7CnofvYvUZr" role="2Oq$k0">
                        <ref role="3cqZAo" node="7CnofvYvUZ8" resolve="xmlOutputter" />
                      </node>
                      <node concept="liA8E" id="7CnofvYvUZs" role="2OqNvi">
                        <ref role="37wK5l" to="se19:~XMLOutputter.output(org.jdom.Document,java.io.Writer):void" resolve="output" />
                        <node concept="37vLTw" id="7CnofvYvUZt" role="37wK5m">
                          <ref role="3cqZAo" node="7CnofvYvUZ1" resolve="document" />
                        </node>
                        <node concept="37vLTw" id="7CnofvYvUZu" role="37wK5m">
                          <ref role="3cqZAo" node="7CnofvYvUZ3" resolve="writer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7CnofvYvUZv" role="3clFbx">
                <node concept="3clFbF" id="7CnofvYvUZw" role="3cqZAp">
                  <node concept="2OqwBi" id="7CnofvYvUZx" role="3clFbG">
                    <node concept="37vLTw" id="7CnofvYvUZy" role="2Oq$k0">
                      <ref role="3cqZAo" node="7CnofvYvUWd" resolve="LOG" />
                    </node>
                    <node concept="liA8E" id="7CnofvYvUZz" role="2OqNvi">
                      <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object):void" resolve="error" />
                      <node concept="Xl_RD" id="7CnofvYvUZ$" role="37wK5m">
                        <property role="Xl_RC" value="Writer is null" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7CnofvYvUZ_" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbS" id="7CnofvYvUZA" role="3clFbx">
              <node concept="3clFbF" id="7CnofvYvUZB" role="3cqZAp">
                <node concept="2OqwBi" id="7CnofvYvUZC" role="3clFbG">
                  <node concept="37vLTw" id="7CnofvYvUZD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CnofvYvUWd" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="7CnofvYvUZE" role="2OqNvi">
                    <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object):void" resolve="error" />
                    <node concept="Xl_RD" id="7CnofvYvUZF" role="37wK5m">
                      <property role="Xl_RC" value="Document is null" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvUZG" role="3clFbx">
            <node concept="3clFbF" id="7CnofvYvUZH" role="3cqZAp">
              <node concept="2OqwBi" id="7CnofvYvUZI" role="3clFbG">
                <node concept="37vLTw" id="7CnofvYvUZJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CnofvYvUWd" resolve="LOG" />
                </node>
                <node concept="liA8E" id="7CnofvYvUZK" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object):void" resolve="error" />
                  <node concept="Xl_RD" id="7CnofvYvUZL" role="37wK5m">
                    <property role="Xl_RC" value="Could not create XMLOutputter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CnofvYvUZM" role="3cqZAp">
          <node concept="2OqwBi" id="7CnofvYvUZN" role="3clFbG">
            <node concept="37vLTw" id="7CnofvYvUZO" role="2Oq$k0">
              <ref role="3cqZAo" node="7CnofvYvUZ3" resolve="writer" />
            </node>
            <node concept="liA8E" id="7CnofvYvUZP" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~Writer.close():void" resolve="close" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvUZQ" role="1B3o_S" />
      <node concept="3cqZAl" id="7CnofvYvUZR" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7CnofvYvUZS" role="jymVt">
      <property role="TrG5h" value="createOutputter" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="7CnofvYvUZT" role="3clF45">
        <ref role="3uigEE" to="se19:~XMLOutputter" resolve="XMLOutputter" />
      </node>
      <node concept="3clFbS" id="7CnofvYvUZU" role="3clF47">
        <node concept="3cpWs8" id="7CnofvYvUZV" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvUZW" role="3cpWs9">
            <property role="TrG5h" value="xmlOutputter" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvUZX" role="1tU5fm">
              <ref role="3uigEE" to="se19:~XMLOutputter" resolve="XMLOutputter" />
            </node>
            <node concept="2ShNRf" id="7CnofvYvUZY" role="33vP2m">
              <node concept="1pGfFk" id="7CnofvYvUZZ" role="2ShVmc">
                <ref role="37wK5l" node="7CnofvYvV0f" resolve="JDOMUtil.MyXMLOutputter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CnofvYvV00" role="3cqZAp">
          <node concept="2OqwBi" id="7CnofvYvV01" role="3clFbG">
            <node concept="37vLTw" id="7CnofvYvV02" role="2Oq$k0">
              <ref role="3cqZAo" node="7CnofvYvUZW" resolve="xmlOutputter" />
            </node>
            <node concept="liA8E" id="7CnofvYvV03" role="2OqNvi">
              <ref role="37wK5l" to="se19:~XMLOutputter.setFormat(org.jdom.output.Format):void" resolve="setFormat" />
              <node concept="2OqwBi" id="7CnofvYvV04" role="37wK5m">
                <node concept="2YIFZM" id="7CnofvYvV05" role="2Oq$k0">
                  <ref role="1Pybhc" to="se19:~Format" resolve="Format" />
                  <ref role="37wK5l" to="se19:~Format.getPrettyFormat():org.jdom.output.Format" resolve="getPrettyFormat" />
                </node>
                <node concept="liA8E" id="7CnofvYvV06" role="2OqNvi">
                  <ref role="37wK5l" to="se19:~Format.setLineSeparator(java.lang.String):org.jdom.output.Format" resolve="setLineSeparator" />
                  <node concept="2YIFZM" id="7CnofvYvV07" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
                    <node concept="Xl_RD" id="7CnofvYvV08" role="37wK5m">
                      <property role="Xl_RC" value="line.separator" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7CnofvYvV09" role="3cqZAp">
          <node concept="37vLTw" id="7CnofvYvV0a" role="3cqZAk">
            <ref role="3cqZAo" node="7CnofvYvUZW" resolve="xmlOutputter" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvV0b" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="7CnofvYvV0c" role="jymVt">
      <property role="TrG5h" value="MyXMLOutputter" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3uibUv" id="7CnofvYvV0d" role="1zkMxy">
        <ref role="3uigEE" to="se19:~XMLOutputter" resolve="XMLOutputter" />
      </node>
      <node concept="3Tm1VV" id="7CnofvYvV0e" role="1B3o_S" />
      <node concept="3clFbW" id="7CnofvYvV0f" role="jymVt">
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3cqZAl" id="7CnofvYvV0g" role="3clF45" />
        <node concept="3clFbS" id="7CnofvYvV0h" role="3clF47" />
        <node concept="3Tm1VV" id="7CnofvYvV0i" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="7CnofvYvV0j" role="jymVt">
        <property role="TrG5h" value="escapeAttributeEntities" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="37vLTG" id="7CnofvYvV0k" role="3clF46">
          <property role="TrG5h" value="str" />
          <node concept="3uibUv" id="7CnofvYvV0l" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3clFbS" id="7CnofvYvV0m" role="3clF47">
          <node concept="3cpWs6" id="7CnofvYvV0n" role="3cqZAp">
            <node concept="1rXfSq" id="7CnofvYvV0o" role="3cqZAk">
              <ref role="37wK5l" node="7CnofvYvV0D" resolve="escapeText" />
              <node concept="37vLTw" id="7CnofvYvV0p" role="37wK5m">
                <ref role="3cqZAo" node="7CnofvYvV0k" resolve="str" />
              </node>
              <node concept="3clFbT" id="7CnofvYvV0q" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="7CnofvYvV0r" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7CnofvYvV0s" role="1B3o_S" />
        <node concept="3uibUv" id="7CnofvYvV0t" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3tYsUK_p6rf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7CnofvYvV0u" role="jymVt">
        <property role="TrG5h" value="escapeElementEntities" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="37vLTG" id="7CnofvYvV0v" role="3clF46">
          <property role="TrG5h" value="str" />
          <node concept="3uibUv" id="7CnofvYvV0w" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3clFbS" id="7CnofvYvV0x" role="3clF47">
          <node concept="3cpWs6" id="7CnofvYvV0y" role="3cqZAp">
            <node concept="1rXfSq" id="7CnofvYvV0z" role="3cqZAk">
              <ref role="37wK5l" node="7CnofvYvV0D" resolve="escapeText" />
              <node concept="37vLTw" id="7CnofvYvV0$" role="37wK5m">
                <ref role="3cqZAo" node="7CnofvYvV0v" resolve="str" />
              </node>
              <node concept="3clFbT" id="7CnofvYvV0_" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="7CnofvYvV0A" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7CnofvYvV0B" role="1B3o_S" />
        <node concept="3uibUv" id="7CnofvYvV0C" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3tYsUK_p6re" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7CnofvYvV0D" role="jymVt">
      <property role="TrG5h" value="escapeText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="7CnofvYvV0E" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV0F" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7CnofvYvV0G" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7CnofvYvV0H" role="3clF46">
        <property role="TrG5h" value="escapeSpaces" />
        <node concept="10P_77" id="7CnofvYvV0I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV0J" role="3clF46">
        <property role="TrG5h" value="escapeLineEnds" />
        <node concept="10P_77" id="7CnofvYvV0K" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7CnofvYvV0L" role="3clF47">
        <node concept="3cpWs6" id="7CnofvYvV0M" role="3cqZAp">
          <node concept="1rXfSq" id="7CnofvYvV0N" role="3cqZAk">
            <ref role="37wK5l" node="7CnofvYvV0U" resolve="escapeText" />
            <node concept="37vLTw" id="7CnofvYvV0O" role="37wK5m">
              <ref role="3cqZAo" node="7CnofvYvV0F" resolve="text" />
            </node>
            <node concept="3clFbT" id="7CnofvYvV0P" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="7CnofvYvV0Q" role="37wK5m">
              <ref role="3cqZAo" node="7CnofvYvV0H" resolve="escapeSpaces" />
            </node>
            <node concept="37vLTw" id="7CnofvYvV0R" role="37wK5m">
              <ref role="3cqZAo" node="7CnofvYvV0J" resolve="escapeLineEnds" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvV0S" role="1B3o_S" />
      <node concept="3uibUv" id="7CnofvYvV0T" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7CnofvYvV0U" role="jymVt">
      <property role="TrG5h" value="escapeText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="7CnofvYvV0V" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV0W" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="7CnofvYvV0X" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7CnofvYvV0Y" role="3clF46">
        <property role="TrG5h" value="escapeApostrophes" />
        <node concept="10P_77" id="7CnofvYvV0Z" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV10" role="3clF46">
        <property role="TrG5h" value="escapeSpaces" />
        <node concept="10P_77" id="7CnofvYvV11" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV12" role="3clF46">
        <property role="TrG5h" value="escapeLineEnds" />
        <node concept="10P_77" id="7CnofvYvV13" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7CnofvYvV14" role="3clF47">
        <node concept="3cpWs8" id="7CnofvYvV15" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvV16" role="3cpWs9">
            <property role="TrG5h" value="buffer" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvV17" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="10Nm6u" id="7CnofvYvV18" role="33vP2m" />
          </node>
        </node>
        <node concept="1Dw8fO" id="7CnofvYvV19" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvV1a" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <property role="3TUv4t" value="false" />
            <node concept="10Oyi0" id="7CnofvYvV1b" role="1tU5fm" />
            <node concept="3cmrfG" id="7CnofvYvV1c" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7CnofvYvV1d" role="1Dwp0S">
            <node concept="2OqwBi" id="7CnofvYvV1e" role="3uHU7w">
              <node concept="37vLTw" id="7CnofvYvV1f" role="2Oq$k0">
                <ref role="3cqZAo" node="7CnofvYvV0W" resolve="text" />
              </node>
              <node concept="liA8E" id="7CnofvYvV1g" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="7CnofvYvV1h" role="3uHU7B">
              <ref role="3cqZAo" node="7CnofvYvV1a" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7CnofvYvV1i" role="1Dwrff">
            <node concept="37vLTw" id="7CnofvYvV1j" role="2$L3a6">
              <ref role="3cqZAo" node="7CnofvYvV1a" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvV1k" role="2LFqv$">
            <node concept="3cpWs8" id="7CnofvYvV1l" role="3cqZAp">
              <node concept="3cpWsn" id="7CnofvYvV1m" role="3cpWs9">
                <property role="TrG5h" value="ch" />
                <property role="3TUv4t" value="true" />
                <node concept="2OqwBi" id="7CnofvYvV1n" role="33vP2m">
                  <node concept="37vLTw" id="7CnofvYvV1o" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CnofvYvV0W" resolve="text" />
                  </node>
                  <node concept="liA8E" id="7CnofvYvV1p" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int):char" resolve="charAt" />
                    <node concept="37vLTw" id="7CnofvYvV1q" role="37wK5m">
                      <ref role="3cqZAo" node="7CnofvYvV1a" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="10Pfzv" id="7CnofvYvV1r" role="1tU5fm" />
              </node>
            </node>
            <node concept="3cpWs8" id="7CnofvYvV1s" role="3cqZAp">
              <node concept="3cpWsn" id="7CnofvYvV1t" role="3cpWs9">
                <property role="TrG5h" value="quotation" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7CnofvYvV1u" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="1rXfSq" id="7CnofvYvV1v" role="33vP2m">
                  <ref role="37wK5l" node="7CnofvYvV2M" resolve="escapeChar" />
                  <node concept="37vLTw" id="7CnofvYvV1w" role="37wK5m">
                    <ref role="3cqZAo" node="7CnofvYvV1m" resolve="ch" />
                  </node>
                  <node concept="37vLTw" id="7CnofvYvV1x" role="37wK5m">
                    <ref role="3cqZAo" node="7CnofvYvV0Y" resolve="escapeApostrophes" />
                  </node>
                  <node concept="37vLTw" id="7CnofvYvV1y" role="37wK5m">
                    <ref role="3cqZAo" node="7CnofvYvV10" resolve="escapeSpaces" />
                  </node>
                  <node concept="37vLTw" id="7CnofvYvV1z" role="37wK5m">
                    <ref role="3cqZAo" node="7CnofvYvV12" resolve="escapeLineEnds" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7CnofvYvV1$" role="3cqZAp">
              <node concept="3clFbC" id="7CnofvYvV1_" role="3clFbw">
                <node concept="37vLTw" id="7CnofvYvV1A" role="3uHU7B">
                  <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
                </node>
                <node concept="10Nm6u" id="7CnofvYvV1B" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="7CnofvYvV1C" role="9aQIa">
                <node concept="3clFbS" id="7CnofvYvV1D" role="9aQI4">
                  <node concept="3clFbJ" id="7CnofvYvV1E" role="3cqZAp">
                    <node concept="3clFbC" id="7CnofvYvV1F" role="3clFbw">
                      <node concept="37vLTw" id="7CnofvYvV1G" role="3uHU7B">
                        <ref role="3cqZAo" node="7CnofvYvV1t" resolve="quotation" />
                      </node>
                      <node concept="10Nm6u" id="7CnofvYvV1H" role="3uHU7w" />
                    </node>
                    <node concept="9aQIb" id="7CnofvYvV1I" role="9aQIa">
                      <node concept="3clFbS" id="7CnofvYvV1J" role="9aQI4">
                        <node concept="3clFbF" id="7CnofvYvV1K" role="3cqZAp">
                          <node concept="2OqwBi" id="7CnofvYvV1L" role="3clFbG">
                            <node concept="37vLTw" id="7CnofvYvV1M" role="2Oq$k0">
                              <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
                            </node>
                            <node concept="liA8E" id="7CnofvYvV1N" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="37vLTw" id="7CnofvYvV1O" role="37wK5m">
                                <ref role="3cqZAo" node="7CnofvYvV1t" resolve="quotation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="7CnofvYvV1P" role="3clFbx">
                      <node concept="3clFbF" id="7CnofvYvV1Q" role="3cqZAp">
                        <node concept="2OqwBi" id="7CnofvYvV1R" role="3clFbG">
                          <node concept="37vLTw" id="7CnofvYvV1S" role="2Oq$k0">
                            <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
                          </node>
                          <node concept="liA8E" id="7CnofvYvV1T" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(char):java.lang.StringBuilder" resolve="append" />
                            <node concept="37vLTw" id="7CnofvYvV1U" role="37wK5m">
                              <ref role="3cqZAo" node="7CnofvYvV1m" resolve="ch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7CnofvYvV1V" role="3clFbx">
                <node concept="3clFbJ" id="7CnofvYvV1W" role="3cqZAp">
                  <node concept="3y3z36" id="7CnofvYvV1X" role="3clFbw">
                    <node concept="37vLTw" id="7CnofvYvV1Y" role="3uHU7B">
                      <ref role="3cqZAo" node="7CnofvYvV1t" resolve="quotation" />
                    </node>
                    <node concept="10Nm6u" id="7CnofvYvV1Z" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="7CnofvYvV20" role="3clFbx">
                    <node concept="3SKdUt" id="7CnofvYvV21" role="3cqZAp">
                      <node concept="3SKdUq" id="7CnofvYvV22" role="3SKWNk">
                        <property role="3SKdUp" value=" An quotation occurred, so we'll have to use StringBuilder" />
                      </node>
                    </node>
                    <node concept="3SKdUt" id="7CnofvYvV23" role="3cqZAp">
                      <node concept="3SKdUq" id="7CnofvYvV24" role="3SKWNk">
                        <property role="3SKdUp" value=" (allocate room for it plus a few more entities)." />
                      </node>
                    </node>
                    <node concept="3clFbF" id="7CnofvYvV25" role="3cqZAp">
                      <node concept="37vLTI" id="7CnofvYvV26" role="3clFbG">
                        <node concept="2ShNRf" id="7CnofvYvV27" role="37vLTx">
                          <node concept="1pGfFk" id="7CnofvYvV28" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(int)" resolve="StringBuilder" />
                            <node concept="3cpWs3" id="7CnofvYvV29" role="37wK5m">
                              <node concept="2OqwBi" id="7CnofvYvV2a" role="3uHU7B">
                                <node concept="37vLTw" id="7CnofvYvV2b" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7CnofvYvV0W" resolve="text" />
                                </node>
                                <node concept="liA8E" id="7CnofvYvV2c" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                                </node>
                              </node>
                              <node concept="3cmrfG" id="7CnofvYvV2d" role="3uHU7w">
                                <property role="3cmrfH" value="20" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="7CnofvYvV2e" role="37vLTJ">
                          <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="7CnofvYvV2f" role="3cqZAp">
                      <node concept="3SKdUq" id="7CnofvYvV2g" role="3SKWNk">
                        <property role="3SKdUp" value=" Copy previous skipped characters and fall through" />
                      </node>
                    </node>
                    <node concept="3SKdUt" id="7CnofvYvV2h" role="3cqZAp">
                      <node concept="3SKdUq" id="7CnofvYvV2i" role="3SKWNk">
                        <property role="3SKdUp" value=" to pickup current character" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="7CnofvYvV2j" role="3cqZAp">
                      <node concept="2OqwBi" id="7CnofvYvV2k" role="3clFbG">
                        <node concept="37vLTw" id="7CnofvYvV2l" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvV2m" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="2OqwBi" id="7CnofvYvV2n" role="37wK5m">
                            <node concept="37vLTw" id="7CnofvYvV2o" role="2Oq$k0">
                              <ref role="3cqZAo" node="7CnofvYvV0W" resolve="text" />
                            </node>
                            <node concept="liA8E" id="7CnofvYvV2p" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                              <node concept="3cmrfG" id="7CnofvYvV2q" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="7CnofvYvV2r" role="37wK5m">
                                <ref role="3cqZAo" node="7CnofvYvV1a" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7CnofvYvV2s" role="3cqZAp">
                      <node concept="2OqwBi" id="7CnofvYvV2t" role="3clFbG">
                        <node concept="37vLTw" id="7CnofvYvV2u" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvV2v" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="37vLTw" id="7CnofvYvV2w" role="37wK5m">
                            <ref role="3cqZAo" node="7CnofvYvV1t" resolve="quotation" />
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
        <node concept="3SKdUt" id="7CnofvYvV2x" role="3cqZAp">
          <node concept="3SKdUq" id="7CnofvYvV2y" role="3SKWNk">
            <property role="3SKdUp" value=" If there were any entities, return the escaped characters" />
          </node>
        </node>
        <node concept="3SKdUt" id="7CnofvYvV2z" role="3cqZAp">
          <node concept="3SKdUq" id="7CnofvYvV2$" role="3SKWNk">
            <property role="3SKdUp" value=" that we put in the StringBuilder. Otherwise, just return" />
          </node>
        </node>
        <node concept="3SKdUt" id="7CnofvYvV2_" role="3cqZAp">
          <node concept="3SKdUq" id="7CnofvYvV2A" role="3SKWNk">
            <property role="3SKdUp" value=" the unmodified input string." />
          </node>
        </node>
        <node concept="3cpWs6" id="7CnofvYvV2B" role="3cqZAp">
          <node concept="3K4zz7" id="7CnofvYvV2C" role="3cqZAk">
            <node concept="2OqwBi" id="7CnofvYvV2D" role="3K4GZi">
              <node concept="37vLTw" id="7CnofvYvV2E" role="2Oq$k0">
                <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
              </node>
              <node concept="liA8E" id="7CnofvYvV2F" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
            <node concept="3clFbC" id="7CnofvYvV2G" role="3K4Cdx">
              <node concept="37vLTw" id="7CnofvYvV2H" role="3uHU7B">
                <ref role="3cqZAo" node="7CnofvYvV16" resolve="buffer" />
              </node>
              <node concept="10Nm6u" id="7CnofvYvV2I" role="3uHU7w" />
            </node>
            <node concept="37vLTw" id="7CnofvYvV2J" role="3K4E3e">
              <ref role="3cqZAo" node="7CnofvYvV0W" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvV2K" role="1B3o_S" />
      <node concept="3uibUv" id="7CnofvYvV2L" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="7CnofvYvV2M" role="jymVt">
      <property role="TrG5h" value="escapeChar" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="7CnofvYvV2N" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV2O" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="10Pfzv" id="7CnofvYvV2P" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV2Q" role="3clF46">
        <property role="TrG5h" value="escapeApostrophes" />
        <node concept="10P_77" id="7CnofvYvV2R" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV2S" role="3clF46">
        <property role="TrG5h" value="escapeSpaces" />
        <node concept="10P_77" id="7CnofvYvV2T" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7CnofvYvV2U" role="3clF46">
        <property role="TrG5h" value="escapeLineEnds" />
        <node concept="10P_77" id="7CnofvYvV2V" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7CnofvYvV2W" role="3clF47">
        <node concept="3KaCP$" id="7CnofvYvV2X" role="3cqZAp">
          <node concept="37vLTw" id="7CnofvYvV2Y" role="3KbGdf">
            <ref role="3cqZAo" node="7CnofvYvV2O" resolve="c" />
          </node>
          <node concept="3clFbS" id="7CnofvYvV2Z" role="3Kb1Dw" />
          <node concept="3KbdKl" id="7CnofvYvV30" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV31" role="3Kbmr1">
              <property role="1XhdNS" value="\n" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV32" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV33" role="3cqZAp">
                <node concept="3K4zz7" id="7CnofvYvV34" role="3cqZAk">
                  <node concept="37vLTw" id="7CnofvYvV35" role="3K4Cdx">
                    <ref role="3cqZAo" node="7CnofvYvV2U" resolve="escapeLineEnds" />
                  </node>
                  <node concept="Xl_RD" id="7CnofvYvV36" role="3K4E3e">
                    <property role="Xl_RC" value="&amp;#10;" />
                  </node>
                  <node concept="10Nm6u" id="7CnofvYvV37" role="3K4GZi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV38" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV39" role="3Kbmr1">
              <property role="1XhdNS" value="\r" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3a" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3b" role="3cqZAp">
                <node concept="3K4zz7" id="7CnofvYvV3c" role="3cqZAk">
                  <node concept="37vLTw" id="7CnofvYvV3d" role="3K4Cdx">
                    <ref role="3cqZAo" node="7CnofvYvV2U" resolve="escapeLineEnds" />
                  </node>
                  <node concept="Xl_RD" id="7CnofvYvV3e" role="3K4E3e">
                    <property role="Xl_RC" value="&amp;#13;" />
                  </node>
                  <node concept="10Nm6u" id="7CnofvYvV3f" role="3K4GZi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3g" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3h" role="3Kbmr1">
              <property role="1XhdNS" value="\t" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3i" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3j" role="3cqZAp">
                <node concept="3K4zz7" id="7CnofvYvV3k" role="3cqZAk">
                  <node concept="37vLTw" id="7CnofvYvV3l" role="3K4Cdx">
                    <ref role="3cqZAo" node="7CnofvYvV2U" resolve="escapeLineEnds" />
                  </node>
                  <node concept="Xl_RD" id="7CnofvYvV3m" role="3K4E3e">
                    <property role="Xl_RC" value="&amp;#9;" />
                  </node>
                  <node concept="10Nm6u" id="7CnofvYvV3n" role="3K4GZi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3o" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3p" role="3Kbmr1">
              <property role="1XhdNS" value=" " />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3q" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3r" role="3cqZAp">
                <node concept="3K4zz7" id="7CnofvYvV3s" role="3cqZAk">
                  <node concept="37vLTw" id="7CnofvYvV3t" role="3K4Cdx">
                    <ref role="3cqZAo" node="7CnofvYvV2S" resolve="escapeSpaces" />
                  </node>
                  <node concept="Xl_RD" id="7CnofvYvV3u" role="3K4E3e">
                    <property role="Xl_RC" value="&amp;#20" />
                  </node>
                  <node concept="10Nm6u" id="7CnofvYvV3v" role="3K4GZi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3w" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3x" role="3Kbmr1">
              <property role="1XhdNS" value="&lt;" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3y" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3z" role="3cqZAp">
                <node concept="Xl_RD" id="7CnofvYvV3$" role="3cqZAk">
                  <property role="Xl_RC" value="&amp;lt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3_" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3A" role="3Kbmr1">
              <property role="1XhdNS" value="&gt;" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3B" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3C" role="3cqZAp">
                <node concept="Xl_RD" id="7CnofvYvV3D" role="3cqZAk">
                  <property role="Xl_RC" value="&amp;gt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3E" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3F" role="3Kbmr1">
              <property role="1XhdNS" value="\&quot;" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3G" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3H" role="3cqZAp">
                <node concept="Xl_RD" id="7CnofvYvV3I" role="3cqZAk">
                  <property role="Xl_RC" value="&amp;quot;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3J" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3K" role="3Kbmr1">
              <property role="1XhdNS" value="\'" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3L" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3M" role="3cqZAp">
                <node concept="3K4zz7" id="7CnofvYvV3N" role="3cqZAk">
                  <node concept="37vLTw" id="7CnofvYvV3O" role="3K4Cdx">
                    <ref role="3cqZAo" node="7CnofvYvV2Q" resolve="escapeApostrophes" />
                  </node>
                  <node concept="Xl_RD" id="7CnofvYvV3P" role="3K4E3e">
                    <property role="Xl_RC" value="&amp;apos;" />
                  </node>
                  <node concept="10Nm6u" id="7CnofvYvV3Q" role="3K4GZi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7CnofvYvV3R" role="3KbHQx">
            <node concept="1Xhbcc" id="7CnofvYvV3S" role="3Kbmr1">
              <property role="1XhdNS" value="&amp;" />
            </node>
            <node concept="3clFbS" id="7CnofvYvV3T" role="3Kbo56">
              <node concept="3cpWs6" id="7CnofvYvV3U" role="3cqZAp">
                <node concept="Xl_RD" id="7CnofvYvV3V" role="3cqZAk">
                  <property role="Xl_RC" value="&amp;amp;" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7CnofvYvV3W" role="3cqZAp">
          <node concept="10Nm6u" id="7CnofvYvV3X" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7CnofvYvV3Y" role="1B3o_S" />
      <node concept="3uibUv" id="7CnofvYvV3Z" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="7CnofvYvV40" role="lGtFl">
        <node concept="TZ5HA" id="7CnofvYvV41" role="TZ5H$">
          <node concept="1dT_AC" id="7CnofvYvV42" role="1dT_Ay">
            <property role="1dT_AB" value="* Returns null if no escapement necessary." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7CnofvYvV43" role="jymVt">
      <property role="TrG5h" value="unescapeText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="7CnofvYvV44" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="2AHcQZ" id="7CnofvYvV45" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="7CnofvYvV46" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7CnofvYvV47" role="3clF47">
        <node concept="3cpWs8" id="7CnofvYvV48" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvV49" role="3cpWs9">
            <property role="TrG5h" value="buffer" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CnofvYvV4a" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="10Nm6u" id="7CnofvYvV4b" role="33vP2m" />
          </node>
        </node>
        <node concept="1Dw8fO" id="7CnofvYvV4c" role="3cqZAp">
          <node concept="3cpWsn" id="7CnofvYvV4d" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <property role="3TUv4t" value="false" />
            <node concept="10Oyi0" id="7CnofvYvV4e" role="1tU5fm" />
            <node concept="3cmrfG" id="7CnofvYvV4f" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7CnofvYvV4g" role="1Dwp0S">
            <node concept="2OqwBi" id="7CnofvYvV4h" role="3uHU7w">
              <node concept="37vLTw" id="7CnofvYvV4i" role="2Oq$k0">
                <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
              </node>
              <node concept="liA8E" id="7CnofvYvV4j" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="7CnofvYvV4k" role="3uHU7B">
              <ref role="3cqZAo" node="7CnofvYvV4d" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7CnofvYvV4l" role="1Dwrff">
            <node concept="37vLTw" id="7CnofvYvV4m" role="2$L3a6">
              <ref role="3cqZAo" node="7CnofvYvV4d" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="7CnofvYvV4n" role="2LFqv$">
            <node concept="3cpWs8" id="7CnofvYvV4o" role="3cqZAp">
              <node concept="3cpWsn" id="7CnofvYvV4p" role="3cpWs9">
                <property role="TrG5h" value="ch" />
                <property role="3TUv4t" value="true" />
                <node concept="2OqwBi" id="7CnofvYvV4q" role="33vP2m">
                  <node concept="37vLTw" id="7CnofvYvV4r" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
                  </node>
                  <node concept="liA8E" id="7CnofvYvV4s" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int):char" resolve="charAt" />
                    <node concept="37vLTw" id="7CnofvYvV4t" role="37wK5m">
                      <ref role="3cqZAo" node="7CnofvYvV4d" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="10Pfzv" id="7CnofvYvV4u" role="1tU5fm" />
              </node>
            </node>
            <node concept="3cpWs8" id="7CnofvYvV4v" role="3cqZAp">
              <node concept="3cpWsn" id="7CnofvYvV4w" role="3cpWs9">
                <property role="TrG5h" value="quotation" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="7CnofvYvV4x" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="10Nm6u" id="7CnofvYvV4y" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="7CnofvYvV4z" role="3cqZAp">
              <node concept="3cpWsn" id="7CnofvYvV4$" role="3cpWs9">
                <property role="TrG5h" value="start" />
                <property role="3TUv4t" value="false" />
                <node concept="10Oyi0" id="7CnofvYvV4_" role="1tU5fm" />
                <node concept="37vLTw" id="7CnofvYvV4A" role="33vP2m">
                  <ref role="3cqZAo" node="7CnofvYvV4d" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7CnofvYvV4B" role="3cqZAp">
              <node concept="3clFbC" id="7CnofvYvV4C" role="3clFbw">
                <node concept="37vLTw" id="7CnofvYvV4D" role="3uHU7B">
                  <ref role="3cqZAo" node="7CnofvYvV4p" resolve="ch" />
                </node>
                <node concept="1Xhbcc" id="7CnofvYvV4E" role="3uHU7w">
                  <property role="1XhdNS" value="&amp;" />
                </node>
              </node>
              <node concept="3clFbS" id="7CnofvYvV4F" role="3clFbx">
                <node concept="3cpWs8" id="7CnofvYvV4G" role="3cqZAp">
                  <node concept="3cpWsn" id="7CnofvYvV4H" role="3cpWs9">
                    <property role="TrG5h" value="semicolon" />
                    <property role="3TUv4t" value="false" />
                    <node concept="2OqwBi" id="7CnofvYvV4I" role="33vP2m">
                      <node concept="37vLTw" id="7CnofvYvV4J" role="2Oq$k0">
                        <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
                      </node>
                      <node concept="liA8E" id="7CnofvYvV4K" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.indexOf(int,int):int" resolve="indexOf" />
                        <node concept="1Xhbcc" id="7CnofvYvV4L" role="37wK5m">
                          <property role="1XhdNS" value=";" />
                        </node>
                        <node concept="3cpWs3" id="7CnofvYvV4M" role="37wK5m">
                          <node concept="37vLTw" id="7CnofvYvV4N" role="3uHU7B">
                            <ref role="3cqZAo" node="7CnofvYvV4$" resolve="start" />
                          </node>
                          <node concept="3cmrfG" id="7CnofvYvV4O" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Oyi0" id="7CnofvYvV4P" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3clFbJ" id="7CnofvYvV4Q" role="3cqZAp">
                  <node concept="3eOSWO" id="7CnofvYvV4R" role="3clFbw">
                    <node concept="37vLTw" id="7CnofvYvV4S" role="3uHU7B">
                      <ref role="3cqZAo" node="7CnofvYvV4H" resolve="semicolon" />
                    </node>
                    <node concept="3cmrfG" id="7CnofvYvV4T" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7CnofvYvV4U" role="3clFbx">
                    <node concept="3cpWs8" id="7CnofvYvV4V" role="3cqZAp">
                      <node concept="3cpWsn" id="7CnofvYvV4W" role="3cpWs9">
                        <property role="TrG5h" value="val" />
                        <property role="3TUv4t" value="false" />
                        <node concept="2OqwBi" id="7CnofvYvV4X" role="33vP2m">
                          <node concept="37vLTw" id="7CnofvYvV4Y" role="2Oq$k0">
                            <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
                          </node>
                          <node concept="liA8E" id="7CnofvYvV4Z" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                            <node concept="3cpWs3" id="7CnofvYvV50" role="37wK5m">
                              <node concept="37vLTw" id="7CnofvYvV51" role="3uHU7B">
                                <ref role="3cqZAo" node="7CnofvYvV4$" resolve="start" />
                              </node>
                              <node concept="3cmrfG" id="7CnofvYvV52" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7CnofvYvV53" role="37wK5m">
                              <ref role="3cqZAo" node="7CnofvYvV4H" resolve="semicolon" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="7CnofvYvV54" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7CnofvYvV55" role="3cqZAp">
                      <node concept="2OqwBi" id="7CnofvYvV56" role="3clFbw">
                        <node concept="37vLTw" id="7CnofvYvV57" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvV58" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                          <node concept="Xl_RD" id="7CnofvYvV59" role="37wK5m">
                            <property role="Xl_RC" value="#" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="7CnofvYvV5a" role="9aQIa">
                        <node concept="3clFbS" id="7CnofvYvV5b" role="9aQI4">
                          <node concept="3clFbJ" id="7CnofvYvV5c" role="3cqZAp">
                            <node concept="3clFbC" id="7CnofvYvV5d" role="3clFbw">
                              <node concept="2OqwBi" id="7CnofvYvV5e" role="3uHU7B">
                                <node concept="37vLTw" id="7CnofvYvV5f" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                </node>
                                <node concept="liA8E" id="7CnofvYvV5g" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                                </node>
                              </node>
                              <node concept="3cmrfG" id="7CnofvYvV5h" role="3uHU7w">
                                <property role="3cmrfH" value="2" />
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7CnofvYvV5i" role="9aQIa">
                              <node concept="2OqwBi" id="7CnofvYvV5j" role="3clFbw">
                                <node concept="Xl_RD" id="7CnofvYvV5k" role="2Oq$k0">
                                  <property role="Xl_RC" value="amp" />
                                </node>
                                <node concept="liA8E" id="7CnofvYvV5l" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                  <node concept="37vLTw" id="7CnofvYvV5m" role="37wK5m">
                                    <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="7CnofvYvV5n" role="9aQIa">
                                <node concept="2OqwBi" id="7CnofvYvV5o" role="3clFbw">
                                  <node concept="Xl_RD" id="7CnofvYvV5p" role="2Oq$k0">
                                    <property role="Xl_RC" value="apos" />
                                  </node>
                                  <node concept="liA8E" id="7CnofvYvV5q" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="37vLTw" id="7CnofvYvV5r" role="37wK5m">
                                      <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="7CnofvYvV5s" role="9aQIa">
                                  <node concept="2OqwBi" id="7CnofvYvV5t" role="3clFbw">
                                    <node concept="Xl_RD" id="7CnofvYvV5u" role="2Oq$k0">
                                      <property role="Xl_RC" value="quot" />
                                    </node>
                                    <node concept="liA8E" id="7CnofvYvV5v" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                      <node concept="37vLTw" id="7CnofvYvV5w" role="37wK5m">
                                        <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="7CnofvYvV5x" role="3clFbx">
                                    <node concept="3clFbF" id="7CnofvYvV5y" role="3cqZAp">
                                      <node concept="37vLTI" id="7CnofvYvV5z" role="3clFbG">
                                        <node concept="37vLTw" id="7CnofvYvV5$" role="37vLTJ">
                                          <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                                        </node>
                                        <node concept="Xl_RD" id="7CnofvYvV5_" role="37vLTx">
                                          <property role="Xl_RC" value="\&quot;" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="7CnofvYvV5A" role="3clFbx">
                                  <node concept="3clFbF" id="7CnofvYvV5B" role="3cqZAp">
                                    <node concept="37vLTI" id="7CnofvYvV5C" role="3clFbG">
                                      <node concept="37vLTw" id="7CnofvYvV5D" role="37vLTJ">
                                        <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                                      </node>
                                      <node concept="Xl_RD" id="7CnofvYvV5E" role="37vLTx">
                                        <property role="Xl_RC" value="'" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7CnofvYvV5F" role="3clFbx">
                                <node concept="3clFbF" id="7CnofvYvV5G" role="3cqZAp">
                                  <node concept="37vLTI" id="7CnofvYvV5H" role="3clFbG">
                                    <node concept="37vLTw" id="7CnofvYvV5I" role="37vLTJ">
                                      <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                                    </node>
                                    <node concept="Xl_RD" id="7CnofvYvV5J" role="37vLTx">
                                      <property role="Xl_RC" value="&amp;" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="7CnofvYvV5K" role="3clFbx">
                              <node concept="3clFbJ" id="7CnofvYvV5L" role="3cqZAp">
                                <node concept="2OqwBi" id="7CnofvYvV5M" role="3clFbw">
                                  <node concept="Xl_RD" id="7CnofvYvV5N" role="2Oq$k0">
                                    <property role="Xl_RC" value="lt" />
                                  </node>
                                  <node concept="liA8E" id="7CnofvYvV5O" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="37vLTw" id="7CnofvYvV5P" role="37wK5m">
                                      <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="7CnofvYvV5Q" role="9aQIa">
                                  <node concept="2OqwBi" id="7CnofvYvV5R" role="3clFbw">
                                    <node concept="Xl_RD" id="7CnofvYvV5S" role="2Oq$k0">
                                      <property role="Xl_RC" value="gt" />
                                    </node>
                                    <node concept="liA8E" id="7CnofvYvV5T" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                      <node concept="37vLTw" id="7CnofvYvV5U" role="37wK5m">
                                        <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="7CnofvYvV5V" role="3clFbx">
                                    <node concept="3clFbF" id="7CnofvYvV5W" role="3cqZAp">
                                      <node concept="37vLTI" id="7CnofvYvV5X" role="3clFbG">
                                        <node concept="37vLTw" id="7CnofvYvV5Y" role="37vLTJ">
                                          <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                                        </node>
                                        <node concept="Xl_RD" id="7CnofvYvV5Z" role="37vLTx">
                                          <property role="Xl_RC" value="&gt;" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="7CnofvYvV60" role="3clFbx">
                                  <node concept="3clFbF" id="7CnofvYvV61" role="3cqZAp">
                                    <node concept="37vLTI" id="7CnofvYvV62" role="3clFbG">
                                      <node concept="37vLTw" id="7CnofvYvV63" role="37vLTJ">
                                        <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                                      </node>
                                      <node concept="Xl_RD" id="7CnofvYvV64" role="37vLTx">
                                        <property role="Xl_RC" value="&lt;" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7CnofvYvV65" role="3clFbx">
                        <node concept="SfApY" id="7CnofvYvV66" role="3cqZAp">
                          <node concept="TDmWw" id="7CnofvYvV67" role="TEbGg">
                            <node concept="3clFbS" id="7CnofvYvV68" role="TDEfX">
                              <node concept="3SKdUt" id="7CnofvYvV69" role="3cqZAp">
                                <node concept="3SKdUq" id="7CnofvYvV6a" role="3SKWNk">
                                  <property role="3SKdUp" value=" ignore, skip " />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="7CnofvYvV6b" role="TDEfY">
                              <property role="TrG5h" value="ex" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="7CnofvYvV6c" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="7CnofvYvV6d" role="SfCbr">
                            <node concept="3cpWs8" id="7CnofvYvV6e" role="3cqZAp">
                              <node concept="3cpWsn" id="7CnofvYvV6f" role="3cpWs9">
                                <property role="TrG5h" value="value" />
                                <property role="3TUv4t" value="false" />
                                <node concept="10Oyi0" id="7CnofvYvV6g" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7CnofvYvV6h" role="3cqZAp">
                              <node concept="1Wc70l" id="7CnofvYvV6i" role="3clFbw">
                                <node concept="3eOSWO" id="7CnofvYvV6j" role="3uHU7B">
                                  <node concept="2OqwBi" id="7CnofvYvV6k" role="3uHU7B">
                                    <node concept="37vLTw" id="7CnofvYvV6l" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                    </node>
                                    <node concept="liA8E" id="7CnofvYvV6m" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                                    </node>
                                  </node>
                                  <node concept="3cmrfG" id="7CnofvYvV6n" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="7CnofvYvV6o" role="3uHU7w">
                                  <node concept="22lmx$" id="7CnofvYvV6p" role="1eOMHV">
                                    <node concept="3clFbC" id="7CnofvYvV6q" role="3uHU7B">
                                      <node concept="2OqwBi" id="7CnofvYvV6r" role="3uHU7B">
                                        <node concept="37vLTw" id="7CnofvYvV6s" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                        </node>
                                        <node concept="liA8E" id="7CnofvYvV6t" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.charAt(int):char" resolve="charAt" />
                                          <node concept="3cmrfG" id="7CnofvYvV6u" role="37wK5m">
                                            <property role="3cmrfH" value="1" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="1Xhbcc" id="7CnofvYvV6v" role="3uHU7w">
                                        <property role="1XhdNS" value="x" />
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="7CnofvYvV6w" role="3uHU7w">
                                      <node concept="2OqwBi" id="7CnofvYvV6x" role="3uHU7B">
                                        <node concept="37vLTw" id="7CnofvYvV6y" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                        </node>
                                        <node concept="liA8E" id="7CnofvYvV6z" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.charAt(int):char" resolve="charAt" />
                                          <node concept="3cmrfG" id="7CnofvYvV6$" role="37wK5m">
                                            <property role="3cmrfH" value="1" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="1Xhbcc" id="7CnofvYvV6_" role="3uHU7w">
                                        <property role="1XhdNS" value="X" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="9aQIb" id="7CnofvYvV6A" role="9aQIa">
                                <node concept="3clFbS" id="7CnofvYvV6B" role="9aQI4">
                                  <node concept="3clFbF" id="7CnofvYvV6C" role="3cqZAp">
                                    <node concept="37vLTI" id="7CnofvYvV6D" role="3clFbG">
                                      <node concept="2YIFZM" id="7CnofvYvV6E" role="37vLTx">
                                        <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                                        <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String,int):int" resolve="parseInt" />
                                        <node concept="2OqwBi" id="7CnofvYvV6F" role="37wK5m">
                                          <node concept="37vLTw" id="7CnofvYvV6G" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                          </node>
                                          <node concept="liA8E" id="7CnofvYvV6H" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                                            <node concept="3cmrfG" id="7CnofvYvV6I" role="37wK5m">
                                              <property role="3cmrfH" value="1" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cmrfG" id="7CnofvYvV6J" role="37wK5m">
                                          <property role="3cmrfH" value="10" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="7CnofvYvV6K" role="37vLTJ">
                                        <ref role="3cqZAo" node="7CnofvYvV6f" resolve="value" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7CnofvYvV6L" role="3clFbx">
                                <node concept="3clFbF" id="7CnofvYvV6M" role="3cqZAp">
                                  <node concept="37vLTI" id="7CnofvYvV6N" role="3clFbG">
                                    <node concept="2YIFZM" id="7CnofvYvV6O" role="37vLTx">
                                      <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                                      <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String,int):int" resolve="parseInt" />
                                      <node concept="2OqwBi" id="7CnofvYvV6P" role="37wK5m">
                                        <node concept="37vLTw" id="7CnofvYvV6Q" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7CnofvYvV4W" resolve="val" />
                                        </node>
                                        <node concept="liA8E" id="7CnofvYvV6R" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                                          <node concept="3cmrfG" id="7CnofvYvV6S" role="37wK5m">
                                            <property role="3cmrfH" value="2" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cmrfG" id="7CnofvYvV6T" role="37wK5m">
                                        <property role="3cmrfH" value="16" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7CnofvYvV6U" role="37vLTJ">
                                      <ref role="3cqZAo" node="7CnofvYvV6f" resolve="value" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7CnofvYvV6V" role="3cqZAp">
                              <node concept="1Wc70l" id="7CnofvYvV6W" role="3clFbw">
                                <node concept="2d3UOw" id="7CnofvYvV6X" role="3uHU7B">
                                  <node concept="37vLTw" id="7CnofvYvV6Y" role="3uHU7B">
                                    <ref role="3cqZAo" node="7CnofvYvV6f" resolve="value" />
                                  </node>
                                  <node concept="3cmrfG" id="7CnofvYvV6Z" role="3uHU7w">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="3eOVzh" id="7CnofvYvV70" role="3uHU7w">
                                  <node concept="37vLTw" id="7CnofvYvV71" role="3uHU7B">
                                    <ref role="3cqZAo" node="7CnofvYvV6f" resolve="value" />
                                  </node>
                                  <node concept="3cmrfG" id="7CnofvYvV72" role="3uHU7w">
                                    <property role="3cmrfH" value="65535" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7CnofvYvV73" role="3clFbx">
                                <node concept="3clFbF" id="7CnofvYvV74" role="3cqZAp">
                                  <node concept="37vLTI" id="7CnofvYvV75" role="3clFbG">
                                    <node concept="2YIFZM" id="7CnofvYvV76" role="37vLTx">
                                      <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                                      <ref role="37wK5l" to="wyt6:~Character.toString(char):java.lang.String" resolve="toString" />
                                      <node concept="10QFUN" id="7CnofvYvV77" role="37wK5m">
                                        <node concept="37vLTw" id="7CnofvYvV78" role="10QFUP">
                                          <ref role="3cqZAo" node="7CnofvYvV6f" resolve="value" />
                                        </node>
                                        <node concept="10Pfzv" id="7CnofvYvV79" role="10QFUM" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7CnofvYvV7a" role="37vLTJ">
                                      <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7CnofvYvV7b" role="3cqZAp">
                      <node concept="3y3z36" id="7CnofvYvV7c" role="3clFbw">
                        <node concept="37vLTw" id="7CnofvYvV7d" role="3uHU7B">
                          <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                        </node>
                        <node concept="10Nm6u" id="7CnofvYvV7e" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="7CnofvYvV7f" role="3clFbx">
                        <node concept="3clFbF" id="7CnofvYvV7g" role="3cqZAp">
                          <node concept="37vLTI" id="7CnofvYvV7h" role="3clFbG">
                            <node concept="37vLTw" id="7CnofvYvV7i" role="37vLTJ">
                              <ref role="3cqZAo" node="7CnofvYvV4d" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="7CnofvYvV7j" role="37vLTx">
                              <ref role="3cqZAo" node="7CnofvYvV4H" resolve="semicolon" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7CnofvYvV7k" role="3cqZAp">
              <node concept="3clFbC" id="7CnofvYvV7l" role="3clFbw">
                <node concept="37vLTw" id="7CnofvYvV7m" role="3uHU7B">
                  <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
                </node>
                <node concept="10Nm6u" id="7CnofvYvV7n" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="7CnofvYvV7o" role="9aQIa">
                <node concept="3clFbS" id="7CnofvYvV7p" role="9aQI4">
                  <node concept="3clFbJ" id="7CnofvYvV7q" role="3cqZAp">
                    <node concept="3clFbC" id="7CnofvYvV7r" role="3clFbw">
                      <node concept="37vLTw" id="7CnofvYvV7s" role="3uHU7B">
                        <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                      </node>
                      <node concept="10Nm6u" id="7CnofvYvV7t" role="3uHU7w" />
                    </node>
                    <node concept="9aQIb" id="7CnofvYvV7u" role="9aQIa">
                      <node concept="3clFbS" id="7CnofvYvV7v" role="9aQI4">
                        <node concept="3clFbF" id="7CnofvYvV7w" role="3cqZAp">
                          <node concept="2OqwBi" id="7CnofvYvV7x" role="3clFbG">
                            <node concept="37vLTw" id="7CnofvYvV7y" role="2Oq$k0">
                              <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
                            </node>
                            <node concept="liA8E" id="7CnofvYvV7z" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="37vLTw" id="7CnofvYvV7$" role="37wK5m">
                                <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="7CnofvYvV7_" role="3clFbx">
                      <node concept="3clFbF" id="7CnofvYvV7A" role="3cqZAp">
                        <node concept="2OqwBi" id="7CnofvYvV7B" role="3clFbG">
                          <node concept="37vLTw" id="7CnofvYvV7C" role="2Oq$k0">
                            <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
                          </node>
                          <node concept="liA8E" id="7CnofvYvV7D" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(char):java.lang.StringBuilder" resolve="append" />
                            <node concept="37vLTw" id="7CnofvYvV7E" role="37wK5m">
                              <ref role="3cqZAo" node="7CnofvYvV4p" resolve="ch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7CnofvYvV7F" role="3clFbx">
                <node concept="3clFbJ" id="7CnofvYvV7G" role="3cqZAp">
                  <node concept="3y3z36" id="7CnofvYvV7H" role="3clFbw">
                    <node concept="37vLTw" id="7CnofvYvV7I" role="3uHU7B">
                      <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
                    </node>
                    <node concept="10Nm6u" id="7CnofvYvV7J" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="7CnofvYvV7K" role="3clFbx">
                    <node concept="3clFbF" id="7CnofvYvV7L" role="3cqZAp">
                      <node concept="37vLTI" id="7CnofvYvV7M" role="3clFbG">
                        <node concept="2ShNRf" id="7CnofvYvV7N" role="37vLTx">
                          <node concept="1pGfFk" id="7CnofvYvV7O" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(int)" resolve="StringBuilder" />
                            <node concept="2OqwBi" id="7CnofvYvV7P" role="37wK5m">
                              <node concept="37vLTw" id="7CnofvYvV7Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
                              </node>
                              <node concept="liA8E" id="7CnofvYvV7R" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="7CnofvYvV7S" role="37vLTJ">
                          <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="7CnofvYvV7T" role="3cqZAp">
                      <node concept="3SKdUq" id="7CnofvYvV7U" role="3SKWNk">
                        <property role="3SKdUp" value=" Copy previous skipped characters and fall through" />
                      </node>
                    </node>
                    <node concept="3SKdUt" id="7CnofvYvV7V" role="3cqZAp">
                      <node concept="3SKdUq" id="7CnofvYvV7W" role="3SKWNk">
                        <property role="3SKdUp" value=" to pickup current character" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="7CnofvYvV7X" role="3cqZAp">
                      <node concept="2OqwBi" id="7CnofvYvV7Y" role="3clFbG">
                        <node concept="37vLTw" id="7CnofvYvV7Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvV80" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="2OqwBi" id="7CnofvYvV81" role="37wK5m">
                            <node concept="37vLTw" id="7CnofvYvV82" role="2Oq$k0">
                              <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
                            </node>
                            <node concept="liA8E" id="7CnofvYvV83" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                              <node concept="3cmrfG" id="7CnofvYvV84" role="37wK5m">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="7CnofvYvV85" role="37wK5m">
                                <ref role="3cqZAo" node="7CnofvYvV4$" resolve="start" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7CnofvYvV86" role="3cqZAp">
                      <node concept="2OqwBi" id="7CnofvYvV87" role="3clFbG">
                        <node concept="37vLTw" id="7CnofvYvV88" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
                        </node>
                        <node concept="liA8E" id="7CnofvYvV89" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="37vLTw" id="7CnofvYvV8a" role="37wK5m">
                            <ref role="3cqZAo" node="7CnofvYvV4w" resolve="quotation" />
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
        <node concept="3SKdUt" id="7CnofvYvV8b" role="3cqZAp">
          <node concept="3SKdUq" id="7CnofvYvV8c" role="3SKWNk">
            <property role="3SKdUp" value=" If there were any entities, return the escaped characters" />
          </node>
        </node>
        <node concept="3SKdUt" id="7CnofvYvV8d" role="3cqZAp">
          <node concept="3SKdUq" id="7CnofvYvV8e" role="3SKWNk">
            <property role="3SKdUp" value=" that we put in the StringBuilder. Otherwise, just return" />
          </node>
        </node>
        <node concept="3SKdUt" id="7CnofvYvV8f" role="3cqZAp">
          <node concept="3SKdUq" id="7CnofvYvV8g" role="3SKWNk">
            <property role="3SKdUp" value=" the unmodified input string." />
          </node>
        </node>
        <node concept="3cpWs6" id="7CnofvYvV8h" role="3cqZAp">
          <node concept="3K4zz7" id="7CnofvYvV8i" role="3cqZAk">
            <node concept="2OqwBi" id="7CnofvYvV8j" role="3K4GZi">
              <node concept="37vLTw" id="7CnofvYvV8k" role="2Oq$k0">
                <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
              </node>
              <node concept="liA8E" id="7CnofvYvV8l" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
            <node concept="3clFbC" id="7CnofvYvV8m" role="3K4Cdx">
              <node concept="37vLTw" id="7CnofvYvV8n" role="3uHU7B">
                <ref role="3cqZAo" node="7CnofvYvV49" resolve="buffer" />
              </node>
              <node concept="10Nm6u" id="7CnofvYvV8o" role="3uHU7w" />
            </node>
            <node concept="37vLTw" id="7CnofvYvV8p" role="3K4E3e">
              <ref role="3cqZAo" node="7CnofvYvV44" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7CnofvYvV8q" role="1B3o_S" />
      <node concept="3uibUv" id="7CnofvYvV8r" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2XB5puvk9rk">
    <property role="TrG5h" value="GeneratorProperties" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="2XB5puvkeo3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TRANSFORM_IN_PLACE" />
      <node concept="3Tm6S6" id="2XB5puvmSVq" role="1B3o_S" />
      <node concept="17QB3L" id="2XB5puvkeoy" role="1tU5fm" />
      <node concept="Xl_RD" id="2XB5puvkerC" role="33vP2m">
        <property role="Xl_RC" value="in-place" />
      </node>
    </node>
    <node concept="Wx3nA" id="3Iy_$1rXX$2" role="jymVt">
      <property role="TrG5h" value="THREAD_COUNT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Iy_$1rXX$4" role="1B3o_S" />
      <node concept="17QB3L" id="3Iy_$1rXXMF" role="1tU5fm" />
      <node concept="Xl_RD" id="3Iy_$1rXXUX" role="33vP2m">
        <property role="Xl_RC" value="parallel.threads" />
      </node>
    </node>
    <node concept="Wx3nA" id="3qD9ch0p4sQ" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NO_WARNINGS" />
      <node concept="3Tm6S6" id="3qD9ch0p4sR" role="1B3o_S" />
      <node concept="17QB3L" id="3qD9ch0p4sS" role="1tU5fm" />
      <node concept="Xl_RD" id="3qD9ch0p4sT" role="33vP2m">
        <property role="Xl_RC" value="noWarnings" />
      </node>
    </node>
    <node concept="Wx3nA" id="2XB5puvkfx9" role="jymVt">
      <property role="TrG5h" value="STRICT_MODE" />
      <property role="3TUv4t" value="true" />
      <property role="IEkAT" value="false" />
      <node concept="17QB3L" id="2XB5puvkfxb" role="1tU5fm" />
      <node concept="Xl_RD" id="2XB5puvkfxc" role="33vP2m">
        <property role="Xl_RC" value="STRICT_MODE" />
      </node>
      <node concept="3Tm6S6" id="6J7GhdRTqZ0" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2XB5puvkfxd" role="jymVt">
      <property role="TrG5h" value="PARALLEL_MODE" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2XB5puvkfxf" role="1tU5fm" />
      <node concept="Xl_RD" id="2XB5puvkfxg" role="33vP2m">
        <property role="Xl_RC" value="PARALLEL_MODE" />
      </node>
      <node concept="3Tm6S6" id="6J7GhdRTr6I" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="6J7GhdRTreu" role="jymVt">
      <property role="TrG5h" value="USE_STATIC_REFS" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="6J7GhdRTrev" role="1tU5fm" />
      <node concept="Xl_RD" id="6J7GhdRTrew" role="33vP2m">
        <property role="Xl_RC" value="use-static-refs" />
      </node>
      <node concept="3Tm6S6" id="6J7GhdRTrex" role="1B3o_S" />
      <node concept="z59LJ" id="6J7GhdRTygm" role="lGtFl">
        <node concept="TZ5HA" id="6J7GhdRTygn" role="TZ5H$">
          <node concept="1dT_AC" id="6J7GhdRTygo" role="1dT_Ay">
            <property role="1dT_AB" value="Counterpart for IGenerationSettings#createStaticReferences()" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="dVfA4aqYm8" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SKIP_UNMODIFIED_MODELS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="dVfA4aqY2S" role="1B3o_S" />
      <node concept="17QB3L" id="dVfA4aqY68" role="1tU5fm" />
      <node concept="Xl_RD" id="dVfA4aqYD_" role="33vP2m">
        <property role="Xl_RC" value="skip-unmodified-models" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XB5puvmQ8d" role="jymVt" />
    <node concept="312cEg" id="2XB5puvmPVf" role="jymVt">
      <property role="TrG5h" value="myScript" />
      <node concept="3Tm6S6" id="2XB5puvmPVg" role="1B3o_S" />
      <node concept="3uibUv" id="2XB5puvmPVi" role="1tU5fm">
        <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XB5puvmQ9x" role="jymVt" />
    <node concept="3clFbW" id="2XB5puvmPTq" role="jymVt">
      <node concept="3cqZAl" id="2XB5puvmPTs" role="3clF45" />
      <node concept="3Tm1VV" id="2XB5puvmPTt" role="1B3o_S" />
      <node concept="3clFbS" id="2XB5puvmPTu" role="3clF47">
        <node concept="3clFbF" id="2XB5puvmPVj" role="3cqZAp">
          <node concept="37vLTI" id="2XB5puvmPVl" role="3clFbG">
            <node concept="37vLTw" id="2XB5puvmPVt" role="37vLTx">
              <ref role="3cqZAo" node="2XB5puvmPU7" resolve="script" />
            </node>
            <node concept="37vLTw" id="2XB5puvmQcj" role="37vLTJ">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2XB5puvmPU7" role="3clF46">
        <property role="TrG5h" value="script" />
        <node concept="3uibUv" id="2XB5puvmPU6" role="1tU5fm">
          <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Vsuddjh5i2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setStrictMode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4Vsuddjh5i3" role="1B3o_S" />
      <node concept="3uibUv" id="2XB5puvnfez" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="37vLTG" id="4Vsuddjh5i5" role="3clF46">
        <property role="TrG5h" value="strictMode" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="4Vsuddjh5i6" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4Vsuddjh5i7" role="3clF47">
        <node concept="3clFbF" id="4Vsuddjh5i8" role="3cqZAp">
          <node concept="2OqwBi" id="4Vsuddjh5i9" role="3clFbG">
            <node concept="37vLTw" id="2XB5puvmRYH" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="4Vsuddjh5ib" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="2XB5puvmRLd" role="37wK5m">
                <ref role="3cqZAo" node="2XB5puvkfx9" resolve="STRICT_MODE" />
              </node>
              <node concept="2YIFZM" id="4Vsuddjh5ic" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <node concept="37vLTw" id="2BHiRxgm7jd" role="37wK5m">
                  <ref role="3cqZAo" node="4Vsuddjh5i5" resolve="strictMode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2XB5puvnfop" role="3cqZAp">
          <node concept="Xjq3P" id="2XB5puvnfwK" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Vsuddjh5io" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isStrictMode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2XB5puvmSbZ" role="1B3o_S" />
      <node concept="10P_77" id="4Vsuddjh5iq" role="3clF45" />
      <node concept="3clFbS" id="4Vsuddjh5ir" role="3clF47">
        <node concept="3cpWs6" id="4Vsuddjh5is" role="3cqZAp">
          <node concept="2YIFZM" id="4Vsuddjh5it" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
            <node concept="2OqwBi" id="4Vsuddjh5iu" role="37wK5m">
              <node concept="37vLTw" id="2XB5puvmS5j" role="2Oq$k0">
                <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
              </node>
              <node concept="liA8E" id="4Vsuddjh5iw" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="2XB5puvmRLg" role="37wK5m">
                  <ref role="3cqZAo" node="2XB5puvkfx9" resolve="STRICT_MODE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Vsuddjh5iI" role="jymVt">
      <property role="TrG5h" value="setParallelMode" />
      <node concept="37vLTG" id="4Vsuddjh5iJ" role="3clF46">
        <property role="TrG5h" value="parallelMode" />
        <node concept="10P_77" id="4Vsuddjh5iK" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2XB5puvnfBk" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="3Tm1VV" id="4Vsuddjh5iM" role="1B3o_S" />
      <node concept="3clFbS" id="4Vsuddjh5iN" role="3clF47">
        <node concept="3clFbF" id="4Vsuddjh5iO" role="3cqZAp">
          <node concept="2OqwBi" id="4Vsuddjh5iP" role="3clFbG">
            <node concept="37vLTw" id="2XB5puvmSiD" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="4Vsuddjh5iR" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="2XB5puvmRLj" role="37wK5m">
                <ref role="3cqZAo" node="2XB5puvkfxd" resolve="PARALLEL_MODE" />
              </node>
              <node concept="2YIFZM" id="4Vsuddjh5iS" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="2BHiRxgmaWy" role="37wK5m">
                  <ref role="3cqZAo" node="4Vsuddjh5iJ" resolve="parallelMode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2XB5puvnfLk" role="3cqZAp">
          <node concept="Xjq3P" id="2XB5puvnfLl" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Vsuddjh5j4" role="jymVt">
      <property role="TrG5h" value="isParallelMode" />
      <node concept="10P_77" id="4Vsuddjh5j5" role="3clF45" />
      <node concept="3Tm1VV" id="2XB5puvmYNp" role="1B3o_S" />
      <node concept="3clFbS" id="4Vsuddjh5j7" role="3clF47">
        <node concept="3cpWs6" id="4Vsuddjh5j8" role="3cqZAp">
          <node concept="2YIFZM" id="4Vsuddjh5j9" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <node concept="2OqwBi" id="4Vsuddjh5ja" role="37wK5m">
              <node concept="37vLTw" id="2XB5puvmSp8" role="2Oq$k0">
                <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
              </node>
              <node concept="liA8E" id="4Vsuddjh5jc" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="2XB5puvmRLm" role="37wK5m">
                  <ref role="3cqZAo" node="2XB5puvkfxd" resolve="PARALLEL_MODE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3Iy_$1rXPWW" role="jymVt">
      <property role="TrG5h" value="setParallelThreads" />
      <node concept="3uibUv" id="3Iy_$1rXQ9Z" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="3Tm1VV" id="3Iy_$1rXPWZ" role="1B3o_S" />
      <node concept="3clFbS" id="3Iy_$1rXPX0" role="3clF47">
        <node concept="3clFbF" id="3Iy_$1rXTb0" role="3cqZAp">
          <node concept="2OqwBi" id="3Iy_$1rXTc_" role="3clFbG">
            <node concept="37vLTw" id="3Iy_$1rXTaZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="3Iy_$1rXTex" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="3Iy_$1rXY3M" role="37wK5m">
                <ref role="3cqZAo" node="3Iy_$1rXX$2" resolve="THREAD_COUNT" />
              </node>
              <node concept="2YIFZM" id="3Iy_$1rXYoM" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Integer.toString(int):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <node concept="37vLTw" id="3Iy_$1rXYwK" role="37wK5m">
                  <ref role="3cqZAo" node="3Iy_$1rXSZw" resolve="threadsCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3Iy_$1rXTo2" role="3cqZAp">
          <node concept="Xjq3P" id="3Iy_$1rXT_b" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="3Iy_$1rXSZw" role="3clF46">
        <property role="TrG5h" value="threadsCount" />
        <node concept="10Oyi0" id="3Iy_$1rXSZv" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3Iy_$1rXTZH" role="jymVt">
      <property role="TrG5h" value="getParallelThreads" />
      <node concept="10Oyi0" id="3Iy_$1rXUe8" role="3clF45" />
      <node concept="3Tm1VV" id="3Iy_$1rXTZK" role="1B3o_S" />
      <node concept="3clFbS" id="3Iy_$1rXTZL" role="3clF47">
        <node concept="SfApY" id="3Iy_$1rY3_$" role="3cqZAp">
          <node concept="3clFbS" id="3Iy_$1rY3_A" role="SfCbr">
            <node concept="3cpWs6" id="3Iy_$1rXWE6" role="3cqZAp">
              <node concept="2YIFZM" id="3Iy_$1rXZXK" role="3cqZAk">
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                <node concept="2OqwBi" id="3Iy_$1rY6z4" role="37wK5m">
                  <node concept="37vLTw" id="3Iy_$1rY6ea" role="2Oq$k0">
                    <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
                  </node>
                  <node concept="liA8E" id="3Iy_$1rY6Ts" role="2OqNvi">
                    <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                    <node concept="37vLTw" id="3Iy_$1rY7f2" role="37wK5m">
                      <ref role="3cqZAo" node="3Iy_$1rXX$2" resolve="THREAD_COUNT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="3Iy_$1rY3_B" role="TEbGg">
            <node concept="3cpWsn" id="3Iy_$1rY3_D" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="3Iy_$1rY573" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
              </node>
            </node>
            <node concept="3clFbS" id="3Iy_$1rY3_H" role="TDEfX">
              <node concept="3cpWs6" id="3Iy_$1rY5m1" role="3cqZAp">
                <node concept="3cmrfG" id="3Iy_$1rY5Xk" role="3cqZAk">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2XB5puvllhI" role="jymVt">
      <property role="TrG5h" value="setInplaceTransform" />
      <node concept="3uibUv" id="2XB5puvnfUc" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="3Tm1VV" id="2XB5puvllhL" role="1B3o_S" />
      <node concept="3clFbS" id="2XB5puvllhM" role="3clF47">
        <node concept="3clFbF" id="2XB5puvl_td" role="3cqZAp">
          <node concept="2OqwBi" id="2XB5puvl_xh" role="3clFbG">
            <node concept="37vLTw" id="2XB5puvmSw9" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="2XB5puvl_An" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="2XB5puvmRLp" role="37wK5m">
                <ref role="3cqZAo" node="2XB5puvkeo3" resolve="TRANSFORM_IN_PLACE" />
              </node>
              <node concept="2YIFZM" id="2XB5puvlF6x" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="2XB5puvlFAX" role="37wK5m">
                  <ref role="3cqZAo" node="2XB5puvl$Fb" resolve="inplaceEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2XB5puvng4b" role="3cqZAp">
          <node concept="Xjq3P" id="2XB5puvng4c" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="2XB5puvl$Fb" role="3clF46">
        <property role="TrG5h" value="inplaceEnabled" />
        <node concept="10P_77" id="2XB5puvl$Fa" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="2XB5puvlGtH" role="jymVt">
      <property role="TrG5h" value="isInplaceTransform" />
      <node concept="10P_77" id="2XB5puvlIik" role="3clF45" />
      <node concept="3Tm1VV" id="2XB5puvmYTI" role="1B3o_S" />
      <node concept="3clFbS" id="2XB5puvlGtL" role="3clF47">
        <node concept="3cpWs6" id="2XB5puvm22t" role="3cqZAp">
          <node concept="2YIFZM" id="2XB5puvm22u" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
            <node concept="2OqwBi" id="2XB5puvm22v" role="37wK5m">
              <node concept="37vLTw" id="2XB5puvmSAJ" role="2Oq$k0">
                <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
              </node>
              <node concept="liA8E" id="2XB5puvm22x" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="2XB5puvmRLs" role="37wK5m">
                  <ref role="3cqZAo" node="2XB5puvkeo3" resolve="TRANSFORM_IN_PLACE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3qD9ch0oVbz" role="jymVt">
      <property role="TrG5h" value="setHideWarnings" />
      <node concept="3uibUv" id="3qD9ch0oVb$" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="3Tm1VV" id="3qD9ch0oVb_" role="1B3o_S" />
      <node concept="3clFbS" id="3qD9ch0oVbA" role="3clF47">
        <node concept="3clFbF" id="3qD9ch0oVbB" role="3cqZAp">
          <node concept="2OqwBi" id="3qD9ch0oVbC" role="3clFbG">
            <node concept="37vLTw" id="3qD9ch0oVbD" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="3qD9ch0oVbE" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="3qD9ch0sU1Y" role="37wK5m">
                <ref role="3cqZAo" node="3qD9ch0p4sQ" resolve="NO_WARNINGS" />
              </node>
              <node concept="2YIFZM" id="3qD9ch0oVbF" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <node concept="37vLTw" id="3qD9ch0oVbG" role="37wK5m">
                  <ref role="3cqZAo" node="3qD9ch0oVbJ" resolve="enabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3qD9ch0oVbH" role="3cqZAp">
          <node concept="Xjq3P" id="3qD9ch0oVbI" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="3qD9ch0oVbJ" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="3qD9ch0oVbK" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="3qD9ch0oVbP" role="jymVt">
      <property role="TrG5h" value="isHideWarnings" />
      <node concept="10P_77" id="3qD9ch0oVbQ" role="3clF45" />
      <node concept="3Tm1VV" id="3qD9ch0oVbR" role="1B3o_S" />
      <node concept="3clFbS" id="3qD9ch0oVbS" role="3clF47">
        <node concept="3cpWs6" id="3qD9ch0oVbT" role="3cqZAp">
          <node concept="2YIFZM" id="3qD9ch0oVbU" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <node concept="2OqwBi" id="3qD9ch0oVbV" role="37wK5m">
              <node concept="37vLTw" id="3qD9ch0oVbW" role="2Oq$k0">
                <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
              </node>
              <node concept="liA8E" id="3qD9ch0oVbX" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="3qD9ch0sU6q" role="37wK5m">
                  <ref role="3cqZAo" node="3qD9ch0p4sQ" resolve="NO_WARNINGS" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6J7GhdRTuSs" role="jymVt">
      <property role="TrG5h" value="setCreateStaticRefs" />
      <node concept="3uibUv" id="6J7GhdRTF_U" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="3Tm1VV" id="6J7GhdRTuSv" role="1B3o_S" />
      <node concept="3clFbS" id="6J7GhdRTuSw" role="3clF47">
        <node concept="3clFbF" id="6J7GhdRTFQ1" role="3cqZAp">
          <node concept="2OqwBi" id="6J7GhdRTFYj" role="3clFbG">
            <node concept="37vLTw" id="6J7GhdRTFPZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="6J7GhdRTG2F" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="6J7GhdRTG4_" role="37wK5m">
                <ref role="3cqZAo" node="6J7GhdRTreu" resolve="USE_STATIC_REFS" />
              </node>
              <node concept="2YIFZM" id="6J7GhdRTG7F" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="6J7GhdRTG9q" role="37wK5m">
                  <ref role="3cqZAo" node="6J7GhdRTFut" resolve="useStaticFefs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6J7GhdRTFHL" role="3cqZAp">
          <node concept="Xjq3P" id="6J7GhdRTFI1" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="6J7GhdRTFut" role="3clF46">
        <property role="TrG5h" value="useStaticFefs" />
        <node concept="10P_77" id="6J7GhdRTFus" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6J7GhdRTvgx" role="jymVt">
      <property role="TrG5h" value="isCreateStaticRefs" />
      <node concept="10P_77" id="6J7GhdRTvsE" role="3clF45" />
      <node concept="3Tm1VV" id="6J7GhdRTvg$" role="1B3o_S" />
      <node concept="3clFbS" id="6J7GhdRTvg_" role="3clF47">
        <node concept="3cpWs6" id="6J7GhdRTGb0" role="3cqZAp">
          <node concept="2YIFZM" id="6J7GhdRTGrK" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <node concept="2OqwBi" id="6J7GhdRTGH_" role="37wK5m">
              <node concept="37vLTw" id="6J7GhdRTG$F" role="2Oq$k0">
                <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
              </node>
              <node concept="liA8E" id="6J7GhdRTHxu" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="6J7GhdRTHFn" role="37wK5m">
                  <ref role="3cqZAo" node="6J7GhdRTreu" resolve="USE_STATIC_REFS" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="dVfA4aqZjs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSkipUnmodifiedModels" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="dVfA4aqZjv" role="3clF47">
        <node concept="3clFbF" id="dVfA4ar0ph" role="3cqZAp">
          <node concept="2OqwBi" id="dVfA4ar0BJ" role="3clFbG">
            <node concept="37vLTw" id="dVfA4ar0pf" role="2Oq$k0">
              <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
            </node>
            <node concept="liA8E" id="dVfA4ar0IA" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="dVfA4ar0MC" role="37wK5m">
                <ref role="3cqZAo" node="dVfA4aqYm8" resolve="SKIP_UNMODIFIED_MODELS" />
              </node>
              <node concept="2YIFZM" id="dVfA4ar10r" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="dVfA4ar1ab" role="37wK5m">
                  <ref role="3cqZAo" node="dVfA4aqZAT" resolve="skipUnmodifiedModels" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="dVfA4aqZS0" role="3cqZAp">
          <node concept="Xjq3P" id="dVfA4aqZSs" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="dVfA4aqYXl" role="1B3o_S" />
      <node concept="3uibUv" id="dVfA4aqZg_" role="3clF45">
        <ref role="3uigEE" node="2XB5puvk9rk" resolve="GeneratorProperties" />
      </node>
      <node concept="37vLTG" id="dVfA4aqZAT" role="3clF46">
        <property role="TrG5h" value="skipUnmodifiedModels" />
        <node concept="10P_77" id="dVfA4aqZAS" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="dVfA4ar1SE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSkipUnmodifiedModels" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="dVfA4ar1SH" role="3clF47">
        <node concept="3cpWs6" id="dVfA4ar2rc" role="3cqZAp">
          <node concept="2YIFZM" id="dVfA4ar2Kf" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <node concept="2OqwBi" id="dVfA4ar3gO" role="37wK5m">
              <node concept="37vLTw" id="dVfA4ar31B" role="2Oq$k0">
                <ref role="3cqZAo" node="2XB5puvmPVf" resolve="myScript" />
              </node>
              <node concept="liA8E" id="dVfA4ar3$_" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="dVfA4ar3Se" role="37wK5m">
                  <ref role="3cqZAo" node="dVfA4aqYm8" resolve="SKIP_UNMODIFIED_MODELS" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="dVfA4ar1$g" role="1B3o_S" />
      <node concept="10P_77" id="dVfA4ar1S$" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="2XB5puvk9rl" role="1B3o_S" />
    <node concept="3UR2Jj" id="2XB5puvmRG0" role="lGtFl">
      <node concept="TZ5HA" id="2XB5puvmRG1" role="TZ5H$">
        <node concept="1dT_AC" id="2XB5puvmRG2" role="1dT_Ay">
          <property role="1dT_AB" value="Facility to pass generator parameters from ant task to actual worker via script" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3pzB6wMWmOx">
    <property role="TrG5h" value="JavaCompilerProperties" />
    <node concept="Wx3nA" id="3pzB6wMWswf" role="jymVt">
      <property role="TrG5h" value="TARGET_JAVA_VERSION" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3pzB6wMWtuV" role="1tU5fm" />
      <node concept="Xl_RD" id="3pzB6wMWswh" role="33vP2m">
        <property role="Xl_RC" value="target" />
      </node>
      <node concept="3Tm6S6" id="3pzB6wMWswi" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5nerzVuutVb" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SKIP_COMPILATION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5nerzVuutNU" role="1B3o_S" />
      <node concept="17QB3L" id="5nerzVuutV6" role="1tU5fm" />
      <node concept="Xl_RD" id="5nerzVuuu2z" role="33vP2m">
        <property role="Xl_RC" value="skipCompilation" />
      </node>
    </node>
    <node concept="312cEg" id="3pzB6wMWswj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myScript" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3pzB6wMWswl" role="1tU5fm">
        <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
      </node>
      <node concept="3Tm6S6" id="3pzB6wMWswm" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3pzB6wMWswn" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="3pzB6wMWswo" role="3clF45" />
      <node concept="37vLTG" id="3pzB6wMWswp" role="3clF46">
        <property role="TrG5h" value="script" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3pzB6wMWswq" role="1tU5fm">
          <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
        </node>
      </node>
      <node concept="3clFbS" id="3pzB6wMWswr" role="3clF47">
        <node concept="3clFbF" id="3pzB6wMWsws" role="3cqZAp">
          <node concept="37vLTI" id="3pzB6wMWswt" role="3clFbG">
            <node concept="37vLTw" id="3pzB6wMWswu" role="37vLTJ">
              <ref role="3cqZAo" node="3pzB6wMWswj" resolve="myScript" />
            </node>
            <node concept="37vLTw" id="3pzB6wMWswv" role="37vLTx">
              <ref role="3cqZAo" node="3pzB6wMWswp" resolve="script" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3pzB6wMWsww" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3pzB6wMWswx" role="jymVt">
      <property role="TrG5h" value="setTargetJavaVersion" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3pzB6wMWswy" role="3clF46">
        <property role="TrG5h" value="targetJavaVersion" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3pzB6wMWswz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3pzB6wMWsw$" role="3clF47">
        <node concept="3clFbF" id="3pzB6wMWsw_" role="3cqZAp">
          <node concept="2OqwBi" id="3pzB6wMWswR" role="3clFbG">
            <node concept="37vLTw" id="3pzB6wMWswQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3pzB6wMWswj" resolve="myScript" />
            </node>
            <node concept="liA8E" id="3pzB6wMWswS" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="3pzB6wMWswB" role="37wK5m">
                <ref role="3cqZAo" node="3pzB6wMWswf" resolve="TARGET_JAVA_VERSION" />
              </node>
              <node concept="37vLTw" id="3pzB6wMWswC" role="37wK5m">
                <ref role="3cqZAo" node="3pzB6wMWswy" resolve="targetJavaVersion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3pzB6wMWswD" role="3cqZAp">
          <node concept="Xjq3P" id="3pzB6wMWswE" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3pzB6wMWswF" role="1B3o_S" />
      <node concept="3uibUv" id="3pzB6wMWswG" role="3clF45">
        <ref role="3uigEE" node="3pzB6wMWmOx" resolve="JavaCompilerProperties" />
      </node>
    </node>
    <node concept="3clFb_" id="3pzB6wMWswH" role="jymVt">
      <property role="TrG5h" value="getTargetJavaVersion" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3pzB6wMWswI" role="3clF47">
        <node concept="3cpWs6" id="3pzB6wMWswJ" role="3cqZAp">
          <node concept="2OqwBi" id="3pzB6wMWswW" role="3cqZAk">
            <node concept="37vLTw" id="3pzB6wMWswV" role="2Oq$k0">
              <ref role="3cqZAo" node="3pzB6wMWswj" resolve="myScript" />
            </node>
            <node concept="liA8E" id="3pzB6wMWswX" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
              <node concept="37vLTw" id="3pzB6wMWswL" role="37wK5m">
                <ref role="3cqZAo" node="3pzB6wMWswf" resolve="TARGET_JAVA_VERSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3pzB6wMWswM" role="1B3o_S" />
      <node concept="3uibUv" id="3pzB6wMWswN" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="5nerzVuuwuD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSkipCompilation" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5nerzVuuwuG" role="3clF47">
        <node concept="3clFbF" id="5nerzVuuwKG" role="3cqZAp">
          <node concept="2OqwBi" id="5nerzVuuwN7" role="3clFbG">
            <node concept="37vLTw" id="5nerzVuuwKF" role="2Oq$k0">
              <ref role="3cqZAo" node="3pzB6wMWswj" resolve="myScript" />
            </node>
            <node concept="liA8E" id="5nerzVuuwSX" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="5nerzVuuwUY" role="37wK5m">
                <ref role="3cqZAo" node="5nerzVuutVb" resolve="SKIP_COMPILATION" />
              </node>
              <node concept="2YIFZM" id="5nerzVuux2_" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="5nerzVuux8x" role="37wK5m">
                  <ref role="3cqZAo" node="5nerzVuuwBL" resolve="skipCompilation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5nerzVuuwlC" role="1B3o_S" />
      <node concept="3cqZAl" id="5nerzVuuwu$" role="3clF45" />
      <node concept="37vLTG" id="5nerzVuuwBL" role="3clF46">
        <property role="TrG5h" value="skipCompilation" />
        <node concept="10P_77" id="5nerzVuuwBK" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="5nerzVuuuag" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSkipCompilation" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5nerzVuuuaj" role="3clF47">
        <node concept="3cpWs6" id="5nerzVuuuhI" role="3cqZAp">
          <node concept="2YIFZM" id="5nerzVuuxU$" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String):java.lang.Boolean" resolve="valueOf" />
            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
            <node concept="2OqwBi" id="5nerzVuuurb" role="37wK5m">
              <node concept="37vLTw" id="5nerzVuuuid" role="2Oq$k0">
                <ref role="3cqZAo" node="3pzB6wMWswj" resolve="myScript" />
              </node>
              <node concept="liA8E" id="5nerzVuuuAd" role="2OqNvi">
                <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="5nerzVuuy5k" role="37wK5m">
                  <ref role="3cqZAo" node="5nerzVuutVb" resolve="SKIP_COMPILATION" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5nerzVuuu34" role="1B3o_S" />
      <node concept="10P_77" id="5nerzVuuuab" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3pzB6wMWmOy" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1Vi5mb_oi7$">
    <property role="TrG5h" value="MpsRunnerProperties" />
    <node concept="Wx3nA" id="5iKxrmkqeo7" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="START_SOLUTION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5iKxrmkqeo8" role="1B3o_S" />
      <node concept="17QB3L" id="5iKxrmkqeo9" role="1tU5fm" />
      <node concept="Xl_RD" id="5iKxrmkqeoa" role="33vP2m">
        <property role="Xl_RC" value="solution" />
      </node>
    </node>
    <node concept="Wx3nA" id="3H7CugYjcxj" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="START_CLASS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1Vi5mb_qkFX" role="1B3o_S" />
      <node concept="17QB3L" id="3H7CugYjcwS" role="1tU5fm" />
      <node concept="Xl_RD" id="3H7CugYjc_h" role="33vP2m">
        <property role="Xl_RC" value="startClass" />
      </node>
    </node>
    <node concept="Wx3nA" id="1Vi5mb_oaz_" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="START_METHOD" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1Vi5mb_qkIE" role="1B3o_S" />
      <node concept="17QB3L" id="1Vi5mb_oazB" role="1tU5fm" />
      <node concept="Xl_RD" id="1Vi5mb_oazC" role="33vP2m">
        <property role="Xl_RC" value="startMethod" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Vi5mb_olTz" role="jymVt" />
    <node concept="312cEg" id="1Vi5mb_omii" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myScript" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="1Vi5mb_omij" role="1tU5fm">
        <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
      </node>
      <node concept="3Tm6S6" id="1Vi5mb_omik" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1Vi5mb_omhx" role="jymVt" />
    <node concept="3clFbW" id="1Vi5mb_om5N" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="1Vi5mb_om5O" role="3clF45" />
      <node concept="37vLTG" id="1Vi5mb_om5P" role="3clF46">
        <property role="TrG5h" value="script" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1Vi5mb_om5Q" role="1tU5fm">
          <ref role="3uigEE" node="KL8Aql8enO" resolve="Script" />
        </node>
      </node>
      <node concept="3clFbS" id="1Vi5mb_om5R" role="3clF47">
        <node concept="3clFbF" id="1Vi5mb_om5S" role="3cqZAp">
          <node concept="37vLTI" id="1Vi5mb_om5T" role="3clFbG">
            <node concept="37vLTw" id="1Vi5mb_om5U" role="37vLTJ">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="37vLTw" id="1Vi5mb_om5V" role="37vLTx">
              <ref role="3cqZAo" node="1Vi5mb_om5P" resolve="script" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vi5mb_om5W" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1Vi5mb_om56" role="jymVt" />
    <node concept="3clFb_" id="5iKxrmkqgTm" role="jymVt">
      <property role="TrG5h" value="setSolution" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5iKxrmkqgTn" role="3clF46">
        <property role="TrG5h" value="startClass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5iKxrmkqgTo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5iKxrmkqgTp" role="3clF47">
        <node concept="3clFbF" id="5iKxrmkqgTq" role="3cqZAp">
          <node concept="2OqwBi" id="5iKxrmkqgTr" role="3clFbG">
            <node concept="37vLTw" id="5iKxrmkqgTs" role="2Oq$k0">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="liA8E" id="5iKxrmkqgTt" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="5iKxrmkqhWh" role="37wK5m">
                <ref role="3cqZAo" node="5iKxrmkqeo7" resolve="START_SOLUTION" />
              </node>
              <node concept="37vLTw" id="5iKxrmkqgTv" role="37wK5m">
                <ref role="3cqZAo" node="5iKxrmkqgTn" resolve="startClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5iKxrmkqgTw" role="3cqZAp">
          <node concept="Xjq3P" id="5iKxrmkqgTx" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5iKxrmkqgTy" role="1B3o_S" />
      <node concept="3uibUv" id="5iKxrmkqgTz" role="3clF45">
        <ref role="3uigEE" node="1Vi5mb_oi7$" resolve="MpsRunnerProperties" />
      </node>
    </node>
    <node concept="3clFb_" id="5iKxrmkqgTC" role="jymVt">
      <property role="TrG5h" value="getSolution" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5iKxrmkqgTD" role="3clF47">
        <node concept="3cpWs6" id="5iKxrmkqgTE" role="3cqZAp">
          <node concept="2OqwBi" id="5iKxrmkqgTF" role="3cqZAk">
            <node concept="37vLTw" id="5iKxrmkqgTG" role="2Oq$k0">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="liA8E" id="5iKxrmkqgTH" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
              <node concept="37vLTw" id="5iKxrmkqhXQ" role="37wK5m">
                <ref role="3cqZAo" node="5iKxrmkqeo7" resolve="START_SOLUTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5iKxrmkqgTJ" role="1B3o_S" />
      <node concept="17QB3L" id="5iKxrmkqgTK" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1Vi5mb_omw2" role="jymVt">
      <property role="TrG5h" value="setStartClass" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1Vi5mb_omw3" role="3clF46">
        <property role="TrG5h" value="startClass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1Vi5mb_omw4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1Vi5mb_omw5" role="3clF47">
        <node concept="3clFbF" id="1Vi5mb_omw6" role="3cqZAp">
          <node concept="2OqwBi" id="1Vi5mb_omw7" role="3clFbG">
            <node concept="37vLTw" id="1Vi5mb_omw8" role="2Oq$k0">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="liA8E" id="1Vi5mb_omw9" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="1Vi5mb_omPT" role="37wK5m">
                <ref role="3cqZAo" node="3H7CugYjcxj" resolve="START_CLASS" />
              </node>
              <node concept="37vLTw" id="1Vi5mb_omwa" role="37wK5m">
                <ref role="3cqZAo" node="1Vi5mb_omw3" resolve="startClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Vi5mb_omwb" role="3cqZAp">
          <node concept="Xjq3P" id="1Vi5mb_omwc" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vi5mb_omwd" role="1B3o_S" />
      <node concept="3uibUv" id="1Vi5mb_omMC" role="3clF45">
        <ref role="3uigEE" node="1Vi5mb_oi7$" resolve="MpsRunnerProperties" />
      </node>
    </node>
    <node concept="3clFb_" id="1Vi5mb_omwh" role="jymVt">
      <property role="TrG5h" value="getStartClass" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1Vi5mb_omwi" role="3clF47">
        <node concept="3cpWs6" id="1Vi5mb_omwj" role="3cqZAp">
          <node concept="2OqwBi" id="1Vi5mb_omwk" role="3cqZAk">
            <node concept="37vLTw" id="1Vi5mb_omwl" role="2Oq$k0">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="liA8E" id="1Vi5mb_omwm" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
              <node concept="37vLTw" id="1Vi5mb_onue" role="37wK5m">
                <ref role="3cqZAo" node="3H7CugYjcxj" resolve="START_CLASS" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vi5mb_omwn" role="1B3o_S" />
      <node concept="17QB3L" id="1Vi5mb_onj5" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1Vi5mb_onx_" role="jymVt">
      <property role="TrG5h" value="setStartMethod" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1Vi5mb_onxA" role="3clF46">
        <property role="TrG5h" value="startMethod" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1Vi5mb_onxB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1Vi5mb_onxC" role="3clF47">
        <node concept="3clFbF" id="1Vi5mb_onxD" role="3cqZAp">
          <node concept="2OqwBi" id="1Vi5mb_onxE" role="3clFbG">
            <node concept="37vLTw" id="1Vi5mb_onxF" role="2Oq$k0">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="liA8E" id="1Vi5mb_onxG" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="1Vi5mb_onXM" role="37wK5m">
                <ref role="3cqZAo" node="1Vi5mb_oaz_" resolve="START_METHOD" />
              </node>
              <node concept="37vLTw" id="1Vi5mb_onxH" role="37wK5m">
                <ref role="3cqZAo" node="1Vi5mb_onxA" resolve="startMethod" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Vi5mb_onxI" role="3cqZAp">
          <node concept="Xjq3P" id="1Vi5mb_onxJ" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vi5mb_onxK" role="1B3o_S" />
      <node concept="3uibUv" id="1Vi5mb_onxL" role="3clF45">
        <ref role="3uigEE" node="1Vi5mb_oi7$" resolve="MpsRunnerProperties" />
      </node>
    </node>
    <node concept="3clFb_" id="1Vi5mb_onxQ" role="jymVt">
      <property role="TrG5h" value="getStartMethod" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1Vi5mb_onxR" role="3clF47">
        <node concept="3cpWs6" id="1Vi5mb_onxS" role="3cqZAp">
          <node concept="2OqwBi" id="1Vi5mb_onxT" role="3cqZAk">
            <node concept="37vLTw" id="1Vi5mb_onxU" role="2Oq$k0">
              <ref role="3cqZAo" node="1Vi5mb_omii" resolve="myScript" />
            </node>
            <node concept="liA8E" id="1Vi5mb_onxV" role="2OqNvi">
              <ref role="37wK5l" node="KL8Aql8eBs" resolve="getProperty" />
              <node concept="37vLTw" id="1Vi5mb_oof_" role="37wK5m">
                <ref role="3cqZAo" node="1Vi5mb_oaz_" resolve="START_METHOD" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vi5mb_onxW" role="1B3o_S" />
      <node concept="17QB3L" id="1Vi5mb_onxX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1Vi5mb_omuh" role="jymVt" />
    <node concept="3Tm1VV" id="1Vi5mb_oi7_" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6aGZllYQgzH">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="RepositoryDescriptor" />
    <node concept="312cEg" id="6aGZllYQt7F" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="files" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6aGZllYQxZS" role="1B3o_S" />
      <node concept="3uibUv" id="6aGZllYQt5Y" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="6aGZllYQt7b" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2ShNRf" id="6aGZllYQt93" role="33vP2m">
        <node concept="1pGfFk" id="6aGZllYQuo8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="6aGZllYQuDL" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6aGZllYQuUJ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="folders" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6aGZllYQy9X" role="1B3o_S" />
      <node concept="3uibUv" id="6aGZllYQuUL" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="6aGZllYQuUM" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2ShNRf" id="6aGZllYQuUN" role="33vP2m">
        <node concept="1pGfFk" id="6aGZllYQuUO" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="6aGZllYQuUP" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1O4zZOk7aFm" role="1B3o_S" />
    <node concept="3UR2Jj" id="3QFNug6zY$7" role="lGtFl">
      <node concept="TZ5HA" id="3QFNug6zY$8" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6zY$9" role="1dT_Ay">
          <property role="1dT_AB" value="Intended as a generic replacement for 'library jar' and 'named library' of MpsLoadTask/Script." />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2ab" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2ac" role="1dT_Ay">
          <property role="1dT_AB" value="Gives a mechanism to include whole folder with modules or just a single module (with a reference to module descriptor file)." />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2bd" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2be" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2ah" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2ai" role="1dT_Ay">
          <property role="1dT_AB" value="XXX It's unspecified whether location strings have to be complete file paths or macro could be used in there, would be great to have this covered (perhaps, leave to owing task?)" />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2aX" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2aY" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2ap" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2aq" role="1dT_Ay">
          <property role="1dT_AB" value="XXX Though one could reference source module descriptors (i.e. .mpl, .msd, .devkit) and modules would get loaded into a repository, this scenario is dubious - generally one should" />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2aJ" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2aK" role="1dT_Ay">
          <property role="1dT_AB" value="stick to MPS Project to keep source modules. At the moment, referenced modules are injected into EnvironmentConfig.addLib() and consumed by ModulesMiner. It's recommended to treat this" />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2bv" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2bw" role="1dT_Ay">
          <property role="1dT_AB" value="class as 'deployed modules repository' and avoid use of source module descriptors." />
        </node>
      </node>
      <node concept="TZ5HA" id="3QFNug6$2az" role="TZ5H$">
        <node concept="1dT_AC" id="3QFNug6$2a$" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
    </node>
  </node>
</model>

