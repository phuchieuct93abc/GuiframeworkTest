package gui.framework.test;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class TestRunnerData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class TestRunnerData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -343381966968217442L;

  private org.junit.runner.Result testResult;

  /**
   * Gets the field testResult.
   * @return the value of the field testResult; may be null.
   */
  public org.junit.runner.Result getTestResult()
  {
    return testResult;
  }

  /**
   * Sets the field testResult.
   * @param _testResult the new value of the field testResult.
   */
  public void setTestResult(org.junit.runner.Result _testResult)
  {
    testResult = _testResult;
  }

  private java.lang.String classForTest;

  /**
   * Gets the field classForTest.
   * @return the value of the field classForTest; may be null.
   */
  public java.lang.String getClassForTest()
  {
    return classForTest;
  }

  /**
   * Sets the field classForTest.
   * @param _classForTest the new value of the field classForTest.
   */
  public void setClassForTest(java.lang.String _classForTest)
  {
    classForTest = _classForTest;
  }

  private ch.axonivy.integrationtest.core.config.IntegrationConfig config;

  /**
   * Gets the field config.
   * @return the value of the field config; may be null.
   */
  public ch.axonivy.integrationtest.core.config.IntegrationConfig getConfig()
  {
    return config;
  }

  /**
   * Sets the field config.
   * @param _config the new value of the field config.
   */
  public void setConfig(ch.axonivy.integrationtest.core.config.IntegrationConfig _config)
  {
    config = _config;
  }

  private ch.axonivy.integrationtest.core.bean.IntegrationRequestParam requestParam;

  /**
   * Gets the field requestParam.
   * @return the value of the field requestParam; may be null.
   */
  public ch.axonivy.integrationtest.core.bean.IntegrationRequestParam getRequestParam()
  {
    return requestParam;
  }

  /**
   * Sets the field requestParam.
   * @param _requestParam the new value of the field requestParam.
   */
  public void setRequestParam(ch.axonivy.integrationtest.core.bean.IntegrationRequestParam _requestParam)
  {
    requestParam = _requestParam;
  }

}
