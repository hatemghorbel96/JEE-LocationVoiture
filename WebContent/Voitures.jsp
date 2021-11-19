<%@page import="java.util.List"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.VoitureDAO"%>
<%@page import="dao.MarqueDAO"%>
<%@page import="dao.ModeleDAO"%>
<%@page import="dao.MaisonDAO"%>
<%@page import="entities.Voiture" %>
<% session.setAttribute("page", "users") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>
<% User u = (User) session.getAttribute("user"); 

UserDAO userdao = new UserDAO();
ModeleDAO modeledao= new ModeleDAO();
MarqueDAO marquedao=new MarqueDAO();
MaisonDAO maisondao=new MaisonDAO();
%>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Gestion voiture 
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Voitures.jsp">List voitures</a></li>
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     	<div class="row">
                <div class="col-md-18">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Listes voitures<br><br>
                              <a href="NouveauVoiture.jsp"> <button type="submit" class="btn btn-primary">Ajouter</button></a>
                        </div>
                        <% VoitureDAO voituredao = new VoitureDAO();
                        List<Voiture> voitures = voituredao.getAllVoitures();%>
                        <div class="panel-body">
                            <div class="table-responsive" style="overflow-x:hidden">
                                <table class="table table-striped table-bordered table-hover text-center" id="dataTables-example">
                                    <thead class="text-center">
                                        <tr >
                                           
                                            <th class="bg-primary"><div class="text-center">Date mise circulation</div> </th>
                                            <th class="bg-primary"><div class="text-center">Num cartegrise </div></th>
                                            <th class="bg-primary"><div class="text-center">Kilometrage</div> </th>
                                            <th class="bg-primary"><div class="text-center">Matricule</div> </th>
                                            <th class="bg-primary"><div class="text-center">Maison</div> </th>
                                            <th class="bg-primary"><div class="text-center">Marque </div></th>
                                            <th class="bg-primary"><div class="text-center">modele</div> </th>
                                            
                                            
                                            
                                            <th class="bg-primary"colspan="2" ><div class="text-center">Action</div></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       for(Voiture v:voitures){
                                    	   out.print("<tr> ");
                                    	   
                                    	   out.print("<td> "+ v.getDatemisecirculation()+ " </td>");
                                    	   out.print("<td> "+ v.getNumcartegrise()+ " </td>");
                                    	   out.print("<td> "+ v.getKilometrage()+ " </td>");
                                    	   out.print("<td> "+ v.getMatricule()+ " </td>");
                                    	   out.print("<td> "+ maisondao.getMaisonById(v.getCodeMaison()).getNomMaison()+ " </td>");
                                    	   out.print("<td> "+ marquedao.getMarqueById(v.getCodeMarque()).getNomMarque()+ " </td>");
                                    	   out.print("<td> "+ modeledao.getModeleById(v.getCodeModele()).getNomModele()+ " </td>");
                                    	  
                                    	   
                                    	 
                                    	   
                                    	   out.print("<td> <a href ='ModifierVoiture.jsp?code="+v.getIdvoiture()+"'><i class ='fa fa-pencil'></i></a></td>");
                                    	   out.print("<td> <a href ='DeleteVoiture?code="+v.getIdvoiture()+"' ><i class='fa fa-minus-circle'></i></a> </td>");
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
