<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.css">
</head>
<body>
	
	
	
	
	<c:if test="${requestScope.allPostData != null}">
		<table border="1">
			<tr>
				<td>Title</td>
				<td>Body</td>
				<td>&nbsp;</td>
			</tr>
			<c:forEach items="${requestScope.allPostData}" var="p">
				<tr>
					<td>${p.getTitle()}</td>
					<td>${p.getParagraph()}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<a class="waves-effect waves-light btn" href="Register.jsp">Register Here</a>
	&nbsp; &nbsp;
	<a class="waves-effect waves-light btn" href="Login.jsp">Login Here</a>
	<br>
</body>
</html>