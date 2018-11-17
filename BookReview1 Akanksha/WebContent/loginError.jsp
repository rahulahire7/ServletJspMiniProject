<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undecor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<style>

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    background-color:BLACK;
	
    overflow: hidden;
}

li {
    float: left;	
}

li a, .dropbtn {
    display: inline-block;
    color: WHITE;
    text-align: center;
    padding: 14px 16px;   
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: GREEN;	    
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:BLACK;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba (0,0,0,0.2);
}

.dropdown-content a {
    color: WHITE;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: CENTER;
}

.dropdown-content a:hover {background-color: GREEN}

.dropdown:hover .dropdown-content {
    display: block;
}

</style>
</head>

<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>
<font color=WHITE>

<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<h3><center>Check Username and password, Then Login!</h3>
<a href="Login.jsp">Go Back</a>
</center>
</font>
</body>
</html>