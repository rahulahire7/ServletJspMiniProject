<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All records</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<c:if test="${requestScope.display !=null and
 not empty requestScope.display}">
 <h1 style="text-align:center;" class="text-primary">All Users</h1><br>
<table border=2 class="table" style="text-align:center;">
	<tr class="danger">
		<td>R NO</td>
		<td>User Name</td>
		<td>Password</td>
		<td>Balance</td>
		
	</tr>
	<c:forEach items="${requestScope.display}" var="e"> 		
	<tr class="success">
		<td>${e.rno}</td>
		<td>${e.fname}</td>
		<td>${e.pass}</td>
		<td>${e.bal}</td>
		
	</tr>
	</c:forEach>
</table></c:if>
</body>
</html>