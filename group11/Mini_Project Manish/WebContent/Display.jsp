
<%@ page import="java.util.List"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Insert title here</title>

<style>
        body
        { 
          background:url(cool.jpg);
          color:#fff;
        }
       
      .Parent{
         border:2px solid #fff;
         padding:40px 30px;
         top:20%;
         left:40%;
         position:absolute;
         background:#000;
         
         
      }
      
      .image{
        
        top:-50px;
        left:150px;
        position:absolute;
        border-radius:-50%;
      
      }
        
</style>

</head>
<body>

<div class="Parent">
<img src="login.jpg" class="image" width=100px; height=100px;>
<c:if test="${requestScope.lst !=null and
 not empty requestScope.lst}">
 <h1>All Users</h1><br>
 <table border="4" cellpadding="3">
	<tr>
		<td>Name</td>
		<td>Email</td>
		<td>Age</td>
		<td>Contact</td>
		<td>Password</td>
	
	</tr>
	<c:forEach items="${requestScope.lst}" var="e">
		<tr>
		<td>${e.name}</td>
		<td>${e.email}</td>
		<td>${e.age}</td>
		<td>${e.contact}</td>
		<td>${e.pass}</td>
		
	   </tr>
	</c:forEach>
	</table>
</c:if>
</div>

 <% response.setHeader("Refresh", "10; URL=http://localhost:9090/NoBank/WelcomeAdmin.jsp"); %>
</body>
</html>