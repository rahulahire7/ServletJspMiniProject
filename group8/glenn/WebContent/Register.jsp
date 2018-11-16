<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page errorPage ="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration Form</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">

<style type="text/css">
body {

    
    padding: 100px;
    padding-left: 100px;
}

</style>

</head>
<body>
<div class="bg" style="margin-top:0px">
	<div class="col-md-6" style="float:center; padding-left:75px; ">
	<form action="RegisterServlet">
	<h5><a href="Home.jsp">Home</a></h5>
	<h1 style="color: black; float:center;">Registration Form</h1>
	<table style="text-align: center;">
			<tr>
				<th>User Name  <i class="far fa-user"></i> : </th>
				<td><input type="text" class="form-control form-rounded" name="uname" maxlength="20" placeholder="Enter User Name" required autofocus="autofocus"></td>
			</tr>
			<tr>
				<th>Email <i class="far fa-envelope-open"></i> : </th>
				<td><input type="email" class="form-control form-rounded" name="email" placeholder="Enter Email" required></td>
			</tr>
			<tr>
				<th>Password  <i class="fas fa-lock-open"></i> : </th>
				<td><input type="password" class="form-control form-rounded" name="pass" minlength="8" maxlength="20" placeholder="Minimum 8 characters" required></td>
			</tr>
			<tr>
				<th>Mobile Number <i class="fas fa-mobile-alt"></i> : </th>
				<td><input type="tel" class="form-control form-rounded" pattern="[789][0-9]{9}" name="number" minlength="10" maxlength="10" placeholder="Enter Mobile number" required></td>
			</tr>
			<tr>
				<th>Gender : </th>
				<td><input type="radio" name="gender" value="male" checked>&nbsp<i class="fas fa-male"></i> Male &nbsp&nbsp
				<input type="radio" name="gender" value="female">&nbsp<i class="fas fa-female"></i> Female</td>
			</tr>
			<tr>
				<th>City <i class="fas fa-city"></i> : </th>
				<td><select class="form-control form-rounded" name="city"required >
					<option value="mumbai">Mumbai</option>
					<option value="delhi">Delhi</option>
					<option value="chennai">Chennai</option>
					<option value="chennai">Kolkata</option>
				</select></td>
			</tr>
			
			<tr>
				<th>Balance : </th>
				<td><input type="number" class="form-control form-rounded" name="balance" placeholder="Minimum 1000" min="1000" max="1500000" step="100" required></td>
			</tr>
	</table>
	<div style="float: center; padding-left:100px">
	<input type="submit" name="submit" class="btn btn-success" style="border-radius: 10px; box-shadow: 0px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<input type="reset" name="reset" class="btn btn-danger" style="border-radius: 10px; box-shadow: 0px;">
		<h6>Already a user? <a href="Login.jsp">Click Here!</a> to login</h6>
		</div>
	</form>	
	
	</div>
</body>
</html>