<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All Data</title>
<link href="css/bulma/css/bulma.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>
<section class="hero is-light is-fullheight">
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        Displaying All the Data
      </h1>
      <h2 class="subtitle ">
        <c:if test="${requestScope.usrLst !=null and not empty requestScope.usrLst}">
 <h1 style="padding-left: 300px;">All Users</h1><br>
<table class="table is-fullwidth">
	<tr>
		<td>First Name</td>
		<td>Organisation</td>
		<td>Email</td>
		<td>Contact</td>
		<td>Username</td>
		<td>Password</td>
		
	</tr>
	<c:forEach items="${requestScope.usrLst}" var="e"> 		
	<tr>
		<td>${e.name}</td>
		<td>${e.org}</td>
		<td>${e.email}</td>
		<td>${e.mob}</td>
		<td>${e.usnm}</td>
		<td>${e.pass}</td>
</tr>
	</c:forEach>
</table></c:if>
      </h2>
    </div>
  </div>


</body>
</html>