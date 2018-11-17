<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>Naruto @ MangaKick!</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="Vineet Jacob David">


<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
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
				<li><a href="profile.jsp"><%=session.getAttribute("name") %></a></li>
				<li><a href="logout.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="row" style="display: flex; justify-content: center;">
		<div class="col-md-4">
			<img src="images/naruto_2.jpg" class="img-responsive">
		</div>
	</div>
	<div class="row"
		style="display: flex; justify-content: center; color: #9d9d9d; padding-top: 20px; padding-bottom: 20px;">
		<div class="col-md-6">
			<p>
			<h4>Naruto (ナルト) is a Japanese manga series written and
				illustrated by Masashi Kishimoto. It tells the story of Naruto
				Uzumaki, an adolescent ninja who searches for recognition from his
				peers and the village and also dreams of becoming the Hokage, the
				leader of his village. The story is in two parts, the first set in
				Naruto's pre-teen years, and the second in his teens. The series is
				based on two one-shot manga by Kishimoto: Karakuri (1995), which
				earned Kishimoto an honorable mention in Shueisha's monthly Hop Step
				Award the following year, and Naruto (1997).</h4>
			</p>
		</div>
	</div>
</body>
</html>