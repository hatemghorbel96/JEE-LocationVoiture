package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ConducteurDAO;
import dao.ContratDAO;
import dao.MaisonDAO;
import dao.MarqueDAO;
import dao.ModeleDAO;
import dao.SocieteDAO;
import dao.UserDAO;
import dao.VoitureDAO;
import entities.User;
import entities.Conducteur;
import entities.Contrat;
import entities.Maison;
import entities.Modele;
import entities.Societe;
import entities.Marque;
import entities.Voiture;
/**
 * Servlet implementation class UserController
 */
@WebServlet(urlPatterns={"/Login","/Deconnexion","/AjouterUser","/ModifierUser","/modifierPassword","/DeleteUser",
		"/AjouterMaison","/ModifierMaison","/DeleteMaison",
		"/AjouterMarque","/ModifierMarque","/DeleteMarque",
		"/AjouterModele","/ModifierModele","/DeleteModele",
		"/AjouterVoiture","/ModifierVoiture","/DeleteVoiture",
		"/AjouterConducteur","/ModifierConducteur","/DeleteConducteur",
		"/AjouterSociete","/ModifierSociete","/DeleteSociete",
		"/AjouterContrat","/ModifierContrat","/DeleteContrat"})
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path=request.getServletPath() ;
		PrintWriter out = response.getWriter();
		UserDAO userdao = new UserDAO();
		MaisonDAO maisondao=new MaisonDAO();
		ModeleDAO modeledao=new ModeleDAO();
		MarqueDAO marquedao=new MarqueDAO();
		ConducteurDAO conducteurdao=new ConducteurDAO();
		VoitureDAO voituredao=new VoitureDAO();
		SocieteDAO societedao=new SocieteDAO();
		ContratDAO contratdao=new ContratDAO();
		
		HttpSession session = request.getSession();
		if(path.equals("/Deconnexion")) {
			session.setAttribute("user", null);
			response.sendRedirect("Login.jsp");
		}else if(path.equals("/DeleteUser")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				userdao.supprimer(code);
				response.sendRedirect("users.jsp");
			}
		}
		
		else if(path.equals("/DeleteMaison")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				maisondao.supprimer(code);
				response.sendRedirect("maisons.jsp");
			}
		}
		
		else if(path.equals("/DeleteMarque")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				marquedao.supprimer(code);
				response.sendRedirect("marques.jsp");
			}
		}
		
		else if(path.equals("/DeleteModele")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				modeledao.supprimer(code);
				response.sendRedirect("modeles.jsp");
			}
		}
		
		else if(path.equals("/DeleteConducteur")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				conducteurdao.supprimer(code);
				response.sendRedirect("Conducteurs.jsp");
			}
		}
		
		else if(path.equals("/DeleteSociete")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				societedao.supprimer(code);
				response.sendRedirect("societes.jsp");
			}
		}
		
		else if(path.equals("/DeleteVoiture")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				voituredao.supprimer(code);
				response.sendRedirect("Voitures.jsp");
			}
		}
		
		else if(path.equals("/DeleteContrat")) {
			if(request.getParameter("code") !=null) {
				int code =Integer.parseInt(request.getParameter("code"));
				contratdao.supprimer(code);
				response.sendRedirect("Contrats.jsp");
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path=request.getServletPath() ;
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		UserDAO userdao = new UserDAO();
		MaisonDAO maisondao=new MaisonDAO();
		ModeleDAO modeledao=new ModeleDAO();
		MarqueDAO marquedao=new MarqueDAO();
		ConducteurDAO conducteurdao=new ConducteurDAO();
		VoitureDAO voituredao=new VoitureDAO();
		SocieteDAO societedao=new SocieteDAO();
		ContratDAO contratdao=new ContratDAO();
		
		 if(path.equals("/Login")) {
	        	if (request.getParameter("username") != null && request.getParameter("password") != null) {
	    			String username = request.getParameter("username");
	    	        String password = request.getParameter("password");
	    	        
	    	       if (userdao.isValid(username, password)){
	    	    	   User u = userdao.Connexion(username, password); 
	    	       
	    	    	   session.setAttribute("user", u);
	    	    	   session.setAttribute("nom", u.getNomPren());
	    	    	   response.sendRedirect("dashbord.jsp");
	    	       }else {
	    	    	   response.sendRedirect("Login.jsp?erreur=invalide");
	    	       }
	}}
	else if(path.equals("/AjouterUser")) {
		if (request.getParameter("nom") != null &&  
			request.getParameter("login") != null && request.getParameter("password") != null && 
			request.getParameter("admin") != null) {
			User u =new User();
			u.setNomPren(request.getParameter("nom"));
			u.setLogin(request.getParameter("login"));
			u.setPassword(request.getParameter("password"));
			u.setAdmin(Boolean.parseBoolean(request.getParameter("admin")));
			userdao.ajouter(u);
			response.sendRedirect("users.jsp");

}}else if (path.equals("/ModifierUser")) {
	
	if (request.getParameter("nom") != null  && request.getParameter("iduser") != null &&
			request.getParameter("login") != null && request.getParameter("password") != null && 
			request.getParameter("admin") != null) {
			User u =new User();
			u.setIduser(Integer.parseInt(request.getParameter("iduser")));
			u.setNomPren(request.getParameter("nom") );
			u.setLogin(request.getParameter("login"));
			u.setPassword(request.getParameter("password"));
			u.setAdmin(Boolean.parseBoolean(request.getParameter("admin")));
			userdao.modifier(u);
			response.sendRedirect("users.jsp");
			
}
	else if (path.equals("/modifierPassword")) {
    	
    	if (request.getParameter("ancien") != null && request.getParameter("nouveau") != null && request.getParameter("confirmer") != null) {
    		
    		User u =(User)session.getAttribute("user");
    		if(!request.getParameter("ancien").equals(u.getPassword()) ) 
    			response.sendRedirect("modifierPassword.jsp?erreur=ancien");   		
    		else if( !request.getParameter("nouveau").equals(request.getParameter("confirmer")))
    			response.sendRedirect("modifierPassword.jsp?erreur=confirmer");
    		else {
    			u.setPassword(request.getParameter("nouveau"));
    			userdao.modifier(u);
    			session.setAttribute("user", u);
    			response.sendRedirect("dashbord.jsp");
    		}
    	}
    }
}else if (path.equals("/AjouterMaison")) {
	Maison m=new Maison();
	m.setNomMaison(request.getParameter("nomMaison"));
	maisondao.ajouter(m);
	response.sendRedirect("maisons.jsp");
	

}else if (path.equals("/ModifierMaison")) {
	Maison m=new Maison();
	m.setCodeMaison(Integer.parseInt(request.getParameter("codeMaison")));
	m.setNomMaison(request.getParameter("nomMaison"));
	maisondao.modifier(m);
	response.sendRedirect("maisons.jsp");
	
}	
else if (path.equals("/AjouterModele")) {
	Modele m=new Modele();
	m.setNomModele(request.getParameter("nomModele"));
	modeledao.ajouter(m);
	response.sendRedirect("modeles.jsp");
	
}else if (path.equals("/ModifierModele")) {
	Modele m=new Modele();
	m.setCodeModele(Integer.parseInt(request.getParameter("codeModele")));
	m.setNomModele(request.getParameter("nomModele"));
	modeledao.modifier(m);
	response.sendRedirect("modeles.jsp");
}
else if (path.equals("/AjouterMarque")) {
	Marque m=new Marque();
	m.setNomMarque(request.getParameter("nomMarque"));
	marquedao.ajouter(m);
	response.sendRedirect("marques.jsp");
	
}else if (path.equals("/ModifierMarque")) {
	Marque m=new Marque();
	m.setCodeMarque(Integer.parseInt(request.getParameter("codeMarque")));
	m.setNomMarque(request.getParameter("nomMarque"));
	marquedao.modifier(m);
	response.sendRedirect("marques.jsp");
	
}else if (path.equals("/AjouterVoiture")) {
	Voiture v=new Voiture();
	String d=request.getParameter("datemisecirculation");
    Date date1;
	try {
		date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	
    v.setDatemisecirculation(date1);
	
	v.setNumcartegrise(Integer.parseInt(request.getParameter("numcartegrise")));
	v.setKilometrage(Integer.parseInt(request.getParameter("Kilometrage")));
	v.setMatricule(Integer.parseInt(request.getParameter("matricule")));
	v.setCodeModele(Integer.parseInt(request.getParameter("codeModele")));
	v.setCodeMarque(Integer.parseInt(request.getParameter("codeMarque")));
	v.setCodeMaison(Integer.parseInt(request.getParameter("codeMaison")));
	 
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	voituredao.ajouter(v);
	
	response.sendRedirect("Voitures.jsp");	
	
}else if (path.equals("/ModifierVoiture")) {
	Voiture v=new Voiture();
	v.setIdvoiture(Integer.parseInt(request.getParameter("idvoiture")));
	String d=request.getParameter("datemisecirculation");
    Date date1;
	try {
		date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	
    v.setDatemisecirculation(date1);
	
	v.setNumcartegrise(Integer.parseInt(request.getParameter("numcartegrise")));
	v.setKilometrage(Integer.parseInt(request.getParameter("Kilometrage")));
	v.setMatricule(Integer.parseInt(request.getParameter("matricule")));
	v.setCodeModele(Integer.parseInt(request.getParameter("codeModele")));
	v.setCodeMarque(Integer.parseInt(request.getParameter("codeMarque")));
	v.setCodeMaison(Integer.parseInt(request.getParameter("codeMaison")));
	 
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	voituredao.modifier(v);
	
	response.sendRedirect("Voitures.jsp");
}
		 
else if (path.equals("/AjouterConducteur")) {
	Conducteur cc=new Conducteur();
	cc.setPrenomnomconducteur(request.getParameter("prenomnomconducteur"));
	
	String d=request.getParameter("datenaissance");
    Date date1;
    try {
		date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
		cc.setDatenaissance(date1);
    
	
	cc.setNumPermisConduite(Integer.parseInt(request.getParameter("numPermisConduite")));
	String d2=request.getParameter("datelivraisonPermisConduite");
	Date date2;
	date2 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	cc.setDatelivraisonPermisConduite(date2);
	
	String d3=request.getParameter("datefinvalidite");
	Date date3;
	date3 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	cc.setDatefinvalidite(date2);
	
	
	cc.setAdresse(request.getParameter("adresse"));
	cc.setTel(Integer.parseInt(request.getParameter("tel")));
	cc.setNumCIN(Integer.parseInt(request.getParameter("numCIN")));
	
	String d4=request.getParameter("dateCin");
	Date date4;
	date4 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	cc.setDateCin(date4);
	
	
	cc.setMailConducteur(request.getParameter("MailConducteur"));
	
	String d5=request.getParameter("datecreationConducteur");
	Date date5;
	date5 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	cc.setDatecreationConducteur(date5);
	
	
 
	conducteurdao.ajouter(cc);
} catch (ParseException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	response.sendRedirect("Conducteurs.jsp");
	
}else if (path.equals("/ModifierConducteur")) {
	Conducteur c=new Conducteur();
	c.setCodeConducteur(Integer.parseInt(request.getParameter("codeConducteur")));
	c.setPrenomnomconducteur(request.getParameter("prenomnomconducteur"));
	
	String d=request.getParameter("datenaissance");
    Date date1;
    try {
		date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
		c.setDatenaissance(date1);
    
	
	c.setNumPermisConduite(Integer.parseInt(request.getParameter("numPermisConduite")));
	String d2=request.getParameter("datelivraisonPermisConduite");
	Date date2;
	date2 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	c.setDatelivraisonPermisConduite(date2);
	
	String d3=request.getParameter("datefinvalidite");
	Date date3;
	date3 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	c.setDatefinvalidite(date2);
	
	
	c.setAdresse(request.getParameter("adresse"));
	c.setTel(Integer.parseInt(request.getParameter("tel")));
	c.setNumCIN(Integer.parseInt(request.getParameter("numCIN")));
	
	String d4=request.getParameter("dateCin");
	Date date4;
	date4 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	c.setDateCin(date4);
	
	
	c.setMailConducteur(request.getParameter("MailConducteur"));
	
	String d5=request.getParameter("datecreationConducteur");
	Date date5;
	date5 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	c.setDatecreationConducteur(date5);
	
	
 
	conducteurdao.modifier(c);
} catch (ParseException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	response.sendRedirect("Conducteurs.jsp");	
	
	
}else if (path.equals("/AjouterSociete")) {
	Societe s=new Societe();
	
	s.setNomSociete(request.getParameter("nomSociete"));
	s.setPersonne(Boolean.parseBoolean(request.getParameter("personnePhysique")));
	s.setAdresseSociete(request.getParameter("adresseSociete"));
	s.setTelSociete(Integer.parseInt(request.getParameter("telSociete")));
	s.setMailSociete(request.getParameter("mailSociete"));
	String d=request.getParameter("datecreationSociete");
    Date date1;
	
		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
		
	
    s.setDatecreationSociete(date1);
	
	
		
	
	
	s.setPrenomnomRepresentantSociete(request.getParameter("prenomnomRepresentantSociete"));
	s.setTelRepresentantSociete(Integer.parseInt(request.getParameter("telRepresentantSociete")));
	
	
	societedao.ajouter(s);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	response.sendRedirect("societes.jsp");	
}else if (path.equals("/ModifierSociete")) {
	Societe s=new Societe();
	s.setNumSociete(Integer.parseInt(request.getParameter("numSociete")));
	s.setNomSociete(request.getParameter("nomSociete"));
	s.setPersonne(Boolean.parseBoolean(request.getParameter("personnePhysique")));
	s.setAdresseSociete(request.getParameter("adresseSociete"));
	s.setTelSociete(Integer.parseInt(request.getParameter("telSociete")));
	s.setMailSociete(request.getParameter("mailSociete"));
	String d=request.getParameter("datecreationSociete");
    Date date1;
	
		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);
	
    s.setDatecreationSociete(date1);
	
	s.setPrenomnomRepresentantSociete(request.getParameter("prenomnomRepresentantSociete"));
	s.setTelRepresentantSociete(Integer.parseInt(request.getParameter("telRepresentantSociete")));
	societedao.modifier(s);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	response.sendRedirect("societes.jsp");	
	
}else if (path.equals("/AjouterContrat")) {
Contrat c=new Contrat();
String d=request.getParameter("dateContrat");
Date date1;

	try {
		date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);		

c.setDateContrat(date1);
	
	
	c.setNumSociete(Integer.parseInt(request.getParameter("numSociete")));
	c.setCodeCond1(Integer.parseInt(request.getParameter("codeCond1")));
	c.setCodeCond2(Integer.parseInt(request.getParameter("codeCond2")));
	
		String d2=request.getParameter("datedebutlocation");
	    Date date2;
		
			
				date2 = new SimpleDateFormat("yyyy-MM-dd").parse(d2);		
		
	    c.setDatedebutlocation(date2);
			
			
			
			String d3=request.getParameter("datefinlocation");
		    Date date3;
			
				
					date3 = new SimpleDateFormat("yyyy-MM-dd").parse(d3);		
			
		    c.setDatefinlocation(date3);
				
				
		
	c.setPrixUnitaireJour(Integer.parseInt(request.getParameter("PrixUnitaireJour")));
	c.setPrixtotal(Integer.parseInt(request.getParameter("Prixtotal")));
	c.setMontantAvance(Integer.parseInt(request.getParameter("MontantAvance")));
		
	
		
	
		
		String d4=request.getParameter("datecreationContrat");
	    Date date4;
		
			
				date4 = new SimpleDateFormat("yyyy-MM-dd").parse(d4);		
		
	    c.setDatecreationContrat(date4);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	contratdao.ajouter(c);
	response.sendRedirect("Contrats.jsp");	
	
}else if (path.equals("/ModifierContrat")) {
	
	Contrat c=new Contrat();
	c.setNumContrat(Integer.parseInt(request.getParameter("numContrat")));
	String d=request.getParameter("dateContrat");
	Date date1;

		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(d);		

	c.setDateContrat(date1);
		
		
		c.setNumSociete(Integer.parseInt(request.getParameter("numSociete")));
		c.setCodeCond1(Integer.parseInt(request.getParameter("codeCond1")));
		c.setCodeCond2(Integer.parseInt(request.getParameter("codeCond2")));
		
			String d2=request.getParameter("datedebutlocation");
		    Date date2;
			
				
					date2 = new SimpleDateFormat("yyyy-MM-dd").parse(d2);		
			
		    c.setDatedebutlocation(date2);
				
				
				
				String d3=request.getParameter("datefinlocation");
			    Date date3;
				
					
						date3 = new SimpleDateFormat("yyyy-MM-dd").parse(d3);		
				
			    c.setDatefinlocation(date3);
					
					
			
		c.setPrixUnitaireJour(Integer.parseInt(request.getParameter("PrixUnitaireJour")));
		c.setPrixtotal(Integer.parseInt(request.getParameter("Prixtotal")));
		c.setMontantAvance(Integer.parseInt(request.getParameter("MontantAvance")));
			
		
			
		
			
			String d4=request.getParameter("datecreationContrat");
		    Date date4;
			
				
					date4 = new SimpleDateFormat("yyyy-MM-dd").parse(d4);		
			
		    c.setDatecreationContrat(date4);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		contratdao.modifier(c);
		response.sendRedirect("Contrats.jsp");
		 
}	 
}
	
}
