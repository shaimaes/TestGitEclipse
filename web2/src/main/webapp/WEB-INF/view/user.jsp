<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	
<title>Liste users</title>
</head>
<body>
    
     <header class="navbar navbar-expand-md navbar-dark bg-light">
			
			        <!-- barre de navigation -->
			
			        <div class="container-fluid justify-content-center justify-content-md-between">
			            <div class="d-flex my-2 my-sm-0">
			                <ul class="navbar-nav">
	                        <li><a href="listemp" class="nav-link text-dark">Liste des employées</a></li>
	                    </ul>
	                    
	                    <ul class="navbar-nav">
	                        <li><a href="affchUser" class="nav-link text-dark">Liste des utilisateurs</a></li>
	                    </ul>
	                    
			            </div>

			            <ul class="navbar-nav flex-row">
			                <li class="nav-item me-3 me-lg-0">
			                    <a class="nav-link text-dark" href="logout">
			                        <span class="d-grid gap-2 d-lg-inline-block">Se déconnecter</span>
			                    </a>
			                </li>
			            </ul>
			        </div>
			    </header>


<!-- Formulaire -->
	 <div class="container mt-3 ">
        <div class="card">
        <div class="card-body">
		<form action="userSave" method="post">
		
			<div class="form-group">
				<label for="email">Email</label> 
				<input type="text" 	class="form-control" name="email" id="email"	placeholder="Entrez votre email" required>
			</div>
			
			<div class="form-group">
				<label for="email">Password</label> 
				<input type="text" 	class="form-control" name="password" id="password"	placeholder="Entrez votre mot de passe" required>
			</div>
			
			<div class="form-group">
				<label for="first_name">First Name</label> 
				<input type="text"	class="form-control" name="first_name" id="first_name" placeholder="Entrez votre prénom" required>
			</div>
			
			<div class="form-group">
				<label for="last_name">Last Name</label> 
				<input type="text"	class="form-control" name="last_name" id="last_name" placeholder="Entrez votre nom" required>
			</div>
			
			<div class="form-group">
				<label for="dateCreation">Date de création (yyyy-mm-dd)</label> 
				<input type="text" class="form-control" name="dateCreation" id="dateCreation" placeholder="Entrez la date de création" required>
			</div>
			
			<div class="form-group">
                        <label for="roleName">Role Name</label>
                        <select class="form-control" name="roleName" id="roleName" required>
                            <option>Admin</option>
                            <option>User</option>
                        </select>
                    </div>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</form>
</div>
</div>
	</div>
</body>
</html>