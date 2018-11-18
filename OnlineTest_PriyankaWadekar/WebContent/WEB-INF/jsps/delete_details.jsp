<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/display.css">
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
<center><table class="table">
<form action="AdminController" method="post">
<input type="hidden" name="action" value="delete_record">
<tr>
<td>Enter Username:</td>
<td><input type="text" name="uname" ></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Delete record"></td>
</tr>

</form>
</table></center>
</div>
</body>
</html>