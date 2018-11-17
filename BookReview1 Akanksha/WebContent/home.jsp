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
body{
	
background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;
}
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
<h3><center>REDEFINING READING</center></h3>
<hr>
<ul>
  <li><a class="active" href="home.jsp" TARGET=_top >HOME</a></li>
  
  <li class="dropdown">
    <a class="dropbtn" TARGET=_top >GENRE</a>
    <div class="dropdown-content">
      <a href="home.jsp">MYSTERY THRILLER</a>
      <a href="home.jsp">HORROR</a>
      <a href="home.jsp">ROMANCE</a>
      <a href="home.jsp">AUTOBIOGRAPHIES</a>
    </div>
  </li>
  <li><a class="active" href="home.jsp" TARGET=_top>ABOUT US</a></li>
  <li><a class="active" href="Login.jsp" TARGET=_top>LOG IN</a></li>
  <li><a class="active" href="Signup.jsp" TARGET=_top>SIGN UP</a></li>
  <li><a class="active" href="Delete.jsp" TARGET=_top>DELETE ACCOUNT</a></li>

</ul>
<hr>
</font>
</body>
</html>