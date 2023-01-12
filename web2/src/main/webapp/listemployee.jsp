<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
      
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

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: grey">

                    <ul class="navbar-nav">
                        <li><a href="employee.jsp" class="nav-link">Add Employees</a></li>
                    </ul>
                    <ul class="navbar-nav">
                        <li><a href="logout" class="nav-link"> Se déconnecter</a></li>
                    </ul>
                </nav>
            </header>
            <br>

     
                <div class="container">
               
        <h3 class="text-center">List of Employees</h3>
         <hr>
              <br>
              <div class="row d-flex justify-content-center">
			<div class="col">
              
            <table class="table table-bordered table-striped  justify-content-center" >
                
			        	<thead>
			        	<tr>
			        	<td>Id User</td>
			        	<td>First name</td>
			        	<td>Last name</td>
			        	<td>Date de création</td>
			        	<td>Titre</td>
			        	<td>Action</td>
			        	
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
					     <td><a href="edit?id=<c:out value='${e.empId}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${e.empId}' />">Delete</a>
					     <input type="hidden" name="empId"  value="${emp.empId }">
					     </td> 
			    	 </tr>
			     </c:forEach>
       
			        </tbody>
			        </table>
                </div>
                 </div>
             </div>
           
            
        </body>

        </html>