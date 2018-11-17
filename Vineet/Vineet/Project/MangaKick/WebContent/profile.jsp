<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Register"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix:"c" %> --%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>User Profile</title>
<!-- <style type="text/css">
      .hyp{ width: 200px; height: 50px; word-wrap: break-word; }
      a:link{ text-decoration: none; color: #9d9d9d }
      a:visited{ text-decoration: none; color: #9d9d9d }
      a:hover{ text-decoration: none; color: #9d9d9d; }

    </style> -->

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="Vineet Jacob David">


<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="css/bootstrap1.min.css">
<script type="text/javascript" src="js/jquery1.min.js"></script>
<script type="text/javascript" src="js/bootstrap1.min.js"></script>
</head>
<body style="background-color: #222">
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("name") == null) {
			response.sendRedirect("Start.jsp");
		}
	%>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="main.jsp">MangaKick!</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="main.jsp">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Manga <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="op.jsp">One Piece</a></li>
					<li><a href="naruto.jsp">Naruto</a></li>
					<li><a href="bleach.jsp">Bleach</a></li>
					<li><a href="fmab.jsp">FullMetal Alchemist</a></li>
					<li><a href="berserk.jsp">Berserk</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="profile.jsp"><%=session.getAttribute("name")%></a></li>
			<li><a href="logout.jsp"><span
					class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</ul>
	</div>
	</nav>
	<div class="row">
		<div class="col-md-12"
			style="display: flex; justify-content: center; align-items: center;">
			<table style="color: #9d9d9d">
				<tr>
					<td><h4>Name:</h4></td>
					<td><h4>
							<%=session.getAttribute("name")%>
						</h4></td>
				</tr>
				<tr>
					<td><h4>Email:</h4></td>
					<td><%=session.getAttribute("name")%></td>
				</tr>
				<tr>
					<td><h4>Password:</h4></td>
					<td><%=session.getAttribute("name")%></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>