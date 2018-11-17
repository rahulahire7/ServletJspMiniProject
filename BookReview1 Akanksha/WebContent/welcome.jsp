<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undecor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<style type="text/css">
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
}
</style>
</head>
<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>
<% 
//redirect user to login page if not logged in
if(session.getAttribute("uname")==null){
    response.sendRedirect("Login.jsp");
}

else{  
     String uname=(String)session.getAttribute("uname");
     session.setAttribute("name",uname);}
        %>
    
       
<font color=WHITE>


<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1><hr>
<center>  
 <h1>Welcome <%=session.getAttribute("uname")%></h1> 
 <!-- welcome page after login -->
   	<a class="active" TARGET=_top href="DisplayServlet">Display All Books List</a><br><br>
   	<a class="active" TARGET=_top href="EnterBI.jsp">Search reviews by Book Id</a><br><br>
   	<a class="active" TARGET=_top href="WriteReview.jsp">Write Book Reviews</a><br><br>     
     <a class="active" TARGET=_top href="Logout.jsp">Logout</a>
 
</center>  
</font>
</body>
</html>