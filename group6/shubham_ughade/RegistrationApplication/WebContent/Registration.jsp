<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           
    
<!DOCTYPE HTML>
<html lang="en">

<head>
	<title>Registration Form</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	<!-- Stylesheets -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!--// Stylesheets -->
	<!--fonts-->
	<!-- title -->
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
	<h1>Register Here</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="RegistrationServlet" method="post">
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> Registration No </label>
				<input type="text" name="regNo" placeholder="Enter your name " required="" />
			</div>
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> Username </label>
				<input type="text" name="uname" placeholder="Enter your name " required="" />
			</div>
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-envelope" aria-hidden="true"></i> Password </label>
				<input type="password" name="pass" placeholder="Enter your password " required="" id="myInput" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
				
			</div>
				<div class="agile-field-txt">
				<label>
					<i class="fa fa-envelope" aria-hidden="true"></i> Balance </label>
				<input type="text" name="bal" placeholder="Enter your Balance " required="" id="myInput" />
				
			</div>
			<!-- script for show password -->
		
			<!-- //script ends here -->
			<div class="w3ls-bot">
				<div class="switch-agileits">
					<!--<label class="switch">
						<input type="checkbox">
						<span class="slider round"></span>
						keep me signed in-->
					</label>
				</div>
				<div class="form-end">
					<input type="submit" value="submit">
				</div>
				<div class="clearfix"></div>
			</div>
		</form>
	</div>

	
	
	
</body>

</html>