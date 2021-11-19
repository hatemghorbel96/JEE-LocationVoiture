<%@page import="dao.SocieteDAO"%>
<%@page import="entities.Societe"%>
<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier societe
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Acceuil</a></li>
					  <li><a href="#">Modifier societe</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
     
     <% if (request.getParameter("code") != null)
    	 {
    	 SocieteDAO societedao = new SocieteDAO();
    	 Societe s =new Societe();
    	 s = societedao.getSocieteById(Integer.parseInt(request.getParameter("code")));
    	  %>
    	
                                    <form class="form-horizontal" action="ModifierSociete" method="post">
                                    <input type="hidden" name ="numSociete" id="numSociete"value ="<% out.print(s.getNumSociete()); %>">
                                        
                                        
                                        <div class="form-group">
                                            <label  class="col-sm-2 control-label">Nom Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.getNomSociete()); %>" name="nomSociete"id="nomSociete" placeholder="NomSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Personne Physique</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.isPersonne()); %>"name="personnePhysique"id="personnePhysique" placeholder="PersonnePhysique">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Adresse Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.getAdresseSociete()); %>" name="adresseSociete"id="adresseSociete" placeholder="AdresseSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">telephone Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.getTelSociete()); %>" name="telSociete"id="telSociete" placeholder="telSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Mail Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.getMailSociete()); %>" name="mailSociete"id="mailSociete" placeholder="MailSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">date creation Societe</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" value ="<% out.print(s.getDatecreationSociete()); %>" name="datecreationSociete"id="datecreationSociete" placeholder="datecreationSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Prenomnom Représentant Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.getPrenomnomRepresentantSociete()); %>" name="prenomnomRepresentantSociete"id="prenomnomRepresentantSociete" placeholder="PrenomnomReprésentantSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">telephone Représentant Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(s.getTelRepresentantSociete()); %>"name="telRepresentantSociete"id="telRepresentantSociete" placeholder="telReprésentantSociete">
                                            </div>
                                        </div>
                                        
                                         
                                        </div>
                                     
                                    
                                       
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-success">Modifier</button>
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
