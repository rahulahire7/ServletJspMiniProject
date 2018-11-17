<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login sucessfull</title>
<link rel = "stylesheet" href = "css/nav.css">
</head>
<body>
<img src = "Images/pulse.jpg" height = "100" width = "100%">
<nav>
<h1 align = "center">NetMeds</h1>
    <ul align = "center">
    <li><a href="Home.jsp">HOME</a></li>
    <li><a href="Registration.jsp">REGISTRATION</a></li>
    <li><a href="Login.jsp">LOGIN</a></li>
    <li><a href="Contact Us.jsp">CONTACT US</a></li>
     <li><a href="Details.jsp">DISPLAY</a></li>
    </ul>
</nav>
<%! String name; %>
<%
String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
%>

<p textalign = "center"> WELCOME TO NETMEDS </p>
<p textalign = "center"> YOUR PROFILE </p>

<p textalign = "center"> USERNAME  -  <% out.println(name); %> </p>
<p textalign = "center">   EMAIL   -  <% out.println(email); %> </p>
<img src = "Images/Pills.jpg"  width = "100%">

</body>
</html>