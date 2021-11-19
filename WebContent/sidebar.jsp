<%if(request.getSession().getAttribute("user")==null)
	response.sendRedirect("Login.jsp?erreur=login");%>s
<%@page import="entities.User"%>
<%@ include file="scripts.jsp" %>
<%@ include file="styles.jsp" %>
<nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a <%  if (session.getAttribute("page").equals("dashbord"))
                        	out.print ("class='active-menu'");%> href="dashbord.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='users.jsp'><i class='fa fa-users'></i> Gestion Utilisateur</a></li> " );
                    }
                    		%>
                  
					
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                    	
                		if (u.isAdmin())
                			out.print("<li><a href='societes.jsp'><i class='fa fa-building'></i>Gestion societe</a></li> " );
                    }
                    		%>
					 
					
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='Conducteurs.jsp'><i class='fa fa-id-card'></i>Gestion conducteurs</a></li> " );
                    }
                    		%>
                    		
                    		
                   
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='Contrats.jsp'><i class='fa fa-pen-nib'></i>Gestion contrat</a></li> " );
                    }
                    		%>
                    		
                    		
                  
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='Voitures.jsp'><i class='fa fa-car-side'></i>Gestion voiture</a></li> " );
                    }
                    		%>
                   
                 
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='marques.jsp'><i class='fa fa-book-reader'></i>Gestion marque</a></li> " );
                    }
                    		%>
                    		
                
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='modeles.jsp'><i class='fa fa-chalkboard-teacher'></i>Gestion modele</a></li> " );
                    }
                    		%>
                    		
                 
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (u.isAdmin())
                			out.print("<li><a href='maisons.jsp'><i class='fa fa-warehouse'></i>Gestion maison</a></li> " );
                    }
                    		%>
                    		
                 	
                    		
                  
                  
					
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                    	
                		if (!u.isAdmin())
                			out.print("<li><a href='societes.jsp'><i class='fa fa-building'></i>Gestion societe</a></li> " );
                    }
                    		%>
					 
					
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (!u.isAdmin())
                			out.print("<li><a href='Conducteurs.jsp'><i class='fa fa-id-card'></i>Gestion conducteurs</a></li> " );
                    }
                    		%>
                    		
                    		
                   
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (!u.isAdmin())
                			out.print("<li><a href='Contrats.jsp'><i class='fa fa-pen-nib'></i>Gestion contrat</a></li> " );
                    }
                    		%>
                    		
                    		
                  
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (!u.isAdmin())
                			out.print("<li><a href='Voitures.jsp'><i class='fa fa-car-side'></i>Gestion voiture</a></li> " );
                    }
                    		%>
                   
                 
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (!u.isAdmin())
                			out.print("<li><a href='marques.jsp'><i class='fa fa-book-reader'></i>Gestion marque</a></li> " );
                    }
                    		%>
                    		
                
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (!u.isAdmin())
                			out.print("<li><a href='modeles.jsp'><i class='fa fa-chalkboard-teacher'></i>Gestion modele</a></li> " );
                    }
                    		%>
                    		
                 
                    <% if(request.getSession().getAttribute("user") != null){
                    	User u = (User) request.getSession().getAttribute("user");
                		if (!u.isAdmin())
                			out.print("<li><a href='maisons.jsp'><i class='fa fa-warehouse'></i>Gestion maison</a></li> " );
                    }
                    		%>
                    		
                    	
                </ul>
            </div>
        </nav>
       