<%@page import="dao.MarqueDAO"%>
<%@page import="entities.Marque"%>
<% session.setAttribute("page", "dashbord") ;%>
<%@ include file="styles.jsp" %>
<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
  <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Modifier Marque
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="dashbord.jsp">Acceuil</a></li>
					  <li><a href="marques.jsp">List Marque</a></li>
					   <li><a href="ModifierMarque.jsp">Modifier Marque</a></li>
					 
					</ol> 
									
		</div>
     <div id="page-inner">
     
     <div class="panel-body">
     
     <% if (request.getParameter("code") != null)
    	 {
    	 MarqueDAO marquedao = new MarqueDAO();
    	 Marque m =new Marque();
    	 m = marquedao.getMarqueById(Integer.parseInt(request.getParameter("code")));
    	  %>
    	
                                    <form class="form-horizontal" action="ModifierMarque" method="post">
                                    <input type="hidden" name ="codeMarque" value ="<% out.print(m.getCodeMarque()); %>">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Nom du marque</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" value ="<% out.print(m.getNomMarque()); %>" name="nomMarque"id="nomMarque" placeholder="nomMarque">
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
