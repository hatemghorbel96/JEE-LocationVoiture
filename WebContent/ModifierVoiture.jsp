<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@page import="entities.Marque" %>
<%@page import="entities.Maison" %>
<%@page import="entities.Modele" %>
<%@page import="entities.Voiture" %>
<%@page import="dao.MarqueDAO"%>
<%@page import="dao.ModeleDAO"%>
<%@page import="dao.MaisonDAO"%>
<%@page import="dao.VoitureDAO"%>
<%@page import="java.util.List"%>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier voiture
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Voitures.jsp">List voitures</a></li>
					   <li><a href="ModifierVoiture.jsp">Modifier voiture</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
      <% if (request.getParameter("code") != null)
    	 {
    	 VoitureDAO voituredao = new VoitureDAO();
    	 Voiture v =new Voiture();
    	 v = voituredao.getVoitureById(Integer.parseInt(request.getParameter("code")));
    	  %>
       <% MarqueDAO marquedao = new MarqueDAO();
                        List<Marque> marques = marquedao.getAllMarques();%>
                        
                        <% MaisonDAO maisondao = new MaisonDAO();
                        List<Maison> maisons = maisondao.getAllMaisons();%>
                        
                          <% 
                          ModeleDAO modeledao=new ModeleDAO();
                        List<Modele> modeles = modeledao.getAllModeles();%>
     <div class="panel-body">
                                    <form class="form-horizontal" action="ModifierVoiture" method="post">
                                        <input type="hidden" name ="idvoiture" value ="<% out.print(v.getIdvoiture()); %>">
                                        
                                         <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">date </label>
                                            <div class="col-sm-10">
                                                <input type="date" value ="<% out.print(v.getDatemisecirculation()); %>"class="form-control" name="datemisecirculation"id="datemisecirculation" placeholder="datemisecirculation">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Num cartegrise</label>
                                            <div class="col-sm-10">
                                                <input type="text" value ="<% out.print(v.getNumcartegrise()); %>"class="form-control" name="numcartegrise"id="numcartegrise" placeholder="numcartegrise">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Matricule</label>
                                            <div class="col-sm-10">
                                                <input type="text" value ="<% out.print(v.getMatricule()); %>"class="form-control" name="matricule"id="matricule" placeholder="matricule">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Kilometrage</label>
                                            <div class="col-sm-10">
                                                <input type="text" value ="<% out.print(v.getKilometrage()); %>" class="form-control" name="Kilometrage"id="Kilometrage" placeholder="Kilometrage">
                                            </div>
                                        </div>
                                     
                                        <div class="form-group">
                                            <label  class="col-sm-2 control-label">marque</label>
                                            <div class="col-sm-10">
                                            <select class="form-control sekectpicker" id="codeMarque" name="codeMarque" >
                                               <%for (Marque m:marques){%>
                                            	   <option value =<%out.println(m.getCodeMarque()); %>><%out.println(m.getNomMarque()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">modele</label>
                                            <div class="col-sm-10">
                                            
                                                <select class="form-control sekectpicker" id="codeModele" name="codeModele" >
                                                <%for (Modele md:modeles){%>
                                            	   <option value =<%out.println(md.getCodeModele()); %>><%out.println(md.getNomModele()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">maison</label>
                                            <div class="col-sm-10">
                                              <select class="form-control sekectpicker" id="codeMaison" name="codeMaison" >
                                               <%for (Maison ms:maisons){%>
                                            	   <option value =<%out.println(ms.getCodeMaison()); %>><%out.println(ms.getNomMaison()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                        </div>
                                      
  
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-success">Enregistrer</button>
                                                <button type="submit" class="btn btn-danger">Annuler</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                                         <%  }else out.print("Quelque chose");
    	 
    	 %>
     </div>
   </div>
<%@ include file="scripts.jsp" %>
