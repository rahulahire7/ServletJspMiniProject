<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book An appointment</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
    $(".form_datetime").datetimepicker({
        format: "dd MM yyyy - hh:ii"
    });
</script>
<style type="text/css">
.bg{
background: url('css/img34.jpg') no-repeat;
background-size: cover;
}
#log
{
padding: 60px 40px;
margin-top: 0px;
-webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
}
h1 {
	color: white;
	text-align: center;
	font-weight: bolder;
	
}
label{
font-size: 20px;
color: white;
}
button
{-webkit-box-shadow: 10px 10px 5px -45px rgba(0,0,0,0.75);
-moz-box-shadow: 10px 10px 5px -45px rgba(0,0,0,0.75);
box-shadow: 10px 10px 5px -45px rgba(0,0,0,0.75);
}

</style>

</head>
<body>


	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<form action="ApptServlet" method="post" id="log">
				<h1>Login</h1>
			
					<div class="form-group">
						<label>User Name</label>
						 <input type="text" name="username" class="form-control" placeholder="Username">
					</div>
<div class="form-group">
						<label> Password</label>
						 <input type="password" name="password1" class="form-control" placeholder="Password">
					</div>
					
					      <button type="submit" class="btn btn-success btn-block" >Book</button>

				</form>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
		</div>
		
</body>
</html>