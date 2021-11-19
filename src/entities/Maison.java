package entities;

public class Maison {
	private int codeMaison;
	private String nomMaison;
	
	
	
	
	
	
	public Maison() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	


	public Maison(int codeMaison, String nomMaison) {
		super();
		this.codeMaison = codeMaison;
		this.nomMaison = nomMaison;
	}





	public int getCodeMaison() {
		return codeMaison;
	}
	public void setCodeMaison(int codeMaison) {
		this.codeMaison = codeMaison;
	}
	public String getNomMaison() {
		return nomMaison;
	}
	public void setNomMaison(String nomMaison) {
		this.nomMaison = nomMaison;
	}

	
	
}
