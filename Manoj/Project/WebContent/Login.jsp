<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Register</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<!-- <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	<link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
<script type="text/javascript">
	function Validate() {
		var password = document.getElementById("password").value;
		var confirmPassword = document.getElementById("confirm_password").value;
		if (password != confirmPassword) {
			alert("Passwords don't match! Try again.");
			return false;
		}
		return true;
	}
</script>
<nav class="myNav navbar navbar-expand-lg navbar-dark bg-primary">
	 <!--   <a class="navbar-brand" href="signup.html">Login</a>   
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	-->
	  	<div class="navbar-nav">
	      <a class="nav-item nav-link" href="Register.jsp">Register<span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link active" href="login.jsp">Login</a>
	    
	    </div>
	</nav>
		<div class="row">
		<div class="container">
			<form action="LoginServlet" class="col-sm-6 offset-sm-3">
			  <div class="form-group">
			   <b> <label for="exampleInputEmail1">Username</label></b>
			    <input type="text" class="form-control"name="uno" id="exampleInputUsnml1" aria-describedby="emailHelp" placeholder="Enter username" required="">
			  </div>
			   <div class="form-group">
			    <b><label for="exampleInputPassword1">Password</label></b>
			    <input type="password" class="form-control" name="pass" id="exampleInputPassword1" placeholder="Enter password" onsubmit="" required="">
			   <!--    <span class="psw">Forgot <a href="#">password?</a></span>
			  </div>-->

			  <div class="form-group">
			    <div class="form-check">
			      <p>Forgot Password? <a class="login_ref" href="Logout.jsp" id="checkuser">Click Here!</a></p>
			    </div>
			      </div>
			     
     <button type="submit" class="btn btn-primary">Login</button>

			

			</form>		
		</div>
	</div>
</body>
</html>