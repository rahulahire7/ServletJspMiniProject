<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#ahome
{
	position:absolute;
  top:100px;
  left:5px;
  color:#fff;
  font-weight:bold;
  text-decoration:none;
  display:block-inline;	
  
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<img src="home.png" width="100px" height="100px" class="home">
 <a href="Homee.jsp" id="ahome">Go Home</a>
<div class="loginbox">
    <img src="profile.jpg" id="image"  width="100px" height="100px"> 
    <h1>Login Here</h1><br>

    <form action="LoginServelet" method="post">
    <p>Email</p> <input type="email"  name="email" placeholder="Enter Email Here"/> <br>
    <p>Password</p> <input type="password" name="pass" placeholder="Enter Password"/> <br>
    <input type="submit" value="Login"/>  
    <a href="login.jsp">Forgot Password </a>
     <a href="login.jsp">Don't Have a account </a> <br>

    </form>  
</div>

</body>
</html>