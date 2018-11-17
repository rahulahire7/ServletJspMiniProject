<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undecor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<style>
 a, .dropbtn {
    display: inline-block;
    color: WHITE;
    text-align: center;
    padding: 14px 16px;   
}

a:hover, .dropdown:hover .dropbtn {
    background-color: GREEN;	    
}

.dropdown {
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

</style>
</head>
<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>
<font color=WHITE>

<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<h3><center>Delete Account</center></h3>
<hr>
<!-- delete account by username -->
<form action="DeleteServlet" method=post>Enter your username to delete account  <input type="text" name="uname"> <br><br> <input type="submit" value="OK"> </form>
<a href="home.jsp">Go Back</a>

</font>
</body>
</html>