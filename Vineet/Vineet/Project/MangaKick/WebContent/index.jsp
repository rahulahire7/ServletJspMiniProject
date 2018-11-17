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

<title>REGISTER</title>

<!--<style type="text/css">
    	.centered-element{
    		position: absolute;
		    left: 40%;
		    top: 50%;
		    margin-top: 100px;
    	}
    </style>-->

<meta name="description" content="">
<meta name="author" content="Vineet Jacob David">

<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     -->
<link rel="stylesheet" href="css/bootstrap1.min.css">
<script type="text/javascript" src="js/jquery1.min.js"></script>
<script type="text/javascript" src="js/bootstrap1.min.js"></script>

<script type="text/javascript">
    	function validateForm(){
    		var name=document.getElementById("inputName").value();
    		var email=document.getElementById("inputEmail1").value();
    		var pwd1=document.getElementById("inputPassword1").value();
    		var pwd2=document.getElementById("inputPassword2").value();

    		var ai=email.lastIndexOf("@");
    		var d1=email.lastIndexOf(".");

    		if(!isNaN(name))
			{
				alert("Name should have only characters.");	    
	    		return false;
    		}

    		if(ai==0||di==0)
		 	{
		  		alert("Enter a valid   email address");
		  		return false;
		  	}
		 	
		 	if((di-ai)<=3 || di>=eid1)
          	{ 
          		alert("Enter a valid email id");
             	return false;
          	}

          	if(pwd2 == pwd1)
          	{
          		return true;
          	}
          	else{
          		alert("Passwords dont match");
          		return false;
        }
         }
    </script>

</head>
<body style="background-color: #222;">
	<%-- <%! Register r; %>
  <% if(request.getSession(false)==null)
	  response.sendRedirect("Start.jsp");%>
  <% r=(Register)session.getAttribute("userData"); %> --%>
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
				<li><a href="index.jsp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="row"
		style="display: flex; justify-content: center; align-items: center;">
		<div class="col-md-4" style="color: #9d9d9d;">
			<form role="form" method="post" action="RegistrationServlet"
				onsubmit="validateForm()">
				<div class="form-group">
					<label for="inputName"> Name </label> <input type="text"
						class="form-control" name="inputName" id="inputName"
						pattern="[A-za-z]" title="Name must consist only of alphabets.">
				</div>
				<div class="form-group">

					<label for="InputEmail1"> Email address </label> <input
						type="email" class="form-control" id="inputEmail1"
						name="inputEmail1"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
						title="Email must be of proper format">
				</div>
				<div class="form-group">

					<label for="InputPassword1"> Password </label> <input
						type="password" class="form-control" id="inputPassword1"
						name="inputPassword1"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
				</div>
				<div class="form-group">

					<label for="InputPassword2"> Re-Password </label> <input
						type="password" class="form-control" id="inputPassword2"
						name="inputPassword2"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
				</div>
				<!--<div class="form-group">
					 
					<label for="exampleInputFile">
						File input
					</label>
					<input type="file" class="form-control-file" id="exampleInputFile">
					<p class="help-block">
						Example block-level help text here.
					</p>
				</div>
				<div class="checkbox">
					 
					<label>
						<input type="checkbox"> Check me out
					</label>
				</div>-->
				<br>
				<button type="submit" class="btn btn-primary btn-block">
					Submit</button>
				<br>
				<h6 style="text-align: center;">
					Already a member? <a href="login.jsp">Login</a>
				</h6>
			</form>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>