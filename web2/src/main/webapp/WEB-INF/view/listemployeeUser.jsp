<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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


<title>list employee</title>
</head>
        <body>
     
      <header class="navbar navbar-expand-md navbar-dark bg-light">

        <!-- barre de navigation -->

        <div class="container-fluid justify-content-center justify-content-md-between">
            <div class="d-flex my-2 my-sm-0">
               <ul class="navbar-nav">
                        <li><a href="#" class="nav-link text-dark">CRUD</a></li>
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
              
        <h3 class="text-center">Liste des employées</h3>
         <hr>
          
              <div class="row d-flex justify-content-center">
			<div class="col">
              
            <table class="table table-bordered table-striped  justify-content-center"  data-toggle="table" data-pagination="true"  data-search="true"
            id="table" >
                
			        	<thead>
			        	<tr>
			        	<th>Id User</th>
			        	<th>First name</th>
			        	<th>Last name</th>
			        	<th>Date de création</th>
			        	<th>Titre</th>
			        
			        	
			        	</tr>
			        	</thead>
			        <tbody>
			     <c:forEach items="${employees}" var="e">
			     	<tr>
					     <td>${e.empId}</td>
					     <td>${e.firstName}</td>
					     <td>${e.lastName}</td>
					     <td>${e.startDate}</td>
					     <td>${e.title}</td>
					
					</tr>
			     </c:forEach>
       
			        </tbody>
			        </table>
                </div>
                 </div>
             </div>
            
        </body>

        </html>