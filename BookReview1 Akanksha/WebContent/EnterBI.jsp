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
<% 
        String name=(String)session.getAttribute("name");
       session.setAttribute("uname", name);
		
        %>
<font color=WHITE>

<h3 style="font-family:Times New Roman ;font size:24px"><center>Select Book Id to read reviews</center></h3><hr>
<center>
<form name=f3 action="DisplayReview" method=post>
<!-- search book reviews by book id --> 
Book Id: <select name="bookId" required>
    <option value="m101">m101</option>
    <option value="m102">m102</option>
	<option value="h101">h101</option>
    <option value="h102">h102</option>
    <option value="r101">r101</option>
    <option value="r102">r102</option>
	<option value="a101">a101</option>
	<option value="a102">a102</option>
    </select><br><br>
 <input type="submit" value="Submit"><br><br>
 <a href="welcome.jsp">Go Back</a>
    
</form></center>
</font>    
</body>
</html>