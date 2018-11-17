<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<h1 align="center"><strong>WELCOME TO YOUR BANK</strong></h1><hr>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>
   <!-- <h2 class="inactive underlineHover">Sign Up </h2> --> 

     <!-- Icon -->
    <div class="fadeIn first">
      <img src="download.png" id="icon" alt="User Icon" />
    </div> 

    <!-- Login Form -->
    <form action="LoginServlet">
      <input type="text" id="login" class="fadeIn second" name="uname" placeholder="username" required>
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password" required>
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>

</body>
</html>