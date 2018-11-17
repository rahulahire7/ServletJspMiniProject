<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
<!DOCTYPE HTML>
<html lang="en">

<head>
	<title>Registration Form</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<h1>Choose</h1>
	<div class="w3ls-login box box--big" style="display: flex; flex-direction: column;">
		<!-- <div class="w3ls-login"> -->	
<input type="submit" onclick="location.href='login.jsp';" value="Login" />
<!-- </div> -->
	<!-- <div class="w3ls-login"> -->
<input type="submit" onclick="location.href='Registration.jsp';" value="Register" />
<!-- </div> -->
	
	
	<!-- <div class="w3ls-login"> -->
<input type="submit" onclick="location.href='DisplayServlet2';" value="Display" />
<!-- </div> -->

<input type="submit" onclick="location.href='Search.jsp';" value="Search" />
	</div>
	
	
</body>

</html>