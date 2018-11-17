<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MangaKick!</title>
<link rel="stylesheet" href="css/bootstrap1.min.css">
<script type="text/javascript" src="js/jquery1.min.js"></script>
<script type="text/javascript" src="js/bootstrap1.min.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style type="text/css">
.hyp {
	width: 200px;
	height: 50px;
	word-wrap: break-word;
}

a:link {
	text-decoration: none;
	color: #9d9d9d
}

a:visited {
	text-decoration: none;
	color: #9d9d9d
}

a:hover {
	text-decoration: none;
	color: #9d9d9d;
}
</style>
</head>
<body style="background-color: #222">
	<%--  <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	 if(session.getAttribute("userData")==null){
	  response.sendRedirect("Start.jsp");}%> --%>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">MangaKick!</a>
		</div>
	</div>
	</nav>
	<div class="row">
		<div class="col-md-12"
			style="display: flex; justify-content: center; align-items: center;">
			<ul style="list-style: none;">
				<li><a href="index.jsp"><div class="hyp">
							<span class="glyphicon glyphicon-user"></span> Sign Up
						</div></a></li>
				<li><a href="login.jsp"><div class="hyp">
							<span class="glyphicon glyphicon-log-in"></span> Login
						</div></a></li>
			</ul>
		</div>
	</div>
</body>
</html>