<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste users</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
        
        <table>
        	<thead>
        	<tr>
        	<td>Id User</td>
        	<td>First name</td>
        	<td>Last name</td>
        	<td>Date de création</td>
        	<td>Role name</td>
        	<td>Role name</td>
        	
        	</tr>
        	</thead>
        <tbody>
     <c:forEach items="${users}" var="user">
     	<tr>
		     <td>${u.idUser}</td>
		     <td>${u.email}</td>
		     <td>${u.password}</td>
		     <td>${u.first_name}</td>
		     <td>${u.last_name}</td>
		     <td>${u.dateCreation}</td>
		     <td>${u.RoleName}</td>
    	 </tr>
     </c:forEach>
       
       
        </tbody>
        </table>
        </nav>
</body>
</html>