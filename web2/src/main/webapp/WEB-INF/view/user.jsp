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
	<div class="container">
		
		<form action="userSave" method="post">
		
			<div class="form-group">
				<label for="email">Email</label> 
				<input type="text" 	class="form-control" name="email" id="email"	placeholder="Entrez votre email">
			</div>
			
			<div class="form-group">
				<label for="email">Password</label> 
				<input type="text" 	class="form-control" name="password" id="password"	placeholder="Entrez votre email">
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
</body>
</html>