<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
 </div>
 </nav>
 <section>
      
<div class="login-form">
<form action="RegistrationServlet" method="post">
<h2 class="text-center">Registration Form</h2>       
        <div class="form-group">

            <input type="text" class="form-control" name="rno" placeholder="RNO" required="required" autofocus>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="fname" minlength="3" placeholder="Username" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="pass" minlength="5" maxlength="20" placeholder="Password" required="required">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="bal" minlength="4" placeholder="Balance" required="required">

        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
        </div>
    </form>
   <p class="text-center">Already a user? &nbsp<a href="Login.jsp">Login Page</a></p>
</div>
</form>

</body>
</html>