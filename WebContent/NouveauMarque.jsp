<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Ajoute marque
                        </h1>
						<ol class="breadcrumb">
					 <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="marques.jsp">List Marque</a></li>
					   <li><a href="NouveauMarque.jsp">Ajouter Marque</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
                                    <form class="form-horizontal" action="AjouterMarque" method="post">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Nom du marque</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nomMarque"id="nomMarque" placeholder="nomMarque">
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
