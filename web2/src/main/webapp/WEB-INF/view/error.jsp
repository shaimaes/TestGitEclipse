<%@ page import="java.io.*"  isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MESSAGE ERROR</title>
</head>
<body>
<h3> Page Error ! Merci decontacter l'admin</h3>
<h3>StackTrace : <%= exception.getMessage()%></h3>
<p>
	<%
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		
		exception.printStackTrace(pw);
		
		out.println("<strong>");
		out.println(sw);
		out.println("</strong>");
		pw.close();
		sw.close();
	%>
	
	
</p>
</body>
</html>