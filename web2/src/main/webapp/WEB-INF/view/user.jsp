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
<!-- 
<header>
                 
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: grey">

            <ul class="navbar-nav">
                <li><a href="listemp" class="nav-link">List Employees</a></li>
            </ul>
            <ul class="navbar-nav">
                <li><a href="logout" class="nav-link"> Se déconnecter</a></li>
            </ul>
        </nav>
    </header> -->
    
     <header class="navbar navbar-expand-md navbar-dark bg-light">

        <!-- barre de navigation -->

        <div class="container-fluid justify-content-center justify-content-md-between">
            <div class="d-flex my-2 my-sm-0">
                <a class="navbar-brand me-2 mb-1 d-flex justify-content-center ">
                    <img src="logo-site.png" height="40" alt="logo" loading="lazy">
                </a>
            </div>
            <ul class="navbar-nav flex-row ">
                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link text-center text-dark" href="listemp">
                        <span class="">Liste des Employées</span>
                    </a>
            </ul>
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
	 <div class="container ">
        <div class="card-body">
		<form action="userSave" method="post">
		
			<div class="form-group">
				<label for="email">Email</label> 
				<input type="text" 	class="form-control" name="email" id="email"	placeholder="Entrez votre email">
			</div>
			
			<div class="form-group">
				<label for="email">Password</label> 
				<input type="text" 	class="form-control" name="password" id="password"	placeholder="Entrez votre mot de passe">
			</div>
			
			<div class="form-group">
				<label for="first_name">First Name</label> 
				<input type="text"	class="form-control" name="first_name" id="first_name" placeholder="Entrez votre prénom">
			</div>
			<div class="form-group">
				<label for="last_name">Last Name</label> 
				<input type="text"	class="form-control" name="last_name" id="last_name" placeholder="Entrez votre nom">
			</div>
			<div class="form-group">
				<label for="dateCreation">Date de création</label> 
				<input type="text" class="form-control" name="dateCreation" id="dateCreation" placeholder="Entrez la date de création">
			</div>
			<div class="form-group">
				<label for="roleName">Role Name</label> 
				<input type="text" class="form-control" name="roleName" id="roleName" placeholder="Entrez le role name">
			</div>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</form>
</div>


	</div>
</body>
</html>