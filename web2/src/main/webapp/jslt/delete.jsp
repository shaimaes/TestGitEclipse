<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<title>Delete</title>
</head>
<body>
<div class="container">

        <h3 class="text-center">Edit Employees</h3>
         <hr>
              <br>
              
              	<p>Are you sure you want to delete these Records?</p>
					<p class="text-warning"><small>This action cannot be undone.</small></p>
						
			<form action="listemp" method="post">			
			<button type="submit" class="btn btn-primary" href="listemp" role="button">Annuler</button>
			</form>
                                    
                <form action="delete" method="post">

                 <div class="form-group">
               <a class="btn btn-search btn-dark" style="background: #b78a62" href="listemp" role="button">
                <i class="btn-search"></i>Ok
                                            </a>
                                             </div>
									</form>	
			             </div>
                
										
</body>
</html>