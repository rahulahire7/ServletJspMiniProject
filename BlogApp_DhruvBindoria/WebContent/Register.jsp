<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resgister</title>
<link rel="stylesheet" href="bootstrap.css">
</head>
<body>
  <form action="RegistrationServlet" method="POST">
    Username: <input type="text" name="uname"> <br>
    e-mail: <input type="email" name="email"> <br>
    Mobile No.: <input type="number" name="mobno"> <br>
    Password: <input type="password" name="pass"> <br>
    <input type="submit" value="Register"> <br>
  </form>
  <a href="Login.jsp">Already registered?</a> <br>
  <a href="Home.jsp">Go back to Home</a> <br>
</body>
</html>