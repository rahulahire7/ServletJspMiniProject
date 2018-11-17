
<%@ page import="java.util.List"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Insert title here</title>
</head>
<body>

<c:if test="${requestScope.usrList !=null and
 not empty requestScope.usrList}">
 <h1 style="padding-left: 300px;">All Users</h1><br>
 <table border="4" cellpadding="3">
	<tr>
		<td>Name</td>
		<td>Email</td>
		<td>Age</td>
		<td>Contact</td>
		<td>Password</td>
		<td>Balance</td>
	</tr>
	<c:forEach items="${requestScope.usrList}" var="e">
		<tr>
		<td>${e.name}</td>
		<td>${e.email}</td>
		<td>${e.age}</td>
		<td>${e.contact}</td>
		<td>${e.pass}</td>
		<td>${e.balance}</td>
	   </tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>