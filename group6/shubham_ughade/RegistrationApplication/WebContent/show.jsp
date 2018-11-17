<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" %>
<%@ page import ="java.sql.*;"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
           <%@ page errorPage ="error.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${requestScope.searchList !=null and
 not empty requestScope.searchList}">
 <h1 style="padding-left: 300px;">Results</h1><br>
<table class="table table-hover">
  <thead class="thead-dark">
    <tr>
      <th scope="col">RegNo</th>
      <th scope="col">Username</th>
      <th scope="col">Balance</th>
    </tr>
  </thead>
  <c:forEach items="${requestScope.searchList}" var="e"> 	
  <tbody>
    <tr>
      <td>${e.regNo}</td>
      <td>${e.uname}</td>
      <td>${e.bal}</td>
    </tr>
   </c:forEach>
  </tbody>
</table></c:if>






</body>
</html>