<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
    body {
 		  background-image: url("body.jpg");

 		  height: 100%;
>>>>>>> CSS
   }
</style>
</head>
<body>
<section>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home.jsp">Shubham Pawar</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home.jsp">Home</a></li>
 </ul>

 </nav>

 <section>
 
<div class="login-form">
    <form action="LoginServlet" method="post">
        <h2 class="text-center">Log in</h2>       
        <div class="form-group">
            <input type="text" class="form-control" name="fname" placeholder="Username" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="pass" placeholder="Password" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>
        <div class="clearfix">
            
            <a href="Forgot.jsp" class="pull-right">Forgot Password?</a>
        </div>        
    </form>
    <p class="text-center">new user? &nbsp<a href="Register.jsp">Create an Account</a></p>
</div>
	<% String str=null; %>
	<%
		if(!session.isNew())
		{
			str=(String)session.getAttribute("msg");
			out.print(str);
			session.invalidate();
		}
	%>
</body>
</html>   
