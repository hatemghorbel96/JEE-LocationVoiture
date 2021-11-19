<%@page import="java.util.List"%>
<%@page import="dao.UserDAO"%>
<% session.setAttribute("page", "users") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>

  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Gestion Utilisateurs 
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="users.jsp">Gestion Utilisateur</a></li>
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     	<div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Listes User<br><br>
                              <a href="nouveauUser.jsp"> <button type="submit" class="btn btn-primary">Ajouter</button></a>
                        </div>
                        <% UserDAO userdao = new UserDAO();
                        List<User> users = userdao.getAllUsers();%>
                        <div class="panel-body">
                            <div class="table-responsive" style="overflow-x:hidden">
                                <table class="table table-striped table-bordered table-hover text-center" id="dataTables-example">
                                    <thead class="text-center">
                                        <tr >
                                            <th  class="bg-primary"><div class="text-center">Code</div></th>
                                            <th class="bg-primary" ><div class="text-center">Nom et Pr�nom</div></th>
                                            <th class="bg-primary"><div class="text-center">Admin</div></th>
                                            <th class="bg-primary"colspan="2" ><div class="text-center">Action</div></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       for(User u:users){
                                    	   out.print("<tr> ");
                                    	   out.print("<td> "+ u.getIduser()+ " </td>");
                                    	   out.print("<td> "+ u.getNomPren()+ " </td>");
                                    	   out.print("<td> "+ u.isAdmin()+ " </td>");
                                    	   out.print("<td> <a href ='ModifierUser.jsp?code="+u.getIduser()+"'><i class ='fa fa-pencil'></i></a></td>");
                                    	   out.print("<td> <a href ='DeleteUser?code="+u.getIduser()+"' ><i class='fa fa-minus-circle'></i></a> </td>");
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
