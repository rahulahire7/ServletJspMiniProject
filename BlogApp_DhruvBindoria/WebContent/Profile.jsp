<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="sun.awt.EmbeddedFrame"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.css">
</head>
<body>
<%@ page import="com.model.*" %>
<%@ page import="java.util.ArrayList" %>
<%! User u; %>
<% 
	u = (User)session.getAttribute("userdata"); 
%>
	Welcome 
	<%= u.getUname() %>
	
	<h3>List of Posts</h3>

	<c:if test="${sessionScope.userPostData != null}">
		<table border="1">
		<tr>
			<td>Title</td>
			<td>Body</td>
			<td>&nbsp;</td>
		</tr>
		<c:forEach items="${sessionScope.userPostData}" var="p"> 		
		<tr>
			<td>${p.getTitle()}</td>
			<td>${p.getParagraph()}</td>
		</tr>
		</c:forEach>
		</table>
	</c:if>
	<a href="Home.jsp">Go to Home</a> &nbsp; &nbsp; &nbsp; <a href="CreatePost.jsp">Create</a> <br>
	<%= u.getEmail() %>
	${u.getMobno()}
</body>
</html>