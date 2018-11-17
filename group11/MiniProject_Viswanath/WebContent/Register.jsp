<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css">

<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">-->
</head>
<body>
<h1 align="center"><strong>WELCOME TO YOUR BANK</strong></h1><hr>

<form action="RegisterServlet" method="get">
<table>
 <tr>
 <th>USER NAME</th> <td><input type="text" name="uname" placeholder="Enter your Name Here" required></td>
 </tr>
 <tr>
 <th>AGE</th> <td><input type="text" name="age" placeholder="Enter your Age Here"></td>
 </tr>
 <tr>
 <th>CONTACT NO</th> <td><input type="text" name="contact" pattern="[789][0-9]{9}" placeholder="Enter your number here" required></td>
 </tr>
 <tr>
 <th>Email</th> <td><input type="email" name="email" placeholder="Enter your Email Here" required></td>
 </tr>
 <tr>
 <th>PASSWORD</th> <td><input type="password" name="password" placeholder="Enter your password Here" required></td>
 </tr>
 <tr>
 <th>GENDER</th> <td><input type="radio" name="gender">M<br>
 <input type="radio" name="gender">F<br>
 <input type="radio" name="gender">Others</td><br>
 </tr>
 <tr>
 <th>BALANCE</th> <td><input type="text" name="balance" placeholder="Enter your account balance" required></td>
 </tr>
 <tr>
   <td><input type="submit" value="SUBMIT"></td>
   <td><input type="reset" value="RESET"></td>
 </tr>
</table>
</form>
</body>
</html>