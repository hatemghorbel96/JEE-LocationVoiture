package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entities.Maison;
import entities.User;

public class MaisonDAO {

	
	public void ajouter (Maison m) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into maison Values (null,?) ");
			ps.setString(1, m.getNomMaison());
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Maison> getAllMaisons() {
		Connection connection = ConnectionBD.getConnection();

		List<Maison> ms = new ArrayList<Maison>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from maison");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Maison m =new Maison();
				 m.setCodeMaison(rs.getInt("codeMaison"));
				 m.setNomMaison(rs.getString("nomMaison"));
				
				 ms.add(m);
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ms;
		
	}
	
	public void supprimer (int code) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("delete from maison where codeMaison = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Maison m) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update maison set nomMaison = ? where codeMaison = ? ");
			ps.setString(1, m.getNomMaison());
			ps.setInt(2, m.getCodeMaison());
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Maison getMaisonById(int code) {
		Connection connection = ConnectionBD.getConnection();
		Maison m =new Maison();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from maison Where codeMaison = ? ");
			 ps.setInt(1, code);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 m.setCodeMaison(rs.getInt("codeMaison"));
				 m.setNomMaison(rs.getString("nomMaison"));
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return m;
		
	}



}
