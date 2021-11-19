<%@page import="java.util.List"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.ContratDAO"%>
<%@page import="dao.SocieteDAO"%>
<%@page import="dao.ConducteurDAO"%>
<%@page import="entities.Contrat" %>
<% session.setAttribute("page", "users") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>
<% User u = (User) session.getAttribute("user"); 

UserDAO userdao = new UserDAO();
SocieteDAO societedao= new SocieteDAO();
ConducteurDAO conducteurdao=new ConducteurDAO();

%>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Gestion contrat 
                        </h1>
						<ol class="breadcrumb">
					 <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Contrats.jsp">List Contrats</a></li>
					 
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     	<div class="row">
                <div class="col-md-19">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Listes contrats<br><br>
                              <a href="NouveauContrat.jsp"> <button type="submit" class="btn btn-primary">Ajouter</button></a>
                        </div>
                        <% ContratDAO contratdao = new ContratDAO();
                        List<Contrat> contrats = contratdao.getAllContrats();%>
                        <div class="panel-body">
                            <div class="table-responsive" style="overflow-x:hidden">
                                <table class="table table-striped table-bordered table-hover text-center" id="dataTables-example">
                                    <thead class="text-center">
                                        <tr >
                                            
                                            <th class="bg-primary"><div class="text-center">Date Contrat</div> </th>
                                            <th class="bg-primary"><div class="text-center">Nom Societe</div> </th>
                                             <th class="bg-primary"><div class="text-center">Conducteur 1</div> </th>
                                            <th class="bg-primary"><div class="text-center">Conducteur 2</div> </th>
                                            <th class="bg-primary"><div class="text-center">Debut location</div> </th>
                                             <th class="bg-primary"><div class="text-center">Fin location</div> </th>
                                            <th class="bg-primary"><div class="text-center">Prix Unitaire Jour</div> </th>
                                            <th class="bg-primary"><div class="text-center">Prix total</div> </th>
                                            <th class="bg-primary"><div class="text-center">Montant Avance</div> </th>
                                            
                                            <th class="bg-primary"><div class="text-center">Date creation Contrat</div> </th>
                                            
                                            <th class="bg-primary"colspan="2" ><div class="text-center">Action</div></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       for(Contrat c:contrats){
                                    	   out.print("<tr> ");
                                    	   
                                    	   out.print("<td> "+ c.getDateContrat()+ " </td>");
                                    	   out.print("<td> "+societedao.getSocieteById(c.getNumSociete()).getNomSociete()+ " </td>");
                                    	   out.print("<td> "+conducteurdao.getConducteurById(c.getCodeCond1()).getPrenomnomconducteur() + " </td>");
                                    	   out.print("<td> "+ conducteurdao.getConducteurById(c.getCodeCond2()).getPrenomnomconducteur()+ " </td>");
                                    	   out.print("<td> "+ c.getDatedebutlocation()+ " </td>");
                                    	   out.print("<td> "+ c.getDatefinlocation()+ " </td>");
                                    	   out.print("<td> "+ c.getPrixUnitaireJour()+ " </td>");
                                    	   out.print("<td> "+ c.getPrixtotal()+ " </td>");
                                    	   out.print("<td> "+ c.getMontantAvance()+ " </td>");
                                    	   
                                    	   out.print("<td> "+ c.getDatecreationContrat()+ " </td>");
                                    	 
                                    	   
                                    	   out.print("<td> <a href ='ModifierContrat.jsp?code="+c.getNumContrat()+"'><i class ='fa fa-pencil'></i></a></td>");
                                    	   out.print("<td> <a href ='DeleteContrat?code="+c.getNumContrat()+"' ><i class='fa fa-minus-circle'></i></a> </td>");
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
                          
                       
                          printPdf = function (pdfUrl) {
                        	  if (!this.printedIframe) {
                        	    this.printedIframe = document.createElement('iframe');
                        	    document.body.appendChild(this.printedIframe);
                        	    this.printedIframe.style.display = 'none';
                        	    this.printedIframe.onload = function() {
                        	      setTimeout(function() {
                        	        this.printedIframe.focus();
                        	        this.printedIframe.contentWindow.print();
                        	      }, 100);
                        	    };
                        	  }
                        	  this.printedIframe.src = pdfUrl;
                        	}
                          
                          </script> 
     </div>
   </div>
