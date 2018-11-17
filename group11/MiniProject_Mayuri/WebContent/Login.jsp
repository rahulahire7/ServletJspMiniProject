<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<
meta http-equiv ="Content-Type " content ="text /html; charset =UTF-8 "/> <title>Login Page </title> 
	/* Basics */ 
	html, body {
	padding: 0;
	margin: 0;
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	background: #FFFFFF;
}

.logincontent {
	position: fixed;
	width: 350px;
	height: 300px;
	top: 50%;
	left: 50%;
	margin-top: -150px;
	margin-left: -175px;
	background: #07A8C3;
	padding-top: 10px;
}

.loginheading {
	border-bottom: solid 1px #ECF2F5;
	padding-left: 18px;
	padding-bottom: 10px;
	color: #ffffff;
	font-size: 20px;
	font-weight: bold;
	font-family: sans-serif;
}

label {
	color: #ffffff;
	display: inline-block;
	margin-left: 18px;
	padding-top: 10px;
	font-size: 15px;
}

input[type=text], input[type=password] {
	font-size: 14px;
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 300px;
	height: 35px;
	border: 1px solid #ccc;
	border-radius: 2px;
	box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f5f5;
	font-size: 14px;
}

input[type=checkbox] {
	margin-left: 18px;
	margin-top: 30px;
}

.loginremember {
	background: #ECF2F5;
	height: 70px;
	margin-top: 20px;
}

.check {
	font-family: sans-serif;
	position: relative;
	top: -2px;
	margin-left: 2px;
	padding: 0px;
	font-size: 12px;
	color: #321;
}

.loginbtn {
	float: right;
	margin-right: 20px;
	margin-top: 20px;
	padding: 6px 20px;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	background-color: #07A8C3;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3),
		to(#6EE4E8));
	background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	border-radius: 30px;
	border: 1px solid #07A8C3;
	cursor: pointer;
}

.loginbtn:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	left: -35px;
	content: "✖";
}
</style>
</head>
<body>
	<ul>

		<li><a href="Register.jsp">Register</a></li>
		<li><a href="AboutUs.jsp">About Us</a></li>

	</ul>


	<div class="logincontent">
		<div class="loginheading">Login</div>
		<form action="LoginServlet">
			<label for="UserName"> Username:</label> 
			<input type="text" id="Email" name="email" placeholder="Enter Email" /> 
			<label for="txtPassword"> Password:</label> 
			<input type="password" id="Password" name="pass" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				required>
			<div class="loginremember">
				<input type="checkbox" id="chbRemember" name="chbRemember" /><label
					class="check" for="chbRemember">Remember me next time</label> <input
					type="submit" class="loginbtn" value="Login" id="btnSubmit" />
		</form>
	</div>
	</div>
	</div>



</body>
</html>
