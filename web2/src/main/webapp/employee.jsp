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

 <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: grey">

                    <ul class="navbar-nav">
                        <li><a href="listemp" class="nav-link">List Employees</a></li>
                    </ul>
                    <ul class="navbar-nav">
                        <li><a href="logout" class="nav-link"> Se déconnecter</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            
	<div class="container">
		
		<form action="save" method="post">
		
			<div class="form-group">
				<label for="firstName">First Name</label> 
				<input type="text"	class="form-control" name="firstName" placeholder="Entrez votre prénom">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> 
				<input type="text"	class="form-control" name="lastName"  placeholder="Entrez votre nom">
			</div>
			
			<div class="form-group">
				<label for="startDate">Date de création</label> 
				<input type="text" class="form-control" name="startDate"  placeholder="Entrez la date de création">
			</div>
			<div class="form-group">
				<label for="title">Titre</label> 
				<input type="text" class="form-control" name="title" placeholder="Entrez votre titre">
			</div>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</form>


	</div>
</body>
</html>