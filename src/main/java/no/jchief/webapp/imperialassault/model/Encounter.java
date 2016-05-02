package no.jchief.webapp.imperialassault.model;

public class Encounter {
	
	private Attack attack;
	private Defence defence;

	public Encounter() {
		super();
//		System.out.println("[Encounter.const] go");
		attack = new Attack();
		defence = new Defence();
	}

	public Attack getAttack() {
		return attack;
	}

	public void setAttack(Attack attack) {
		this.attack = attack;
	}
	
	public Defence getDefence() {
		return defence;
	}

	public void setDefence(Defence defence) {
		this.defence = defence;
	}

}
