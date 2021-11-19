<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Ajoute conducteur
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Conducteurs.jsp">List Conducteurs</a></li>
					   <li><a href="NouveauConducteur.jsp">Ajouter Conducteur</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
                                    <form class="form-horizontal" action="AjouterConducteur" method="post">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Prenom nom conducteur</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="prenomnomconducteur"id="prenomnomconducteur" placeholder="prenomnomconducteur">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date naissance</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datenaissance"id="datenaissance" placeholder="datenaissance">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Num Permis Conduite</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="numPermisConduite"id="numPermisConduite" placeholder="numPermisConduite">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date livraison Permis Conduite</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datelivraisonPermisConduite"id="datelivraisonPermisConduite" placeholder="datelivraisonPermisConduite">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Date fin validité</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datefinvalidite"id="datefinvalidite" placeholder="datefinvalidite">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Adresse</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="adresse"id="adresse" placeholder="adresse">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Tel</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="tel"id="tel" placeholder="tel">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Num CIN</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="numCIN"id="numCIN" placeholder="numCIN">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date Cin</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="dateCin"id="dateCin" placeholder="dateCin">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Mail Conducteur</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="MailConducteur"id="MailConducteur" placeholder="MailConducteur">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date creation Conducteur</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="datecreationConducteur"id="datecreationConducteur" placeholder="datecreationConducteur">
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
   </div>
<%@ include file="scripts.jsp" %>
