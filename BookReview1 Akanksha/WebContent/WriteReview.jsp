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
a{
    display: inline-block;
    color: WHITE;
    text-align: center;
    padding: 14px 16px;   
}
 a:hover {
    background-color: GREEN;	    
}

.dropdown-content a {
    color: WHITE;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: CENTER;
}

.dropdown-content a:hover {background-color: GREEN}

</style>
</head>
<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>

<%   String uname=(String)session.getAttribute("name");
session.setAttribute("uname", uname); %>
<font color=WHITE>

<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<center>
<form name=f2 action="WriteServlet" method=post onsubmit="return check()">
<!-- write book review form -->
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
    
    Category: <select name="category" required>
    <option value="Mystery">Mystery</option>
    <option value="Horror">Horror</option>
	<option value="Romance">Romance</option>
    <option value="Autobiography">Autobiography</option>
    </select><br><br>

Username: <input type="text" name="uname" required><br><br>

Review about book: <input type="text" name="review" required><br><br>

<input type="submit" value="Submit">   <br><br>
<a href="welcome.jsp">Go Back</a>
</form>
</center>
</font>
</body>
</html>