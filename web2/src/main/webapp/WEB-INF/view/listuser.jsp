<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listUser</title>
</head>
<body>
  <div class="container">
<h3 class="text-center">Liste des users</h3>
         <hr>
              <br>
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
        	<th>Role name</th>
        	<th>Action</th>
      
        	
        	</tr>
        	</thead>
        <tbody>
     <c:forEach items="${users}" var="u">
     	<tr>
		     <td>${u.idUser}</td>
		     <td>${u.email}</td>
		     <td>${u.password}</td>
		     <td>${u.first_name}</td>
		     <td>${u.last_name}</td>
		     <td>${u.dateCreation}</td>
		     <td>${u.RoleName}</td>
		     <td><a class="btn btn-primary" href="edit?id=<c:out value='${e.empId}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-danger " onclick="return confirm('Are you sure you want to delete this item?');" href="delete?id=<c:out value='${e.empId}' />">Delete</a>
					    
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