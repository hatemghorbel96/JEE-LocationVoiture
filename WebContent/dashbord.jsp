<%@page import="dao.UserDAO"%>
<%@page import="dao.ConducteurDAO"%>
<%@page import="dao.ContratDAO"%>
<%@page import="dao.SocieteDAO"%>
<%@page import="dao.VoitureDAO"%>

<%@ include file="navbar.jsp" %>
<%@ include file="sidebar.jsp" %>
<%@ include file="scripts.jsp" %>
<%@ include file="styles.jsp" %>
<% session.setAttribute("page", "dashbord") ;%>
<div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            <small>Bienvenue <%out.print(session.getAttribute("nom")); 
                            User u =(User) session.getAttribute("user");%></small>
                        </h1>
             <%if(u.isAdmin()){%>           
						<ol class="breadcrumb">
					  <li><a href="#">Acceuil</a></li>
					  
					  
					</ol> 
									
		</div>
     <div id="page-inner">
     <div class="row">
                    <div class="col-md-5 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%UserDAO userdao = new UserDAO();
								out.print(userdao.getAllUsers().size());%></h3>
								<small>Utilisateurs</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-users fa-5x red"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
                    
                     <div class="col-md-5 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%ConducteurDAO conducteurdao = new ConducteurDAO();
								out.print(conducteurdao.getAllConducteurs().size());%></h3>
								<small>Conducteurs</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-id-card fa-5x red"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
					
					
					 <div class="col-md-5 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%SocieteDAO societedao = new SocieteDAO();
								out.print(societedao.getAllSocietes().size());%></h3>
								<small>Societes</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-building fa-5x red"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
                    
                    
                     <div class="col-md-5 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%ContratDAO contratdao = new ContratDAO();
								out.print(contratdao.getAllContrats().size());%></h3>
								<small>Contrats</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-pen-nib fa-5x red"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
                    
                     <div class="col-md-5 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%VoitureDAO voituredao = new VoitureDAO();
								out.print(voituredao.getAllVoitures().size());%></h3>
								<small>voitures</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-car fa-5x red"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
                    
                    
					
                    </div>
                    
                    
                    
     </div>
     
     
     <%
             }
											 
											 %>
   </div>
<%@ include file="scripts.jsp" %>
