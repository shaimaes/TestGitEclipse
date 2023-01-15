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

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


<title>Login</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/loginStyle.css">

</head>
   <body>

        <div class="main">
            <div class="container">


                <div class="row">
                    <div class="col">

                        <h3 class="mb-0 text-dark">Connexion </h3>
                    </div>
                </div>


                <div class="card-group">
                    <div class="card">
                        <div class="card-body">

                            <div class="row text-center">
                                <div class="col">
                                    <figure>
                                        <img src="img/signup-image.jpg" alt="sing up image">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>

                   

                        <div class="card">
                            <div class="card-body">
								 <form action="login" method="post" class="register-form" id="login-form">


                                 <div class="row text-center">
                                    <div class="col text-center">
                                       <div class="form-group">
					                        <label for="roleName">Role Name</label>
					                        <select class="form-control" name="roleName" id="roleName" required>
					                        	<option>User</option>
					                            <option>Admin</option>
					                        </select>
					                    </div>               
                                        </div>
                                    </div>
                                </div>


                                <div class="row text-center">
                                    <div class="col text-center">

                                        <div class="form-group">
                                            <label for="email_address"
                                                class="col">E-MailAddress</label>
                                            <div class="col">
                                                <input type="email" id="email_address" class="form-control" name="email"
                                                    required autofocus>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                 <div class="row text-center">
                                    <div class="col text-center">

                                        <div class="form-group">
                                            <label for="password"
                                                class="col">Password</label>
                                            <div class="col">
                                                <input type="password" id="password" class="form-control"
                                                    name="password" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                 <div class="row text-center">
                                    <div class="col text-center">

                                        <div class="d-flex justify-content-around">
                                            <button type="submit" class="btn btn-primary text-center">
                                                Se connecter</button>
                                        </div>
                                        <br></br>
                                        <c:if
                                            test="${not empty sessionScope.erreurlogin && sessionScope.erreurlogin == 'Email ou mot de passe incorrect'}">
                                            <span style="color: red;">
                                                <c:out value="${sessionScope.erreurlogin}" />
                                            </span>
                                        </c:if>
                                    </div>
                                </div>
                               
                            </div>
                             
                        </div>
                   
 						</form>



                </div>
            </div>
        </div>

</body>
</html>