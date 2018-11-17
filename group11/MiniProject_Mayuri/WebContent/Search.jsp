<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Search Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--CSS CODE to search for Customers  -->
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
	<br>
	<br>
	<br>
	<center>
		Do You Want to Search for the Registerd Users
		<div class="login-form">

			<form action="SearchServlet" method="post">

				<h2 class="text-center">Search Registerd</h2>
				<div class="form-group">
					<input type="text" class="form-control" name="rno"
						placeholder="Enter RNO" required="required">
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">Search</button>
				</div>

			</form>
			<p class="text-center">
				<a href="Welcome.jsp">Back</a>
			</p>
		</div>
</body>
</html>
