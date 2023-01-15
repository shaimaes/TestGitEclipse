<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nous contacter</title>
</head>
<body>
<header class="navbar navbar-expand-md navbar-dark bg-light">
 <ul class="navbar-nav flex-row">
                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link text-dark" href="logout">
                        <span class="d-grid gap-2 d-lg-inline-block">Se déconnecter</span>
                    </a>
                </li>
            </ul>
        
    </header>

<!-- Formulaire de contact -->
<div class="container mt-3 ">
        <div class="card">
        <div class="card-body">
	<h1> Nous contacter </h1>
	
	<form action="https://formsubmit.co/your@email.com" method="POST">
		<input type="text" name="name" placeholder="Nom" required>
		<input type="text" name="email" placeholder="Email" required>
		<textarea name="Message" placeholder="Message"></textarea>
		<button type="submit">Envoyer</button>
	</form>
</div>
</div>
</div>

</body>
</html>