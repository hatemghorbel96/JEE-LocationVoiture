<%@page import="dao.MaisonDAO"%>
<%@page import="entities.Maison"%>
<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier Maison
                        </h1>
						<ol class="breadcrumb">
					   <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="maisons.jsp">List Maisons</a></li>
					   <li><a href="ModifierMaison.jsp">Modifier Maison</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
     
     <% if (request.getParameter("code") != null)
    	 {
    	 MaisonDAO maisondao = new MaisonDAO();
    	 Maison m =new Maison();
    	 m = maisondao.getMaisonById(Integer.parseInt(request.getParameter("code")));
    	  %>
    	
                                    <form class="form-horizontal" action="ModifierMaison" method="post">
                                    <input type="hidden" name ="codeMaison" value ="<% out.print(m.getCodeMaison()); %>">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Nom maison</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(m.getNomMaison()); %>" name="nomMaison"id="nomMaison" placeholder="nomMaison">
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
