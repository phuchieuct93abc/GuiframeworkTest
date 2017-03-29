package ch.axonaviy.guidemo.test.helper;

import java.util.Calendar;
import java.util.Date;

public class PersonHelper {
	public static Integer calculateAge(Date birthDate){
		Calendar birthCalendar = Calendar.getInstance();
		birthCalendar.setTime(birthDate);
		Integer currentYear = Calendar.getInstance().get(Calendar.YEAR);
		return currentYear - birthCalendar.get(Calendar.YEAR); 
		
	}
}
