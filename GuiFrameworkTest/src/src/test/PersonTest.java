package src.test;

import gui.framework.Dossier;

import java.util.Calendar;

import org.junit.Assert;
import org.junit.Test;

import ch.axonaviy.guidemo.test.helper.DossierBuider;
import ch.axonaviy.guidemo.test.helper.IntegrationHelper;
import ch.axonaviy.guidemo.test.helper.PersonHelper;

public class PersonTest {
	private static final String BUSINESS_RULES_PERSON = "BusinessRules.person";

	@Test
	public void testMaximumSalary() throws Exception {
		Dossier data = new DossierBuider().setWorkingDay(55).buid();
		Dossier result = (Dossier) IntegrationHelper.executeRule(data, BUSINESS_RULES_PERSON);
		Double salary = Double.valueOf(result.getAccountHolder().getPerson().getSalary());
		Assert.assertEquals(salary, Double.valueOf(400));
	}
	@Test
	public void testMediumSalary() throws Exception {
		Dossier data = new DossierBuider().setWorkingDay(25).buid();
		Dossier result = (Dossier) IntegrationHelper.executeRule(data, BUSINESS_RULES_PERSON);
		Double salary = Double.valueOf(result.getAccountHolder().getPerson().getSalary());
		Assert.assertEquals(salary, Double.valueOf(100));
	}
	@Test
	public void testMinimunSalary() throws Exception {
		Dossier data = new DossierBuider().setWorkingDay(15).buid();
		Dossier result = (Dossier) IntegrationHelper.executeRule(data, BUSINESS_RULES_PERSON);
		Double salary = Double.valueOf(result.getAccountHolder().getPerson().getSalary());
		Assert.assertEquals(salary, Double.valueOf(100));
	}

	@Test
	public void testBirthDay() throws Exception {
		Calendar birthDate = Calendar.getInstance();
		birthDate.set(Calendar.YEAR, 1999);
		Integer age = PersonHelper.calculateAge(birthDate.getTime());
		Assert.assertEquals(Integer.valueOf(age), Integer.valueOf(18));
	}

}
