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
			
				
		</form>
</div>
        </body>
</html>