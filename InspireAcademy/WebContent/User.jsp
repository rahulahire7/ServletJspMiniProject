<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged in</title>
</head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  background-img : url('images/university-105709_1920.jpg');
  
}

.topnav {
  overflow: hidden;
  background-color: orange;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: orange;
  color: white;
}

.heading
{
color: white;
 }

</style>
<body>
<h1 class= "heading" align = "center"> Inspire Academy </h1>

<div class="topnav">
  <a  href="home.jsp">Home</a>
  <a href="Register.jsp">Register</a>
  <a href="Login.jsp">Login</a>
  <a href="Details.jsp">Details</a>
  <a href="About us">About</a>
</div>


<%
String s1 = (String)session.getAttribute("u1"); 
%>

<h1 class ="heading" align = "center">welcome <% out.println(s1); %></h1>
<img src = "images/university-105709_1920.jpg" width = "100%">
</body>
</html>