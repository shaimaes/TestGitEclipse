<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<title>Editer</title>
</head>
<body>

 <header class="navbar navbar-expand-md navbar-dark bg-light">
			
			        <!-- barre de navigation -->
			
			        <div class="container-fluid justify-content-center justify-content-md-between">
			            <div class="d-flex my-2 my-sm-0">
			                <ul class="navbar-nav">
                        <li><a href="addemployee" class="nav-link text-dark">Ajouter des employées</a></li>
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



<div class="container">

        <h3 class="text-center">Edit Employees</h3>
         <hr>
              <br>
                <form action="edit" method="post">
		
			<div class="form-group">
				<label for="firstName">First Name</label> 
				<input type="text"	class="form-control" name="firstName" placeholder="Entrez votre prénom" value="${emp.firstName}">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> 
				<input type="text"	class="form-control" name="lastName"  placeholder="Entrez votre nom"value="${emp.lastName}">
			</div>
			
			<div class="form-group">
				<label for="startDate">Date de création</label> 
				<input type="text" class="form-control" name="startDate"  placeholder="Entrez la date de création"value="${emp.startDate}">
			</div>
			<div class="form-group">
				<label for="title">Titre</label> 
				<input type="text" class="form-control" name="title" placeholder="Entrez votre titre"value="${emp.title}">
			</div>
			<input type="hidden" name="empId" value="${emp.empId }">
			
			<button type="submit" class="btn btn-primary">Editer</button>
			<br></br>
			
				
		</form>
</div>
        </body>
</html>