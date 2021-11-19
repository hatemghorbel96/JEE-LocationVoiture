package entities;

public class Marque {
	private int codeMarque;
	private String nomMarque;
	
	
	
	public Marque() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Marque(int codeMarque, String nomMarque) {
		super();
		this.codeMarque = codeMarque;
		this.nomMarque = nomMarque;
	}
	public int getCodeMarque() {
		return codeMarque;
	}
	public void setCodeMarque(int codeMarque) {
		this.codeMarque = codeMarque;
	}
	public String getNomMarque() {
		return nomMarque;
	}
	public void setNomMarque(String nomMarque) {
		this.nomMarque = nomMarque;
	}
	
	
	
	
	
	
	
}
