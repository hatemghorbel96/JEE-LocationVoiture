package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entities.Conducteur;
import entities.Contrat;

public class ContratDAO {

	

	public void ajouter (Contrat c) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into contrat Values (null,?,?,?,?,?,?,?,?,?,?) ");
			
			ps.setDate(1, new java.sql.Date(c.getDateContrat().getTime()));
			ps.setInt(2, c.getNumSociete());
			ps.setInt(3, c.getCodeCond1());
			ps.setInt(4, c.getCodeCond2());
			ps.setDate(5, new java.sql.Date(c.getDatedebutlocation().getTime()));
			ps.setDate(6, new java.sql.Date(c.getDatefinlocation().getTime()));
			ps.setInt(7, c.getPrixUnitaireJour());
			ps.setInt(8, c.getPrixtotal());
			ps.setInt(9, c.getMontantAvance());
			ps.setDate(10, new java.sql.Date(c.getDatecreationContrat().getTime()));
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Contrat> getAllContrats() {
		Connection connection = ConnectionBD.getConnection();

		List<Contrat> con = new ArrayList<Contrat>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from contrat");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Contrat c =new Contrat();
				 c.setNumContrat(rs.getInt("numContrat"));
				 c.setDateContrat(rs.getDate("dateContrat"));
				 c.setNumSociete(rs.getInt("numSociete"));
				 c.setCodeCond1(rs.getInt("codeCond1"));
				 c.setCodeCond2(rs.getInt("codeCond2"));
				 c.setDatedebutlocation(rs.getDate("datedebutlocation"));
				 c.setDatefinlocation(rs.getDate("datefinlocation"));
				 c.setPrixUnitaireJour(rs.getInt("PrixUnitaireJour"));
				 c.setPrixtotal(rs.getInt("Prixtotal"));
				 c.setMontantAvance(rs.getInt("MontantAvance"));
				 c.setDatecreationContrat(rs.getDate("datecreationContrat"));
				 con.add(c);
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
	
	public void supprimer (int code) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("delete from contrat where numContrat = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Contrat c) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update contrat set dateContrat = ?,numSociete = ?,codeCond1 = ?,codeCond2 = ?,datedebutlocation = ?,datefinlocation = ?,PrixUnitaireJour = ?,Prixtotal = ?,MontantAvance = ?,datecreationContrat = ? where numContrat = ? ");
			ps.setDate(1, new java.sql.Date(c.getDateContrat().getTime()));
			ps.setInt(2, c.getNumSociete());
			ps.setInt(3, c.getCodeCond1());
			ps.setInt(4, c.getCodeCond2());
			ps.setDate(5, new java.sql.Date(c.getDatedebutlocation().getTime()));
			ps.setDate(6, new java.sql.Date(c.getDatefinlocation().getTime()));
			ps.setInt(7, c.getPrixUnitaireJour());
			ps.setInt(8, c.getPrixtotal());
			ps.setInt(9, c.getMontantAvance());
			ps.setDate(10, new java.sql.Date(c.getDatecreationContrat().getTime()));
			ps.setInt(11,c.getNumContrat());
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Contrat getContratById(int code) {
		Connection connection = ConnectionBD.getConnection();
		Contrat c =new Contrat();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from contrat Where numContrat = ? ");
			 ps.setInt(1, code);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 c.setNumContrat(rs.getInt("numContrat"));
				 c.setDateContrat(rs.getDate("dateContrat"));
				 c.setNumSociete(rs.getInt("numSociete"));
				 c.setCodeCond1(rs.getInt("codeCond1"));
				 c.setCodeCond2(rs.getInt("codeCond2"));
				 c.setDatedebutlocation(rs.getDate("datedebutlocation"));
				 c.setDatefinlocation(rs.getDate("datefinlocation"));
				 c.setPrixUnitaireJour(rs.getInt("PrixUnitaireJour"));
				 c.setPrixtotal(rs.getInt("Prixtotal"));
				 c.setMontantAvance(rs.getInt("MontantAvance"));
				 c.setDatecreationContrat(rs.getDate("datecreationContrat"));
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
		
	}


	
}
