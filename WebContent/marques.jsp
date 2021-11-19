<%@page import="java.util.List"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.MarqueDAO"%>
<%@page import="entities.Marque" %>
<% session.setAttribute("page", "users") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>

  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Gestion marque 
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="marques.jsp">List Marques</a></li>
					   
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     	<div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Listes marque<br><br>
                              <a href="NouveauMarque.jsp"> <button type="submit" class="btn btn-primary">Ajouter</button></a>
                        </div>
                        <% MarqueDAO marquedao = new MarqueDAO();
                        List<Marque> marques = marquedao.getAllMarques();%>
                        <div class="panel-body">
                            <div class="table-responsive" style="overflow-x:hidden">
                                <table class="table table-striped table-bordered table-hover text-center" id="dataTables-example">
                                    <thead class="text-center">
                                        <tr >
                                            
                                            <th class="bg-primary"><div class="text-center">Nom </div></th>
                                            <th class="bg-primary"colspan="2" ><div class="text-center">Action</div></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       for(Marque m:marques){
                                    	   out.print("<tr> ");
                                    	   
                                    	   out.print("<td> "+ m.getNomMarque()+ " </td>");
                                    	   
                                    	   out.print("<td> <a href ='ModifierMarque.jsp?code="+m.getCodeMarque()+"'><i class ='fa fa-pencil'></i></a></td>");
                                    	   out.print("<td> <a href ='DeleteMarque?code="+m.getCodeMarque()+"' ><i class='fa fa-minus-circle'></i></a> </td>");
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
