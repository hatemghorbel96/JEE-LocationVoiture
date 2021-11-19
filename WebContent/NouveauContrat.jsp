<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@page import="entities.Societe" %>
<%@page import="entities.Conducteur" %>
<%@page import="dao.SocieteDAO" %>
<%@page import="dao.ConducteurDAO" %>
<%@page import="java.util.List"%>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Ajoute contrat
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Contrats.jsp">List Contrats</a></li>
					   <li><a href="NouveauContrat.jsp">Ajouter Contrat</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
      <% SocieteDAO societedao = new SocieteDAO();
                        List<Societe> Societes = societedao.getAllSocietes();
                        ConducteurDAO conducteurdao = new ConducteurDAO();
                        List<Conducteur> conducteurs = conducteurdao.getAllConducteurs();%>
     <div class="panel-body">
                                    <form class="form-horizontal" action="AjouterContrat" method="post">
                                       
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date Contrat</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="dateContrat"id="dateContrat" placeholder="DateContrat">
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
                                             <%for (Conducteur c:conducteurs){%>
                                            	   <option value =<%out.println(c.getCodeConducteur()); %>><%out.println(c.getPrenomnomconducteur()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                            </div>
                                        
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Conducteur 2</label>
                                            <div class="col-sm-10">
                                                    <select class="form-control" name="codeCond2"id="codeCond2" placeholder="CodeCond2">
                                             <%for (Conducteur c:conducteurs){%>
                                            	   <option value =<%out.println(c.getCodeConducteur()); %>><%out.println(c.getPrenomnomconducteur()); %></option><% 
                                            	   
                                        	   }%>
                                               
                                            </select></div>
                                            </div>
                                        
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date debut location</label>
                                            <div class="col-sm-10">
                                                <input type="date" onchange="calcul()" class="form-control" name="datedebutlocation"id="datedebutlocation" placeholder="Datedebutlocation">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date fin location</label>
                                            <div class="col-sm-10">
                                                <input type="date" onchange="calcul()" class="form-control" name="datefinlocation"id="datefinlocation" placeholder="Datefinlocation">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Prix Unitaire Jour</label>
                                            <div class="col-sm-10">
                                                <input type="text" onclick="calcul()" class="form-control" name="PrixUnitaireJour"id="PrixUnitaireJour" placeholder="PrixUnitaireJour">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Prix total</label>
                                            <div class="col-sm-10">
                                                <input type="text" readonly class="form-control" name="Prixtotal"id="Prixtotal" placeholder="Prixtotal">
                                            </div>
                                        </div>
                                        
                                           <div class="form-group">
                                            <label  class="col-sm-2 control-label">Montant Avance</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="MontantAvance"id="MontantAvance" placeholder="MontantAvance">
                                            </div>
                                        </div>
                                        
                                           <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date creation Contrat</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datecreationContrat"id="datecreationContrat" placeholder="DatecreationContrat">
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
                                    

     </div>
  
     <script type="text/javascript">                         
function calcul() {


 var d1=document.getElementById("datedebutlocation").value;

 var d2 =document.getElementById("datefinlocation").value;
 day1 = d1.substring(8,10);
 day2 = d2.substring(8,10);

 if(day2 > day1){
  diff= day2 - day1;
  var prix = document.getElementById("PrixUnitaireJour").value;
  
  document.getElementById("Prixtotal").value = diff *prix;
            }


    }
</script>   

