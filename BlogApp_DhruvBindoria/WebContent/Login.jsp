<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="bootstrap.css">
</head>
<body>
  <form action="LoginServlet" method="POST"> 
    Username: <input type="text" name="uname"> <br>
    Password: <input type="password" name="pass"> <br>
    <input type="submit" value="Login"> <br>
   </form>
   <a href="Register.jsp">Not registered?</a> <br>
   <a href="Home.jsp">Go back to home</a> <br>
</body>
</html>