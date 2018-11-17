<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All records</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>


<body>
<!-- Display Code for Logged in Customer -->

	<c:if test="${requestScope.display !=null and not empty requestScope.display}">
		<h1 style="text-align: center;" class="text-primary">Logged In Customers</h1>
		<br><table border=3 class="table" style="text-align: center;">

			<td>R NO</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Email</td>
			<td>Balance</td>

			</tr>
			<c:forEach items="${requestScope.display}" var="e">
				<tr class>
					<td>${e.rno}</td>
					<td>${e.fname}</td>
					<td>${e.lname}</td>
					<td>${e.email}</td>

					<td>${e.bal}</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>