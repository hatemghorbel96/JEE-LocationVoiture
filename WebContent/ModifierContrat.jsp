<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@page import="entities.Societe" %>
<%@page import="entities.Conducteur" %>
<%@page import="entities.Contrat" %>
<%@page import="dao.SocieteDAO" %>
<%@page import="dao.ConducteurDAO" %>
<%@page import="dao.ContratDAO" %>
<%@page import="java.util.List"%>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier contrat
                        </h1>
						<ol class="breadcrumb">
					   <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Contrats.jsp">List Contrats</a></li>
					   <li><a href="ModifierContrat.jsp">Modifier Contrat</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
      <% if (request.getParameter("code") != null)
    	 {
    	  ContratDAO contratdao = new ContratDAO();
    	 Contrat c =new Contrat();
    	 c = contratdao.getContratById(Integer.parseInt(request.getParameter("code")));
    	 SocieteDAO societedao = new SocieteDAO();
                        List<Societe> Societes = societedao.getAllSocietes();
                        ConducteurDAO conducteurdao = new ConducteurDAO();
                        List<Conducteur> conducteurs = conducteurdao.getAllConducteurs();%>
     <div class="panel-body">
                                    <form class="form-horizontal" action="ModifierContrat" method="post">
                                       <input type="hidden" name ="numContrat"  value ="<% out.print(c.getNumContrat()); %>">
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date Contrat</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="dateContrat"id="dateContrat"value ="<% out.print(c.getDateContrat()); %>" placeholder="DateContrat">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Nom Societe</label>
                                            <div class="col-sm-10">
                                                 <select class="form-control sekectpicker" id="numSociete" name="numSociete" >
                                                 <%for (Societe s:Societes){%>
                                            	   <option value =<%out.println(s.getNumSociete()); %>><%out.println(s.getNomSociete()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                            </div>
                                        
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Conducteur 1</label>
                                            <div class="col-sm-10">
                                                 <select class="form-control" name="codeCond1"id="codeCond1" placeholder="CodeCond1">
                                             <%for (Conducteur cc:conducteurs){%>
                                            	   <option value =<%out.println(cc.getCodeConducteur()); %>><%out.println(cc.getPrenomnomconducteur()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                            </div>
                                        
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Conducteur 2</label>
                                            <div class="col-sm-10">
                                                    <select class="form-control" name="codeCond2"id="codeCond2" placeholder="CodeCond2">
                                             <%for (Conducteur cc:conducteurs){%>
                                            	   <option value =<%out.println(cc.getCodeConducteur()); %>><%out.println(cc.getPrenomnomconducteur()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                            </div>
                                        
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date debut location</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datedebutlocation"id="datedebutlocation" value ="<% out.print(c.getDatedebutlocation()); %>"placeholder="Datedebutlocation">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date fin location</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datefinlocation"id="datefinlocation" value ="<% out.print(c.getDatefinlocation()); %>" placeholder="Datefinlocation">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Prix Unitaire Jour</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="PrixUnitaireJour"id="PrixUnitaireJour" value ="<% out.print(c.getPrixUnitaireJour()); %>" placeholder="PrixUnitaireJour">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Prix total</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="Prixtotal"id="Prixtotal" value ="<% out.print(c.getPrixtotal()); %>" placeholder="Prixtotal">
                                            </div>
                                        </div>
                                        
                                           <div class="form-group">
                                            <label  class="col-sm-2 control-label">Montant Avance</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="MontantAvance"id="MontantAvance" value ="<% out.print(c.getMontantAvance()); %>" placeholder="MontantAvance">
                                            </div>
                                        </div>
                                        
                                           <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date creation Contrat</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datecreationContrat"id="datecreationContrat" value ="<% out.print(c.getDatecreationContrat()); %>" placeholder="DatecreationContrat">
                                            </div>
                                        </div>
                                        
                                        
                                         
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
