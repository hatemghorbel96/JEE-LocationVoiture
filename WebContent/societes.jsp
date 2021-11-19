<%@page import="java.util.List"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.SocieteDAO"%>
<%@page import="entities.Societe" %>
<% session.setAttribute("page", "users") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>

  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Gestion societe 
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="societes.jsp">List societes</a></li>
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     	<div class="row">
                <div class="col-md-18">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Listes societes<br><br>
                              <a href="NouveauSociete.jsp"> <button type="submit" class="btn btn-primary">Ajouter</button></a>
                        </div>
                        <% SocieteDAO societedao = new SocieteDAO();
                        List<Societe> societes = societedao.getAllSocietes();%>
                        <div class="panel-body">
                            <div class="table-responsive" style="overflow-x:hidden">
                                <table class="table table-striped table-bordered table-hover text-center" id="dataTables-example">
                                    <thead class="text-center">
                                        <tr >
                                            
                                            <th class="bg-primary"><div class="text-center">Nom Societe</div> </th>
                                            <th class="bg-primary"><div class="text-center">Adresse Societe</div> </th>
                                            <th class="bg-primary" ><div class="text-center">Tel Societe</div> </th>
                                            <th class="bg-primary"><div class="text-center">Mail Societe</div> </th>
                                            <th class="bg-primary"><div class="text-center">Date creation Societe</div> </th>
                                            <th class="bg-primary"><div class="text-center">Prenom nom Représentant Societe</div> </th>
                                            <th class="bg-primary"><div class="text-center">Tel Représentant Societe</div> </th>
                                            <th class="bg-primary"><div class="text-center">Personne</div> </th>
                                           
                                            
                                            <th colspan="2" class="bg-primary" class="text-center ">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       for(Societe s:societes){
                                    	   out.print("<tr> ");
                                    	   
                                    	   out.print("<td> "+ s.getNomSociete()+ " </td>");
                                    	   out.print("<td> "+ s.getAdresseSociete()+ " </td>");
                                    	   out.print("<td> "+ s.getTelSociete()+ " </td>");
                                    	   out.print("<td> "+ s.getMailSociete()+ " </td>");
                                    	   out.print("<td> "+ s.getDatecreationSociete()+ " </td>");
                                    	   out.print("<td> "+ s.getPrenomnomRepresentantSociete()+ " </td>");
                                    	   out.print("<td> "+ s.getTelRepresentantSociete()+ " </td>");
                                    	   out.print("<td> "+ s.isPersonne()+ " </td>");
                                    	   
                                    	 
                                    	   
                                    	   out.print("<td> <a href ='ModifierSociete.jsp?code="+s.getNumSociete()+"'><i class ='fa fa-pencil'></i></a></td>");
                                    	   out.print("<td> <a href ='DeleteSociete?code="+s.getNumSociete()+"' ><i class='fa fa-minus-circle'></i></a> </td>");
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
