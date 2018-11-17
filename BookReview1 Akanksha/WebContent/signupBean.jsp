<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undecor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<style>
a{
    display: inline-block;
    color: WHITE;
    text-align: center;
    padding: 14px 16px;   
}
 a:hover {
    background-color: GREEN;	    
}

.dropdown-content a {
    color: WHITE;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: CENTER;
}

.dropdown-content a:hover {background-color: GREEN}

</style>
</head>

<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>
<font color=WHITE>
<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<h2><center>Thank You for registering with us</center></h2><hr>
<jsp:useBean id="signupBean" class="com.model.SignUp" scope="request">
</jsp:useBean>
<jsp:setProperty property="*" name="signupBean"/>
<center><h3>
Your first name Is: ${signupBean.fname}<br><br>
Your last name Is: ${signupBean.lname}<br><br>
Gender Is: ${signupBean.gender}<br><br>
Your nation Is: ${signupBean.nation}<br><br>
Your Birthdate Is: ${signupBean.bday}<br><br>
Your e-mail id Is: ${signupBean.email}<br><br>
Your Username Is: ${signupBean.uname}<br><br>
Your Password Is: ${signupBean.psw}<br><br>
</h3>
<a href="Login.jsp">Go Back</a>

</body>
</html>