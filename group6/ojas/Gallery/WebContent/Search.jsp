<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Search Page</title>
<link rel="stylesheet" href="css/style.css">
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
    
</style>
</head>
<body>

<section>
<nav class="navbar navbar-default">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="Welcome.jsp">Home</a></li>
 </ul>
 </div>
 </nav>
 </section>


<div class="login-box animated fadeInUp">
			<div class="box-header">
				 <h2 class="text-center">Search User</h2>
			</div>
    <form action="SearchServlet" method="post">       
        <div class="form-group">
            <input type="text" class="form-control" name="uname" placeholder="Enter User name" required="required">
        </div>
        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Search</button>
        </div>
        
    </form>
    <p class="text-center"> &nbsp<a href="Welcome.jsp">Go to home</a></p>
</div>

</body>
</html>   
