package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

import entities.Modele;
import entities.Voiture;

public class VoitureDAO {

	
	public void ajouter (Voiture v) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into voiture Values (null,?,?,?,?,?,?,?) ");
			
			ps.setDate(1, new java.sql.Date(v.getDatemisecirculation().getTime()));
			ps.setInt(2, v.getNumcartegrise());
			ps.setInt(3, v.getKilometrage());
			ps.setInt(4, v.getMatricule());
			ps.setInt(5, v.getCodeModele());
			ps.setInt(6, v.getCodeMarque());
			ps.setInt(7, v.getCodeMaison());
			
			
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Voiture> getAllVoitures() {
		Connection connection = ConnectionBD.getConnection();

		List<Voiture> voi = new ArrayList<Voiture>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from voiture");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Voiture v =new Voiture();
				 v.setIdvoiture(rs.getInt("idvoiture"));
				 v.setDatemisecirculation(rs.getDate("datemisecirculation"));
				 v.setNumcartegrise(rs.getInt("numcartegrise"));
				 v.setKilometrage(rs.getInt("Kilometrage"));
				 v.setMatricule(rs.getInt("matricule"));
				 v.setCodeModele(rs.getInt("codeModele"));
				 v.setCodeMarque(rs.getInt("codeMarque"));
				 v.setCodeMaison(rs.getInt("codeMaison"));
				
				 voi.add(v);
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return voi;
		
	}
	
	
	public void supprimer (int code) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("delete from voiture where idvoiture = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Voiture v) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update voiture set datemisecirculation = ?,numcartegrise = ?,Kilometrage = ?,matricule = ?,codeModele  = ?,codeMarque  = ?,codeMaison  = ? where idvoiture = ? ");
			
			ps.setDate(1, new java.sql.Date(v.getDatemisecirculation().getTime()));
			ps.setInt(2, v.getNumcartegrise());
			ps.setInt(3, v.getKilometrage());
			ps.setInt(4, v.getMatricule());
			ps.setInt(5, v.getCodeModele());
			ps.setInt(6, v.getCodeMarque());
			ps.setInt(7, v.getCodeMaison());
			ps.setInt(8, v.getIdvoiture());
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Voiture getVoitureById(int code) {
		Connection connection = ConnectionBD.getConnection();
		Voiture v =new Voiture();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from voiture Where idvoiture = ? ");
			 ps.setInt(1, code);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 v.setIdvoiture(rs.getInt("idvoiture"));
				 v.setDatemisecirculation(rs.getDate("datemisecirculation"));
				 v.setNumcartegrise(rs.getInt("numcartegrise"));
				 v.setKilometrage(rs.getInt("Kilometrage"));
				 v.setMatricule(rs.getInt("matricule"));
				 v.setCodeModele(rs.getInt("codeModele"));
				 v.setCodeMarque(rs.getInt("codeMarque"));
				 v.setCodeMaison(rs.getInt("codeMaison"));
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
		
	}

}
