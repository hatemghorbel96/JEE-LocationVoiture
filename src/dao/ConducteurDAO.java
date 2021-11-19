package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entities.Conducteur;
import entities.Maison;

public class ConducteurDAO {

	
	public void ajouter (Conducteur c) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into conducteur Values (null,?,?,?,?,?,?,?,?,?,?,?) ");
			
			ps.setString(1, c.getPrenomnomconducteur());
			ps.setDate(2, new java.sql.Date(c.getDatenaissance().getTime()));
			ps.setInt(3, c.getNumPermisConduite());
			ps.setDate(4, new java.sql.Date(c.getDatelivraisonPermisConduite().getTime()));
			ps.setDate(5, new java.sql.Date(c.getDatefinvalidite().getTime()));
			ps.setString(6, c.getAdresse());
			ps.setInt(7, c.getTel());
			ps.setInt(8, c.getNumCIN());
			ps.setDate(9, new java.sql.Date(c.getDateCin().getTime()));
			ps.setString(10, c.getMailConducteur());
			ps.setDate(11, new java.sql.Date(c.getDatecreationConducteur().getTime()));
			
			
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Conducteur> getAllConducteurs() {
		Connection connection = ConnectionBD.getConnection();

		List<Conducteur> con = new ArrayList<Conducteur>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from Conducteur");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Conducteur c =new Conducteur();
				 c.setCodeConducteur(rs.getInt("codeConducteur"));
				 c.setPrenomnomconducteur(rs.getString("prenomnomconducteur"));
				 c.setDatenaissance(rs.getDate("datenaissance"));
				 c.setNumPermisConduite(rs.getInt("numPermisConduite"));
				 c.setDatelivraisonPermisConduite(rs.getDate("datelivraisonPermisConduite"));
				 c.setDatefinvalidite(rs.getDate("datefinvalidite"));
				 c.setAdresse(rs.getString("adresse"));
				 c.setTel(rs.getInt("tel"));
				 c.setNumCIN(rs.getInt("numCIN"));
				 c.setDateCin(rs.getDate("dateCin"));
				 c.setMailConducteur(rs.getString("MailConducteur"));
				 c.setDatecreationConducteur(rs.getDate("datecreationConducteur"));
				
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
			PreparedStatement ps = cnx.prepareStatement("delete from conducteur where codeConducteur = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Conducteur c) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update conducteur set prenomnomconducteur = ?,datenaissance = ?,numPermisConduite = ?,datelivraisonPermisConduite = ?,datefinvalidite = ?,adresse = ?,tel = ?,numCIN = ?,dateCin = ?,MailConducteur = ?,	datecreationConducteur = ? where codeConducteur = ? ");
			ps.setString(1, c.getPrenomnomconducteur());
			ps.setDate(2, (Date) c.getDatenaissance());
			ps.setInt(3, c.getNumPermisConduite());
			ps.setDate(4, (Date) c.getDatelivraisonPermisConduite());
			ps.setDate(5, (Date) c.getDatefinvalidite());
			ps.setString(6, c.getAdresse());
			ps.setInt(7, c.getTel());
			ps.setInt(8, c.getNumCIN());
			ps.setDate(9, (Date) c.getDateCin());
			ps.setString(10, c.getMailConducteur());
			ps.setDate(11, (Date) c.getDatecreationConducteur());
			ps.setInt(12,c.getCodeConducteur());
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Conducteur getConducteurById(int code) {
		Connection connection = ConnectionBD.getConnection();
		Conducteur c =new Conducteur();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from conducteur Where codeConducteur = ? ");
			 ps.setInt(1, code);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 c.setCodeConducteur(rs.getInt("codeConducteur"));
				 c.setPrenomnomconducteur(rs.getString("prenomnomconducteur"));
				 c.setDatenaissance(rs.getDate("datenaissance"));
				 c.setNumPermisConduite(rs.getInt("numPermisConduite"));
				 c.setDatelivraisonPermisConduite(rs.getDate("datelivraisonPermisConduite"));
				 c.setDatefinvalidite(rs.getDate("datefinvalidite"));
				 c.setAdresse(rs.getString("adresse"));
				 c.setTel(rs.getInt("tel"));
				 c.setNumCIN(rs.getInt("numCIN"));
				 c.setDateCin(rs.getDate("dateCin"));
				 c.setMailConducteur(rs.getString("MailConducteur"));
				 c.setDatecreationConducteur(rs.getDate("datecreationConducteur"));
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
		
	}


}
