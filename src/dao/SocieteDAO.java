package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entities.Modele;
import entities.Societe;

public class SocieteDAO {

	

	public void ajouter (Societe s) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into societe Values (null,?,?,?,?,?,?,?,?) ");
				
			ps.setString(1, s.getNomSociete());
			ps.setBoolean(2,s.isPersonne());
			ps.setString(3, s.getAdresseSociete());
			ps.setInt(4, s.getTelSociete());
			ps.setString(5, s.getMailSociete());
			ps.setDate(6, new java.sql.Date(s.getDatecreationSociete().getTime()));
			ps.setString(7, s.getPrenomnomRepresentantSociete());
			ps.setInt(8, s.getTelRepresentantSociete());
			
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Societe> getAllSocietes() {
		Connection connection = ConnectionBD.getConnection();

		List<Societe> so = new ArrayList<Societe>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from societe");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Societe s =new Societe();
				 s.setNumSociete(rs.getInt("numSociete"));
				 s.setNomSociete(rs.getString("nomSociete"));
				 s.setAdresseSociete(rs.getString("adresseSociete"));
				 s.setTelSociete(rs.getInt("telSociete"));
				 s.setMailSociete(rs.getString("mailSociete"));
				 s.setDatecreationSociete(rs.getDate("datecreationSociete"));
				 s.setPrenomnomRepresentantSociete(rs.getString("prenomnomRepresentantSociete"));
				 s.setTelRepresentantSociete(rs.getInt("telRepresentantSociete"));
				 s.setPersonne(rs.getBoolean("personnePhysique"));
				 so.add(s);
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return so;
		
	}
	
	public void supprimer (int code) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("delete from societe where numSociete = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Societe s) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update societe set nomSociete = ?, personnePhysique = ?, adresseSociete = ?, telSociete = ?, mailSociete = ?, datecreationSociete = ?, prenomnomRepresentantSociete = ?, telRepresentantSociete = ? where numSociete = ? ");			
			ps.setString(1, s.getNomSociete());
			ps.setBoolean(2,s.isPersonne());
			ps.setString(3, s.getAdresseSociete());
			ps.setInt(4, s.getTelSociete());
			ps.setString(5, s.getMailSociete());
			ps.setDate(6, new java.sql.Date(s.getDatecreationSociete().getTime()));
			ps.setString(7, s.getPrenomnomRepresentantSociete());
			ps.setInt(8, s.getTelRepresentantSociete());
			ps.setInt(9, s.getNumSociete());
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Societe getSocieteById(int code) {
		Connection connection = ConnectionBD.getConnection();
		Societe s =new Societe();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from societe Where numSociete = ? ");
			 ps.setInt(1, code);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 s.setNumSociete(rs.getInt("numSociete"));
				 s.setNomSociete(rs.getString("nomSociete"));
				 s.setPersonne(rs.getBoolean("personnePhysique"));
				 s.setAdresseSociete(rs.getString("adresseSociete"));
				 s.setTelSociete(rs.getInt("telSociete"));
				 s.setMailSociete(rs.getString("mailSociete"));
				 s.setDatecreationSociete(rs.getDate("datecreationSociete"));
				 s.setPrenomnomRepresentantSociete(rs.getString("prenomnomRepresentantSociete"));
				 s.setTelRepresentantSociete(rs.getInt("telRepresentantSociete"));
				 
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
		
	}

	
}
