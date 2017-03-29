[Ivy]
[>Created: Wed Mar 29 13:41:16 ICT 2017]
15B12B542084ACD7 3.18 #module
>Proto >Proto Collection #zClass
st0 startIntegrationTest Big #zClass
st0 B #cInfo
st0 #process
st0 @TextInP .resExport .resExport #zField
st0 @TextInP .type .type #zField
st0 @TextInP .processKind .processKind #zField
st0 @AnnotationInP-0n ai ai #zField
st0 @MessageFlowInP-0n messageIn messageIn #zField
st0 @MessageFlowOutP-0n messageOut messageOut #zField
st0 @TextInP .xml .xml #zField
st0 @TextInP .responsibility .responsibility #zField
st0 @GridStep f6 '' #zField
st0 @PushWFArc f10 '' #zField
st0 @RichDialog f9 '' #zField
st0 @PushWFArc f1 '' #zField
st0 @StartRequest f0 '' #zField
st0 @PushWFArc f11 '' #zField
st0 @EndTask f5 '' #zField
>Proto st0 st0 startIntegrationTest #zField
st0 f6 actionDecl 'gui.test.TestRunnerData out;
' #txt
st0 f6 actionTable 'out=in;
' #txt
st0 f6 actionCode 'import ch.axonivy.integrationtest.core.enums.ResourceLoaderOption;
import ch.axonivy.fintech.standard.core.util.ResourceLoader;
import java.nio.file.Path;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import ch.axonivy.integrationtest.core.bean.IntegrationRequestParam;
import ch.axonivy.integrationtest.core.config.IntegrationConfig;


in.requestParam = new IntegrationRequestParam();
in.requestParam.config = new IntegrationConfig("default");
in.requestParam.config.readConfig();
String url = ivy.html.startref(in.requestParam.config.getProject().getGeneralConfig().integrationStartLink);
in.requestParam.config.getProject().getGeneralConfig().setIntegrationStartLink(url);
if(ivy.request.getParameter(IntegrationRequestParam.PARAM_HISTORY_INDEX) != null){
	List<String> index = ivy.request.getParameter(IntegrationRequestParam.PARAM_HISTORY_INDEX) as List<String>;
	in.requestParam.setHistoryIndex(index.get(0));
}

if(ivy.request.getParameter(IntegrationRequestParam.PARAM_PROFILE_NAME) != null){
	List<String> profile = ivy.request.getParameter(IntegrationRequestParam.PARAM_PROFILE_NAME) as List<String>;
	in.requestParam.setProfile(profile.get(0));
}
ivy.log.info(ReflectionToStringBuilder.reflectionToString(in.requestParam.config.getProject()));


Path p = ResourceLoader.findResourceFolder(ResourceLoaderOption.RESOURCE_FOLDER.getName()).get() as Path;
in.requestParam.projectFolder = p.toAbsolutePath().toString();

ivy.log.debug(in.requestParam.config.getAllProfilesName().get(0));

' #txt
st0 f6 type gui.test.TestRunnerData #txt
st0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read param</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
st0 f6 280 150 112 44 -32 -8 #rect
st0 f6 @|StepIcon #fIcon
st0 f10 expr out #txt
st0 f10 336 194 336 238 #arcP
st0 f9 targetWindow NEW:card: #txt
st0 f9 targetDisplay TOP #txt
st0 f9 richDialogId ch.integrationTest.IntegrationTestPage #txt
st0 f9 startMethod start(ch.axonivy.integrationtest.core.bean.IntegrationRequestParam) #txt
st0 f9 type gui.test.TestRunnerData #txt
st0 f9 requestActionDecl '<ch.axonivy.integrationtest.core.bean.IntegrationRequestParam requestParam> param;' #txt
st0 f9 requestMappingAction 'param.requestParam=in.requestParam;
' #txt
st0 f9 responseActionDecl 'gui.test.TestRunnerData out;
' #txt
st0 f9 responseMappingAction 'out=in;
' #txt
st0 f9 windowConfiguration '* ' #txt
st0 f9 isAsynch false #txt
st0 f9 isInnerRd false #txt
st0 f9 userContext '* ' #txt
st0 f9 280 238 112 44 0 -8 #rect
st0 f9 @|RichDialogIcon #fIcon
st0 f1 expr out #txt
st0 f1 336 111 336 150 #arcP
st0 f0 outLink start.ivp #txt
st0 f0 type gui.test.TestRunnerData #txt
st0 f0 inParamDecl '<> param;' #txt
st0 f0 actionDecl 'gui.test.TestRunnerData out;
' #txt
st0 f0 guid 15B18C9DF3E47170 #txt
st0 f0 requestEnabled true #txt
st0 f0 triggerEnabled false #txt
st0 f0 callSignature start() #txt
st0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
st0 f0 @C|.responsibility Everybody #txt
st0 f0 321 81 30 30 -21 17 #rect
st0 f0 @|StartRequestIcon #fIcon
st0 f11 expr out #txt
st0 f11 336 282 336 341 #arcP
st0 f5 type gui.test.TestRunnerData #txt
st0 f5 321 341 30 30 0 15 #rect
st0 f5 @|EndIcon #fIcon
>Proto st0 .type gui.test.TestRunnerData #txt
>Proto st0 .processKind NORMAL #txt
>Proto st0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto st0 0 0 32 24 18 0 #rect
>Proto st0 @|BIcon #fIcon
st0 f9 mainOut f11 tail #connect
st0 f11 head f5 mainIn #connect
st0 f6 mainOut f10 tail #connect
st0 f10 head f9 mainIn #connect
st0 f0 mainOut f1 tail #connect
st0 f1 head f6 mainIn #connect
