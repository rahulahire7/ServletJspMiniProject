<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<link rel = "stylesheet" href = "css/nav.css">
<body>
<h1 align = "center">NetMeds</h1>
<img src = "Images/pulse.jpg" height= "100" width = "100%">
<nav>
    <ul align = "center">
    <li><a href="Home.jsp">HOME</a></li>
    <li><a href="Registration.jsp">REGISTRATION</a></li>
    <li><a href="Login.jsp">LOGIN</a></li>
    <li><a href="Contact Us.jsp">CONTACT US</a></li>
    <li><a href="Details.jsp">DISPLAY</a></li>
    </ul>
</nav>
</body>
<form action="LoginServlet" method = "post" >
   <table width="50%" align = "center">
   <tr><td><p>USER NAME:</td><td> <input type="text" name="username" required></p></td></tr>
   <tr><td><p>PASSWORD:</td><td> <input type="password" name="password1" required></p></td></tr>
		
   <tr><td></td><td><input type="submit" value="Submit">

  </table>
</form>
<img src = "Images/Pills.jpg"  width = "100%">
</html>