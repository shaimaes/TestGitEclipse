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

<title>Login</title>
</head>
<body>

	<main class="login-form">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-5 text-center">
					<div class="card">
						<div class="card-body">
						<h3>Connexion</h3>
						<br></br>
						
							<form action="login" method="post">
							
								<div class="form-group row">
									<label for="email_address"
										class="col-md-5 col-form-label text-md-right">E-MailAddress</label>
									<div class="col-md-7">
										<input type="text" id="email_address" class="form-control"
											name="email" required autofocus>
									</div>
								</div>

								<div class="form-group row">
									<label for="password"
										class="col-md-5 col-form-label text-md-right">Password</label>
									<div class="col-md-7">
										<input type="password" id="password" class="form-control"
											name="password" required>
									</div>
								</div>
								<br></br>
								<div class="d-flex justify-content-around">
								<button type="submit" class="btn btn-primary text-center" >
										Se connecter</button>
								</div>
										<c:if test="${not empty sessionScope.erreurlogin && sessionScope.erreurlogin == 'Email ou mot de passe incorrect'}">
										    <span style="color: red;">
										        <c:out value="${sessionScope.erreurlogin}"/>
										    </span>
									</c:if>
								
							</form>
						</div>
					</div>
				</div>
			</div>
				</div>
			
	</main>
	<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>