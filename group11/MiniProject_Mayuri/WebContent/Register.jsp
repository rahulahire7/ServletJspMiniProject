<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!-- Registration Form for new Users -->
	<div class="container">
		<h2>Registration Form</h2>
		<br>
		<form action="RegistrationServlet" method="post">
			<div class="form-group">


				<label for="rno">Registration Number:</label> <input type="text"class="form-control" id="rno" placeholder="Enter Your Rno"name="rno"><br> 
				<label for="fname">First Name:</label>
				<span class="glyphicon glyphicon-user"></span>
				<input type="text"class="form-control" id="fname" placeholder="Enter First Name" name="fname"><br>
				 <label for="lname">Last Name:</label> <span class="glyphicon glyphicon-user"></span> 
				 <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname"><br> 
				 <label for="email">Email:</label> 
				 <span class="glyphicon glyphicon-envelope"> </span>
				 <input type="email"class="form-control" id="email" placeholder="Enter email"name="email"> <br> <label for="pass">Password:</label>
				<span class="glyphicon glyphicon-eye-close"></span>
				<input type="password" class="form-control" id="pass"placeholder="Enter password" name="pass"> <br> 
				<label for="bal">Mobile No:</label> 
				<span class="glyphicon glyphicon-phone"></span> 
				<input type="text" class="form-control" id="bal" name="bal">
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="remember">Remember me</label>
			</div>
			<input type="submit" class="btn btn-default" value="Submit"></input>
		</form>
	</div>

</body>
</html>
