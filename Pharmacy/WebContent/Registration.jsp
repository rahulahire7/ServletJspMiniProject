<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<link rel = "stylesheet" href = "css/nav.css">

<body>
<h1 align = "center">NetMeds</h1>
<img src = "Images/pulse.jpg" height = "100" width = "100%">
<nav>
    <ul>
    <li><a href="Home.jsp">HOME</a></li>  
    <li><a href="Registration.jsp">REGISTRATION</a></li>
    <li><a href="Login.jsp">LOGIN</a></li>   
    <li><a href="Contact Us.jsp">CONTACT US</a></li>
    <li><a href="Details.jsp">DISPLAY</a></li>
    </ul>
</nav>
</body>


<div  class="bcr"> 
<form action = "RegistrationServlet" method = "post">
   <table align = "center"  width = "50%" >
 	
				<tr><td><p>NAME:</td><td> <input type="text" placeholder = "Enter Name" name="name" required></p></td></tr>
				<tr><td><p>USER NAME:</td><td> <input type="text" placeholder = "Enter Username" name="username" required></p></td></tr>
				<tr><td><p>E-MAIL:</td><td> <input type="text" placeholder = "example@domain.com" name="email" required></p></td></tr>
				<tr><td><p>PASSWORD:</td><td> <input type="password" placeholder = "Enter password" name="password1" id="password1" required></p></td></tr>
				<tr><td><p>RE-ENTER PASSWORD:</td><td> <input type="password" placeholder = "confirm password" name="password2" id="password2" required onkeyup="validatePassword()"></p><p id="message"></p></td></tr>	 	
				<tr><td></td><td><input type="submit" value="Submit"><p></p>
				<input TYPE="reset" VALUE="reset"></td></tr>
   </table>
</form>
</div>


<script type="text/javascript">
window.onload = function () {
	document.getElementById("password1").onchange = validatePassword;
	document.getElementById("password2").onchange = validatePassword;
}
function validatePassword(){
var pass2=document.getElementById("password2").value;
var pass1=document.getElementById("password1").value;
if(pass1!=pass2){
	document.getElementById("message").innerHTML = "Password Does not Match";
	}
else
	{
	document.getElementById("message").innerHTML = "Enter submit";
	}
}
</script>
</html>
