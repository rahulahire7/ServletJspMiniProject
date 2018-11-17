<%@page import="sun.awt.EmbeddedFrame" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.dropdown-content a {
    color: WHITE;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: CENTER;
}
</style>
</head>
<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>
<font color=WHITE>

<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<h3><center>All Books' Reviews</center></h3>
<hr>
<!-- table of book reviews -->
<table border=2>
<tr><td>Book Id</td><td>Book Category</td><td>Username</td><td>Review</td></tr>
<c:forEach items="${listreviews}" var="post">
   <tr>
     <td>${post.bookId}</td><td>${post.category}</td><td>${post.uname}</td><td>${post.review}</td>
   </tr>
  </c:forEach>
  <a href="EnterBI.jsp">Go Back</a></p>
		

</table>

</font>
</body>
</html>