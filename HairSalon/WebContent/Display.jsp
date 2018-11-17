<%@page import="sun.awt.EmbeddedFrame"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Registration"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>
<h3>List of Cust</h3>
<c:if test="${requestScope.message !=null}">
	NOTE : ${message}
</c:if>
<c:if test="${requestScope.data !=null and
 not empty requestScope.data}">
<table border="1" cellpadding="3">
	<tr>
		<td>Name</td>
		<td>Email</td>
		<td>UserNAMe</td>
		<td>Password1</td>
				<td>Password2</td>
		
	</tr>
	<c:forEach items="${requestScope.data}" var="e"> 		
	<tr>
		<td>${e.name}</td>
		<td>${e.email}</td>
		<td>${e.username}</td>
		<td>${e.password1}</td>
				<td>${e.password2}</td>
		
	</tr>
	</c:forEach>
</table></c:if>
<%

Object o=request.getAttribute("data");
List lo=(List)o;



	Iterator it=lo.iterator();
	while(it.hasNext())
	{
		Registration r=(Registration)it.next();
		out.println(r.getName());
	}
	
%>


</body>
</html>