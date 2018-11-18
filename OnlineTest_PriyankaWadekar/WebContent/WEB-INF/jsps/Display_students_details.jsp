<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
<div id='cssmenu'>
<center><ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul></center>
</div>
<div>
<center><h1>Users Details</h1></center>
</div>

</div>
<center><table class="table">
<tr>
<th>Username</th>
<th>Email</th>
</tr>

<c:forEach var="p"  items="${list }">

<tr>
<td><c:out value="${p.username}"></c:out></td>
<td><c:out value="${p.email}"></c:out></td>
</tr>
</c:forEach>
</table></center>
</body>
</html>