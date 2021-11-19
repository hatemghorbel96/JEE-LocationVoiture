package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entities.Maison;
import entities.Marque;
import entities.Modele;

public class ModeleDAO {

	
	public void ajouter (Modele m) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("insert into modele Values (null,?) ");
			ps.setString(1, m.getNomModele());
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public List<Modele> getAllModeles() {
		Connection connection = ConnectionBD.getConnection();

		List<Modele> mod = new ArrayList<Modele>();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from modele");
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 Modele m =new Modele();
				 m.setCodeModele(rs.getInt("codeModele"));
				 m.setNomModele(rs.getString("nomModele"));
				
				 mod.add(m);
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mod;
		
	}
	
	public void supprimer (int code) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("delete from modele where codeModele = ? ");
			ps.setInt(1, code);
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	public void modifier (Modele m) {
		Connection cnx = ConnectionBD.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update modele set nomModele = ? where codeModele = ? ");
			ps.setString(1, m.getNomModele());
			ps.setInt(2, m.getCodeModele());
			
			ps.executeUpdate();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
			
			
	}
	
	public Modele getModeleById(int codeModele) {
		Connection connection = ConnectionBD.getConnection();
		Modele m =new Modele();
		try {
			 PreparedStatement ps= connection.prepareStatement("Select * from modele Where codeModele = ? ");
			 ps.setInt(1, codeModele);
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 m.setCodeModele(rs.getInt("codeModele"));
				 m.setNomModele(rs.getString("nomModele"));
				
			 }
			 ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return m;
		
	}
}
