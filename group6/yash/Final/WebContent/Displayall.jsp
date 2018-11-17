<%@page import="com.model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
	
		body {
		height: 100%;
	
}
	table, td, th {
    border: 1px solid black;
    text-align: center;
}

table {
    border-collapse: collapse;
    width: 50%;
}
	
	</style>
</head>

<body>
<div class="w3-container">
<% String name; %>
          <%
		if(!session.isNew()){
		name = (String)session.getAttribute("uname");
		%>
		<h1 align="center">Welcome <%=name %>!</h1>
		<%
		session.invalidate();
		}
		else{
			response.sendRedirect("Login.jsp");
		}
		%>
<%
        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        
        	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        	
        	response.setHeader("Expires", "0"); //Proxies
        
        %>
<div class="bg" style="padding-left: 220px;">
<c:if test="${requestScope.message !=null}">
	NOTE : ${message}
</c:if>
<c:if test="${requestScope.usrList !=null and
 not empty requestScope.usrList}">
 <h1 style="padding-left: 300px;">All Users</h1><br>
<table> 
	<tr>
		<th>Name</th>
		<th>Course</th>
	</tr>
	<c:forEach items="${requestScope.usrList}" var="e"> 		
	<tr>

		<td>${e.name}</td>
		<td>${e.course}</td>
	</tr>
	</c:forEach>
</table></c:if>
<div class="container">
  <br><br><a href="Homepage.jsp" data-toggle="tooltip" title="Click for Homepage">Homepage</a>
</div>
</div>
</div>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
</body>
</html>