<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undercor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

</head>
<body>
<!-- logout -->
<%
session.invalidate();
response.sendRedirect("home.jsp");
%>

</body>
</html>