<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Register"%>
<!DOCTYPE html>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix:"c" %> --%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MangaKick!</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="Vineet Jacob David">


<!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script> -->
<link rel="stylesheet" href="css/bootstrap1.min.css">
<script type="text/javascript" src="js/jquery1.min.js"></script>
<script type="text/javascript" src="js/bootstrap1.min.js"></script>
</head>
<body style="background-color: #222">
	<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	 if(session.getAttribute("name")==null){
	  response.sendRedirect("Start.jsp");}%>
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
				<li><a href="profile.jsp"> <%=session.getAttribute("name") %></a></li>
				<li><a href="logout.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="row">
		<div class="col-md-4" style="padding-left: 20px;">
			<a href="op.jsp"><img src="images/one_piece_2.jpg"
				class="img-responsive" alt="One Piece"></a>
		</div>
		<div class="col-md-4">
			<a href="naruto.jsp"><img src="images/naruto_1.jpg"
				class="img-responsive" alt="Naruto"></a>
		</div>
		<div class="col-md-4"
			style="padding-right: 20px; display: flex; justify-content: center;">
			<a href="bleach.jsp"><img src="images/bleach_1.jpg"
				class="img-responsive" alt="Bleach"></a>
		</div>
	</div>
	<br>
	<div class="row" style="padding-bottom: 20px;">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<a href="fmab.jsp"><img src="images/fmab_1.jpg"
				class="img-responsive" alt="FullMetal Alchemist"></a>
		</div>
		<div class="col-md-4">
			<a href="berserk.jsp"><img src="images/berserk_1.jpg"
				class="img-responsive" alt="Berserk"></a>
		</div>
		<div class="col-md-2"></div>
	</div>

</body>
</html>