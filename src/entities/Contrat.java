package entities;

import java.util.Date;

public class Contrat {
private int numContrat;
private Date dateContrat;
private int numSociete;
private int codeCond1;
private int codeCond2;
private Date datedebutlocation;
private Date datefinlocation;
private int PrixUnitaireJour;
private int Prixtotal;
private int MontantAvance;
private Date datecreationContrat;



public Contrat() {
	super();
	// TODO Auto-generated constructor stub
}

public Contrat(int numContrat, Date dateContrat, int numSociete, int codeCond1, int codeCond2, Date datedebutlocation,
		Date datefinlocation, int prixUnitaireJour, int prixtotal, int montantAvance, Date datecreationContrat) {
	super();
	this.numContrat = numContrat;
	this.dateContrat = dateContrat;
	this.numSociete = numSociete;
	this.codeCond1 = codeCond1;
	this.codeCond2 = codeCond2;
	this.datedebutlocation = datedebutlocation;
	this.datefinlocation = datefinlocation;
	PrixUnitaireJour = prixUnitaireJour;
	Prixtotal = prixtotal;
	MontantAvance = montantAvance;
	this.datecreationContrat = datecreationContrat;
}
public int getNumContrat() {
	return numContrat;
}
public void setNumContrat(int numContrat) {
	this.numContrat = numContrat;
}
public Date getDateContrat() {
	return dateContrat;
}
public void setDateContrat(Date dateContrat) {
	this.dateContrat = dateContrat;
}
public int getNumSociete() {
	return numSociete;
}
public void setNumSociete(int numSociete) {
	this.numSociete = numSociete;
}
public int getCodeCond1() {
	return codeCond1;
}
public void setCodeCond1(int codeCond1) {
	this.codeCond1 = codeCond1;
}
public int getCodeCond2() {
	return codeCond2;
}
public void setCodeCond2(int codeCond2) {
	this.codeCond2 = codeCond2;
}
public Date getDatedebutlocation() {
	return datedebutlocation;
}
public void setDatedebutlocation(Date datedebutlocation) {
	this.datedebutlocation = datedebutlocation;
}
public Date getDatefinlocation() {
	return datefinlocation;
}
public void setDatefinlocation(Date datefinlocation) {
	this.datefinlocation = datefinlocation;
}
public int getPrixUnitaireJour() {
	return PrixUnitaireJour;
}
public void setPrixUnitaireJour(int prixUnitaireJour) {
	PrixUnitaireJour = prixUnitaireJour;
}
public int getPrixtotal() {
	return Prixtotal;
}
public void setPrixtotal(int prixtotal) {
	Prixtotal = prixtotal;
}
public int getMontantAvance() {
	return MontantAvance;
}
public void setMontantAvance(int montantAvance) {
	MontantAvance = montantAvance;
}
public Date getDatecreationContrat() {
	return datecreationContrat;
}
public void setDatecreationContrat(Date datecreationContrat) {
	this.datecreationContrat = datecreationContrat;
}




}


