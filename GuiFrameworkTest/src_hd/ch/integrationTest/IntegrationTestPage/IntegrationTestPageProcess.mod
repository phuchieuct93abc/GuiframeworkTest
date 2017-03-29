[Ivy]
[>Created: Tue Mar 28 17:38:06 ICT 2017]
15B179A785923DD2 3.18 #module
>Proto >Proto Collection #zClass
Is0 IntegrationTestPageProcess Big #zClass
Is0 RD #cInfo
Is0 #process
Is0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Is0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Is0 @TextInP .resExport .resExport #zField
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @AnnotationInP-0n ai ai #zField
Is0 @MessageFlowInP-0n messageIn messageIn #zField
Is0 @MessageFlowOutP-0n messageOut messageOut #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @RichDialogInitStart f0 '' #zField
Is0 @RichDialogEnd f4 '' #zField
Is0 @RichDialogProcessEnd f1 '' #zField
Is0 @RichDialogProcessStart f3 '' #zField
Is0 @PushWFArc f2 '' #zField
Is0 @PushWFArc f5 '' #zField
Is0 @RichDialogMethodStart f6 '' #zField
Is0 @RichDialogProcessEnd f7 '' #zField
Is0 @GridStep f9 '' #zField
Is0 @PushWFArc f10 '' #zField
Is0 @PushWFArc f8 '' #zField
>Proto Is0 Is0 IntegrationTestPageProcess #zField
Is0 f0 guid 15900CF591EA9D47 #txt
Is0 f0 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f0 method start(ch.axonivy.integrationtest.core.bean.IntegrationRequestParam) #txt
Is0 f0 disableUIEvents true #txt
Is0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.axonivy.integrationtest.core.bean.IntegrationRequestParam requestParam> param = methodEvent.getInputArguments();
' #txt
Is0 f0 inParameterMapAction 'out.requestParam=param.requestParam;
' #txt
Is0 f0 outParameterDecl '<> result;
' #txt
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f0 107 45 26 26 -16 15 #rect
Is0 f0 @|RichDialogInitStartIcon #fIcon
Is0 f4 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f4 guid 15244464888FD84B #txt
Is0 f4 235 141 26 26 0 12 #rect
Is0 f4 @|RichDialogEndIcon #fIcon
Is0 f1 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f1 235 45 26 26 0 12 #rect
Is0 f1 @|RichDialogProcessEndIcon #fIcon
Is0 f3 guid 015900CF591EB26F #txt
Is0 f3 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f3 actionDecl 'ch.integrationTest.IntegrationTestPage.IntegrationTestPageData out;
' #txt
Is0 f3 actionTable 'out=in;
' #txt
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Is0 f3 107 141 26 26 -15 12 #rect
Is0 f3 @|RichDialogProcessStartIcon #fIcon
Is0 f2 expr out #txt
Is0 f2 133 58 235 58 #arcP
Is0 f5 expr out #txt
Is0 f5 133 154 235 154 #arcP
Is0 f6 guid 159A63C1E8734210 #txt
Is0 f6 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f6 method executeRule(ch.axonivy.integrationtest.core.util.MethodDelegationParam) #txt
Is0 f6 disableUIEvents false #txt
Is0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.axonivy.integrationtest.core.util.MethodDelegationParam param> param = methodEvent.getInputArguments();
' #txt
Is0 f6 inParameterMapAction 'out.methodDelegationParam=param.param;
' #txt
Is0 f6 outParameterDecl '<ch.axonivy.integrationtest.core.util.MethodDelegationResult result> result;
' #txt
Is0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>executeRule(MethodDelegationParam)</name>
        <nameStyle>34,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Is0 f6 123 251 26 26 -106 15 #rect
Is0 f6 @|RichDialogMethodStartIcon #fIcon
Is0 f7 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f7 379 251 26 26 0 12 #rect
Is0 f7 @|RichDialogProcessEndIcon #fIcon
Is0 f9 actionDecl 'ch.integrationTest.IntegrationTestPage.IntegrationTestPageData out;
' #txt
Is0 f9 actionTable 'out=in;
' #txt
Is0 f9 actionCode 'ivy.log.debug("Run delegwata");
in.methodDelegationResult.resultObject = in.methodDelegationParam.runningRuleFunc.apply(out.methodDelegationParam.dataModel);' #txt
Is0 f9 type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
Is0 f9 208 242 112 44 0 -8 #rect
Is0 f9 @|StepIcon #fIcon
Is0 f10 expr out #txt
Is0 f10 149 264 208 264 #arcP
Is0 f8 expr out #txt
Is0 f8 320 264 379 264 #arcP
>Proto Is0 .type ch.integrationTest.IntegrationTestPage.IntegrationTestPageData #txt
>Proto Is0 .processKind HTML_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
>Proto Is0 '' #fIcon
Is0 f0 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f5 tail #connect
Is0 f5 head f4 mainIn #connect
Is0 f6 mainOut f10 tail #connect
Is0 f10 head f9 mainIn #connect
Is0 f9 mainOut f8 tail #connect
Is0 f8 head f7 mainIn #connect
