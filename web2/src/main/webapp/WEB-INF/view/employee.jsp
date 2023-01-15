<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	
<title>Ajouter un employee</title>

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
		
		<form action="save" method="post">
		
			<div class="form-group">
				<label for="firstName">First Name</label> 
				<input type="text"	class="form-control" name="firstName" placeholder="Entrez votre prénom" required>
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> 
				<input type="text"	class="form-control" name="lastName"  placeholder="Entrez votre nom" required>
			</div>
			
			<div class="form-group">
				<label for="startDate">Date de création (yyyy-mm-dd)</label> 
				<input type="text" class="form-control" name="startDate"  placeholder="Entrez la date de création" required>
			</div>
			<div class="form-group">
				<label for="title">Titre</label> 
				<input type="text" class="form-control" name="title" placeholder="Entrez votre titre" required>
			</div>
			<button type="submit" class="btn btn-primary">Ajouter</button>
			
		</form>
</div>
</div>
	</div>
</body>
</html>