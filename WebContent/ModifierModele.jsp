<%@page import="dao.ModeleDAO"%>
<%@page import="entities.Modele"%>
<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier Modele
                        </h1>
						<ol class="breadcrumb">
					    <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="modeles.jsp">List Modeles</a></li>
					   <li><a href="ModifierModele.jsp">Modifier Modele</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
     
     <% if (request.getParameter("code") != null)
    	 {
    	 ModeleDAO modeledao = new ModeleDAO();
    	 Modele m =new Modele();
    	 m = modeledao.getModeleById(Integer.parseInt(request.getParameter("code")));
    	  %>
    	
                                    <form class="form-horizontal" action="ModifierModele" method="post">
                                    <input type="hidden" name ="codeModele" value ="<% out.print(m.getCodeModele()); %>">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Nom du modele</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(m.getNomModele()); %>" name="nomModele"id="nomModele" placeholder="nomModele">
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
