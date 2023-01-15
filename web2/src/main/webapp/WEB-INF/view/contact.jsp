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
 <ul class="navbar-nav flex-row">
                <li class="nav-item me-3 me-lg-0">
                    <a class="nav-link text-dark" href="logout">
                        <span class="d-grid gap-2 d-lg-inline-block">Se déconnecter</span>
                    </a>
                </li>
            </ul>
        
    </header>

<!-- Formulaire de contact -->
<div class="container ">
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