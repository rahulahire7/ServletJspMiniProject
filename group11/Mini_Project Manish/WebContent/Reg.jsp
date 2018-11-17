<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Reg.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img src="home.png" class="home">
 <a href="Homee.jsp" id="ahome">Go Home</a>
 <div class="container">
 <img src="register.jpg" class="image">
  <h1>Register Here</h1>
 <table cellspacing=8px>
 <form action="RegisterServelet" method="post">
 <tr>
 <th>USER NAME</th> <td><input type="text" name="uname" placeholder="Enter your Name Here" required></td>
 </tr>
 <tr>
 <th>AGE</th> <td><input type="text" name="age" placeholder="Enter your Age Here" required></td>
 </tr>
 <tr>
 <th>CONTACT NO</th> <td><input type="text" name="contact" placeholder="Enter your number here" pattern="[789][0-9]{9}" required></td>
 </tr>
 <tr>
 <th>Email</th> <td><input type="Email" name="email" placeholder="Enter your Email Here" required></td>
 </tr>
 <tr>
 <th>PASSWORD</th> <td><input type="pass" name="password" placeholder="Enter your password Here" required></td>
 </tr>
 <tr>
 <th>GENDER</th> <td><input type="radio" name="gender">M<input type="radio" name="gender">F<input type="radio" name="gender">Others</td>
 </tr>
 <tr>
   <td colspan="2"><input type="submit" value="SUBMIT"></td>
   </tr>
   <tr>
   <td colspan="2"><input type="reset" value="RESET"></td>
   </tr>
 </form>
 </table>
 </div>
</body>
</html>