<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/style.css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<title>Menu</title>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <a class="navbar-brand" href="#">Menu</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        
        
            <li class="nav-item active">
            
                <a class="nav-link" href="listemp">Liste des employees  <span class="sr-only">(current)</span></a>
            </li>
            
            
            <li class="nav-item">
                    <a class="nav-link" href="addemployee">Ajouter employee</a>
                </li>
                
                <!--<c:if test=" "> roleName=Admin  </c:if>-->
                <li class="nav-item">
                    <a class="nav-link" href="addUser">Ajouter des users</a>
                </li>

                
                <li class="nav-item">
                <a class="nav-link" href="logout">se déconnecter</a>
                </li>
           
        </ul>
    </div>
</nav>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>