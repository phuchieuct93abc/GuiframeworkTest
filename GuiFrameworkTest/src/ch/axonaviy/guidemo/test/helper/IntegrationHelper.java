package ch.axonaviy.guidemo.test.helper;

import java.util.List;
import java.util.function.Function;

import ch.axonivy.fintech.standard.guiframework.bean.BusinessRuleDto;
import ch.axonivy.fintech.standard.guiframework.converter.BusinessRuleDtoConverter;
import ch.axonivy.fintech.standard.guiframework.exception.GuiFrameworkException;
import ch.axonivy.fintech.standard.guiframework.workflow.BaseGuiWorkflow;
import ch.axonivy.integrationtest.core.util.MethodDelegation;
import ch.axonivy.integrationtest.core.util.MethodDelegationParam;
import ch.axonivy.integrationtest.core.util.MethodDelegationParam.MethodDelegationParamBuilder;
import ch.axonivy.integrationtest.core.util.MethodDelegationResult;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

public class IntegrationHelper {
	public static Object executeRule(Object dossier, String rulePackage) throws Exception {
		Function<Object, Object> runningRule = new Function<Object, Object>() {
			@Override
			public Object apply(Object dossier) {
				BaseGuiWorkflow baseGuiWorkflow = BaseGuiWorkflow.getInstanceToExecuteBusinessRuleWithDataModel();
				List<BusinessRuleDto> executedBusinessRuleDtos;
				try {
					executedBusinessRuleDtos = BusinessRuleDtoConverter.getInstance().toDtosWithScanningListInside((CompositeObject) dossier);
					baseGuiWorkflow.proceedBusinessRuleWithDataModel((CompositeObject) dossier, executedBusinessRuleDtos, rulePackage, true);
				} catch (GuiFrameworkException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return dossier;
			}
		};
		delegateToRunRule(dossier, runningRule);
		return dossier;

	}

	private static MethodDelegationResult delegateToRunRule(Object dossier, Function<Object, Object> runningRuleFunc) throws GuiFrameworkException {
		MethodDelegationParam methodDelegationParam = MethodDelegationParamBuilder.createBuilder().setCanDelegate(true).setDataModel(dossier).setRunningRuleFunc(runningRuleFunc).setDelegateMethod(MethodDelegation.DEFAUT_NOTIFY_CHANGE_METHOD_SIGNATURE).build();
		return MethodDelegation.getInstance().execute(methodDelegationParam);
	}

	
}
