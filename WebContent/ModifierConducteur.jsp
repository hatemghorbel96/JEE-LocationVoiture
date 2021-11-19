<%@page import="dao.ConducteurDAO"%>
<%@page import="entities.Conducteur"%>
<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier conducteur
                        </h1>
						<ol class="breadcrumb">
					 <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="Conducteurs.jsp">List Conducteurs</a></li>
					   <li><a href="ModifierConducteur.jsp">Modifier Conducteur</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
     
     <% if (request.getParameter("code") != null)
    	 {
    	 ConducteurDAO conducteurdao = new ConducteurDAO();
    	 Conducteur c =new Conducteur();
    	 c = conducteurdao.getConducteurById(Integer.parseInt(request.getParameter("code")));
    	  %>
    	
                                    <form class="form-horizontal" action="ModifierConducteur" method="post">
                                    <input type="hidden" name ="codeConducteur"  value ="<% out.print(c.getCodeConducteur()); %>">
                                        <div class="form-group">
                                            <label  class="col-sm-2 control-label">prenom nom conducteur</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getPrenomnomconducteur()); %>" name="prenomnomconducteur"id="prenomnomconducteur" placeholder="prenomnomconducteur">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">date Naissance</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getDatenaissance()); %>" name="datenaissance"id="datenaissance" placeholder="datenaissance">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Num Permis conduite</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getNumPermisConduite()); %>" name="numPermisConduite"id="numPermisConduite" placeholder="numPermisConduite">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date livraison Permis Conduite</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" value ="<% out.print(c.getDatelivraisonPermisConduite()); %>" name="datelivraisonPermisConduite"id="datelivraisonPermisConduite" placeholder="datelivraisonPermisConduite">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">date fin validité</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" value ="<% out.print(c.getDatefinvalidite()); %>" name="datefinvalidite" id="datefinvalidite" placeholder="datefinvalidite">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">adresse</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getAdresse()); %>" name="adresse" id="adresse" placeholder="adresse">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">tel</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getTel()); %>" name="tel" id="tel" placeholder="tel">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Num cin</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getNumCIN()); %>" name="numCIN" id="numCIN" placeholder="numCIN">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date cin</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" value ="<% out.print(c.getDateCin()); %>" name="dateCin"id="dateCin" placeholder="dateCin">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Mail Conducteur</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getMailConducteur()); %>" name="MailConducteur" id="MailConducteur" placeholder="MailConducteur">
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label  class="col-sm-2 control-label">Date creation Conducteur</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(c.getDatecreationConducteur()); %>" name="datecreationConducteur" id="datecreationConducteur" placeholder="datecreationConducteur">
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
