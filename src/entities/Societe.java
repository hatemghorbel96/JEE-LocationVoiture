package entities;

import java.util.Date;

public class Societe {
private int numSociete;
private String nomSociete;
private boolean personnePhysique;
private String adresseSociete;
private int telSociete;
private String mailSociete;
private Date datecreationSociete;
private String prenomnomRepresentantSociete;
private int telRepresentantSociete;



public Societe() {
	super();
	// TODO Auto-generated constructor stub
}



public Societe(int numSociete, String nomSociete, boolean personnePhysique, String adresseSociete, int telSociete,
		String mailSociete, Date datecreationSociete, String prenomnomRepresentantSociete, int telRepresentantSociete) {
	super();
	this.numSociete = numSociete;
	this.nomSociete = nomSociete;
	this.personnePhysique = personnePhysique;
	this.adresseSociete = adresseSociete;
	this.telSociete = telSociete;
	this.mailSociete = mailSociete;
	this.datecreationSociete = datecreationSociete;
	this.prenomnomRepresentantSociete = prenomnomRepresentantSociete;
	this.telRepresentantSociete = telRepresentantSociete;
}



public int getNumSociete() {
	return numSociete;
}



public void setNumSociete(int numSociete) {
	this.numSociete = numSociete;
}




public String getNomSociete() {
	return nomSociete;
}



public void setNomSociete(String nomSociete) {
	this.nomSociete = nomSociete;
}

public String getAdresseSociete() {
	return adresseSociete;
}


public void setAdresseSociete(String adresseSociete) {
	this.adresseSociete = adresseSociete;
}


public int getTelSociete() {
	return telSociete;
}



public void setTelSociete(int telSociete) {
	this.telSociete = telSociete;
}



public String getMailSociete() {
	return mailSociete;
}




public void setMailSociete(String mailSociete) {
	this.mailSociete = mailSociete;
}




public Date getDatecreationSociete() {
	return datecreationSociete;
}



public void setDatecreationSociete(Date datecreationSociete) {
	this.datecreationSociete = datecreationSociete;
}





public String getPrenomnomRepresentantSociete() {
	return prenomnomRepresentantSociete;
}



public void setPrenomnomRepresentantSociete(String prenomnomRepresentantSociete) {
	this.prenomnomRepresentantSociete = prenomnomRepresentantSociete;
}



public int getTelRepresentantSociete() {
	return telRepresentantSociete;
}




public void setTelRepresentantSociete(int telRepresentantSociete) {
	this.telRepresentantSociete = telRepresentantSociete;
}



public boolean isPersonne() {
	return personnePhysique;
}



public void setPersonne(boolean personnePhysique) {
	this.personnePhysique = personnePhysique;
}


}

