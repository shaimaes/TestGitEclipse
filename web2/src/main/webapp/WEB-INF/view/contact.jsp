<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<script src="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.js"></script>  
    
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>



<title>Nous contacter</title>
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
        <h3> Nous contacter </h3>
		<form action="contact" method="post">
		
			<div class="form-group">
				<label for="email">Nom</label> 
				<input type="text" 	class="form-control" name="nom" id="nom"	placeholder="Entrez votre nom" required>
			</div>
			
			<div class="form-group">
				<label for="email">Email</label> 
				<input type="text" 	class="form-control" name="Email" id="Email"	placeholder="Entrez votre email" required>
			</div>
			
			<div class="form-group">
			<label for="email">Descritpion</label>
				<br></br>
				<textarea name="Message" placeholder="Message" rows="7" cols="100" required> Votre message ...</textarea> 
			</div>
			<button type="submit" class="btn btn-primary">Envoyer</button>
			<br></br>
		</form>
</div>
</div>
	</div>
</body>
</html>