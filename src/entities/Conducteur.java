package entities;

import java.util.Date;

public class Conducteur {
private int codeConducteur;
private String prenomnomconducteur;
private Date datenaissance;
private int numPermisConduite;
private Date datelivraisonPermisConduite;
private Date datefinvalidite;
private String adresse;
private int tel;
private int numCIN;
private Date dateCin;
private String MailConducteur;
private Date datecreationConducteur;



public Conducteur() {
	super();
	// TODO Auto-generated constructor stub
}
public Conducteur(int codeConducteur, String prenomnomconducteur, Date datenaissance, int numPermisConduite,
		Date datelivraisonPermisConduite, Date datefinvalidite, String adresse, int tel, int numCIN, Date dateCin,
		String mailConducteur, Date datecreationConducteur) {
	super();
	this.codeConducteur = codeConducteur;
	this.prenomnomconducteur = prenomnomconducteur;
	this.datenaissance = datenaissance;
	this.numPermisConduite = numPermisConduite;
	this.datelivraisonPermisConduite = datelivraisonPermisConduite;
	this.datefinvalidite = datefinvalidite;
	this.adresse = adresse;
	this.tel = tel;
	this.numCIN = numCIN;
	this.dateCin = dateCin;
	MailConducteur = mailConducteur;
	this.datecreationConducteur = datecreationConducteur;
}
public int getCodeConducteur() {
	return codeConducteur;
}
public void setCodeConducteur(int codeConducteur) {
	this.codeConducteur = codeConducteur;
}
public String getPrenomnomconducteur() {
	return prenomnomconducteur;
}
public void setPrenomnomconducteur(String prenomnomconducteur) {
	this.prenomnomconducteur = prenomnomconducteur;
}
public Date getDatenaissance() {
	return datenaissance;
}
public void setDatenaissance(Date datenaissance) {
	this.datenaissance = datenaissance;
}
public int getNumPermisConduite() {
	return numPermisConduite;
}
public void setNumPermisConduite(int numPermisConduite) {
	this.numPermisConduite = numPermisConduite;
}
public Date getDatelivraisonPermisConduite() {
	return datelivraisonPermisConduite;
}
public void setDatelivraisonPermisConduite(Date datelivraisonPermisConduite) {
	this.datelivraisonPermisConduite = datelivraisonPermisConduite;
}
public Date getDatefinvalidite() {
	return datefinvalidite;
}
public void setDatefinvalidite(Date datefinvalidité) {
	this.datefinvalidite = datefinvalidité;
}
public String getAdresse() {
	return adresse;
}
public void setAdresse(String adresse) {
	this.adresse = adresse;
}
public int getTel() {
	return tel;
}
public void setTel(int tel) {
	this.tel = tel;
}
public int getNumCIN() {
	return numCIN;
}
public void setNumCIN(int numCIN) {
	this.numCIN = numCIN;
}
public Date getDateCin() {
	return dateCin;
}
public void setDateCin(Date dateCin) {
	this.dateCin = dateCin;
}
public String getMailConducteur() {
	return MailConducteur;
}
public void setMailConducteur(String mailConducteur) {
	MailConducteur = mailConducteur;
}
public Date getDatecreationConducteur() {
	return datecreationConducteur;
}
public void setDatecreationConducteur(Date datecreationConducteur) {
	this.datecreationConducteur = datecreationConducteur;
}




}


