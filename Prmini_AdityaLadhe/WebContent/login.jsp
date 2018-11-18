<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
</head>
<body>
<form action="loginRegister" method="post">
<table>
<tr><td>UserName : </td><td><input type="text" name="name"></td></tr>
<tr><td>Password : </td><td><input type="text" name="password"></td></tr>
<tr><td><input type="submit" name="submit" value="login"></td><td><a href="register.jsp">Registration</a></td></tr>
</table>
</form>
</body>
</html>