package entities;

import java.util.Date;

public class Voiture {

	private int idvoiture;
	private Date datemisecirculation;
	private int numcartegrise;
	private int Kilometrage;
	private int matricule;
	private int codeModele;
	private int codeMarque;
	private int codeMaison;
	
	
	
	public Voiture() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Voiture(int idvoiture, Date datemisecirculation, int numcartegrise, int kilometrage, int matricule,
			int codeModele, int codeMarque, int codeMaison) {
		super();
		this.idvoiture = idvoiture;
		this.datemisecirculation = datemisecirculation;
		this.numcartegrise = numcartegrise;
		Kilometrage = kilometrage;
		this.matricule = matricule;
		this.codeModele = codeModele;
		this.codeMarque = codeMarque;
		this.codeMaison = codeMaison;
	}
	
	public int getIdvoiture() {
		return idvoiture;
	}
	public void setIdvoiture(int idvoiture) {
		this.idvoiture = idvoiture;
	}
	public Date getDatemisecirculation() {
		return datemisecirculation;
	}
	public void setDatemisecirculation(Date datemisecirculation) {
		this.datemisecirculation = datemisecirculation;
	}
	public int getNumcartegrise() {
		return numcartegrise;
	}
	public void setNumcartegrise(int numcartegrise) {
		this.numcartegrise = numcartegrise;
	}
	public int getKilometrage() {
		return Kilometrage;
	}
	public void setKilometrage(int kilometrage) {
		Kilometrage = kilometrage;
	}
	public int getMatricule() {
		return matricule;
	}
	public void setMatricule(int matricule) {
		this.matricule = matricule;
	}
	public int getCodeModele() {
		return codeModele;
	}
	public void setCodeModele(int codeModele) {
		this.codeModele = codeModele;
	}
	public int getCodeMarque() {
		return codeMarque;
	}
	public void setCodeMarque(int codeMarque) {
		this.codeMarque = codeMarque;
	}
	public int getCodeMaison() {
		return codeMaison;
	}
	public void setCodeMaison(int codeMaison) {
		this.codeMaison = codeMaison;
	}
	
	
	
}


