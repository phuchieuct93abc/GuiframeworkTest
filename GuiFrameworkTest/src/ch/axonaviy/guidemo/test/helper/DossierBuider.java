package ch.axonaviy.guidemo.test.helper;

import gui.framework.AccountHolder;
import gui.framework.Address;
import gui.framework.Dossier;
import gui.framework.Person;

import java.util.Date;

public class DossierBuider {
	private Dossier dossier = new Dossier();
	private AccountHolder accountHolder = new AccountHolder();
	private Person person = new Person();
	private Address wordAddress = new Address();
	private Address homeAddress = new Address();

	public DossierBuider setBirthDay(Date date) {
		person.setBirthDate(date);
		return this;

	}

	public DossierBuider setWorkingDay(Integer workingDay) {
		person.setWorkingDay(workingDay);
		return this;
	}

	public Dossier buid() {
		person.setWorkAddress(wordAddress);
		person.setHomeAddress(homeAddress);
		accountHolder.setPerson(person);
		dossier.setAccountHolder(accountHolder);
		return dossier;
	}

}
