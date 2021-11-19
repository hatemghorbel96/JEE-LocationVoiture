package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entities.Maison;
import entities.Marque;
import entities.Modele;

public class MarqueDAO {

	public void ajouter (Marque mr) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into marque Values (null,?) ");
			ps.setString(1, mr.getNomMarque());
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Marque> getAllMarques() {
		Connection connection = ConnectionBD.getConnection();

		List<Marque> mar = new ArrayList<Marque>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from marque");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Marque m =new Marque();
				 m.setCodeMarque(rs.getInt("codeMarque"));
				 m.setNomMarque(rs.getString("nomMarque"));
				
				 mar.add(m);
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mar;
		
	}
	
	public void supprimer (int code) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("delete from marque where codeMarque = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Marque m) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update marque set nomMarque = ? where codeMarque = ? ");
			ps.setString(1, m.getNomMarque());
			ps.setInt(2, m.getCodeMarque());
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Marque getMarqueById(int code) {
		Connection connection = ConnectionBD.getConnection();
		Marque m =new Marque();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from marque Where codeMarque = ? ");
			 ps.setInt(1, code);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 m.setCodeMarque(rs.getInt("codeMarque"));
				 m.setNomMarque(rs.getString("nomMarque"));
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return m;
		
	}
	
}
