<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DataJdbc"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
  background-image : url('images/university-105709_1920.jpg');
  
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
<h1 class= "heading" align = "center"> Inspire Academy</h1>


<div class="topnav">
  <a  href="home.jsp">Home</a>
  <a href="Register.jsp">Register</a>
  <a href="Login.jsp">Login</a>
  <a class = "active" href="Details.jsp">Details</a>
  <a href="About us">About</a>
</div>

<%
DataJdbc db = new DataJdbc();
List<Register> l = null;
l = db.displayAll();
Register r ;
%>

<table border =1 , align = "center">
 <tr>
   <td>Name</td>
   <td>Email</td>
   <td>Username</td>
   <td>phoneno</td>
   </tr> 
   
   
      <%
      for(int i = 0; i<l.size(); i++)
      {
    	  r = (Register)l.get(i);
      %>
      <tr>
      <td><%=r.getName()%> </td>
      <td><%=r.getEmail() %></td>
      <td> <%=r.getUsername() %></td>
      <td><%=r.getPhoneno() %></td>
      
      
      
    </tr>

<%} %>
</table>

</body>
</html>