<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Ajoute Societe
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="societes.jsp">List societes</a></li>
					  <li><a href="NouveauSociete.jsp">Ajout societe</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
                                    <form class="form-horizontal" action="AjouterSociete" method="post">
                                       
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Nom Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nomSociete"id="nomSociete" placeholder="NomSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Personne Physique</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="personnePhysique"id="personnePhysique" placeholder="PersonnePhysique">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Adresse Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="adresseSociete"id="adresseSociete" placeholder="AdresseSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">telephone Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="telSociete"id="telSociete" placeholder="telSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Mail Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="mailSociete"id="mailSociete" placeholder="MailSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">date creation Societe</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datecreationSociete"id="datecreationSociete" placeholder="datecreationSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Prenomnom Représentant Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="prenomnomRepresentantSociete"id="prenomnomRepresentantSociete" placeholder="PrenomnomReprésentantSociete">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">telephone Représentant Societe</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="telRepresentantSociete"id="telRepresentantSociete" placeholder="telReprésentantSociete">
                                            </div>
                                        </div>
                                        
                                         
                                        </div>
                                     
                                       
                                      
  
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-success">Enregistrer</button>
                                                <button type="cancel" class="btn btn-danger">Annuler</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
     </div>
   </div>
<%@ include file="scripts.jsp" %>
