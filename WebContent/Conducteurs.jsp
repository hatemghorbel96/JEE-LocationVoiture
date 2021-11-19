<%@page import="java.util.List"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.ConducteurDAO"%>
<%@page import="entities.Conducteur" %>
<% session.setAttribute("page", "users") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>

  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Gestion conducteur 
                        </h1>
						<ol class="breadcrumb">
					<li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Conducteurs.jsp">List Conducteurs</a></li>
					  
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     	<div class="row">
                <div class="col-sm-19">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Listes conducteurs<br><br>
                              <a href="NouveauConducteur.jsp"> <button type="submit" class="btn btn-primary">Ajouter</button></a>
                        </div>
                        <% ConducteurDAO conducteurdao = new ConducteurDAO();
                        List<Conducteur> conducteurs = conducteurdao.getAllConducteurs();%>
                        <div class="panel-body">
                            <div  class="table-responsive" style="overflow-x:hidden">
                                <table class="table table-striped table-bordered table-hover text-center" id="dataTables-example">
                                    <thead class="text-center">
                                        <tr >
                                            
                                            <th class="bg-primary"><div class="text-center">Prenom nom conducteur</div> </th>
                                            
                                            <th class="bg-primary"><div class="text-center">Num Permis Conduite</div> </th>
                                            <th class="bg-primary"><div class="text-center">Date livraison Permis Conduite</div> </th>
                                            <th class="bg-primary"><div class="text-center">Date fin validité</div> </th>
                                            <th class="bg-primary"><div class="text-center">Adresse</div> </th>
                                            <th class="bg-primary" ><div class="text-center">Tel</div> </th>
                                            
                                           
                                            <th class="bg-primary"class="text-center">Mail Conducteur </th>
                                            <th class="bg-primary"class="text-center">Date creation Conducteur </th>
                                            
                                            <th class="bg-primary" colspan="2" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       for(Conducteur c:conducteurs){
                                    	   out.print("<tr> ");
                                    	   
                                    	   out.print("<td> "+ c.getPrenomnomconducteur()+ " </td>");
                                    	  
                                    	   out.print("<td> "+ c.getNumPermisConduite()+ " </td>");
                                    	   out.print("<td> "+ c.getDatelivraisonPermisConduite()+ " </td>");
                                    	   out.print("<td> "+ c.getDatefinvalidite()+ " </td>");
                                    	   out.print("<td> "+ c.getAdresse()+ " </td>");
                                    	   out.print("<td> "+ c.getTel()+ " </td>");
                                    	   
                                    	   
                                    	   out.print("<td> "+ c.getMailConducteur()+ " </td>");
                                    	   out.print("<td> "+ c.getDatecreationConducteur()+ " </td>");
                                    	 
                                    	   
                                    	   out.print("<td> <a href ='ModifierConducteur.jsp?code="+c.getCodeConducteur()+"'><i class ='fa fa-pencil'></i></a></td>");
                                    	   out.print("<td> <a href ='DeleteConducteur?code="+c.getCodeConducteur()+"' ><i class='fa fa-minus-circle'></i></a> </td>");
                                    	   out.print("</tr> ");
                                       }
                                    	   
                                       %>
                                    </tbody>
                                  </table>
                                 </div>
                               </div>
                              </div>
                             </div>
                            </div>
                            
                          <script type="text/javascript">
                          
                          $(document).ready(function () {
							$(".table").dataTable();
						});
                          
                          </script> 
     </div>
   </div>
