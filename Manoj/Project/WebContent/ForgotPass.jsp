<!--%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reset Password Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">


<script type="text/javascript">
	function Validate() {
		var password = document.getElementById("password").value;
		var confirmPassword = document.getElementById("confirm_password").value;
		if (password != confirmPassword) {
			alert("Passwords don't match! Try again.");
			return false;
		}
		return true;
	}
</script>

</head>
<body>

	<div class="main">
	
	<nav class="myNav navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Password Reset Form</a>
	</nav>
		<div class="container card form_container">
		<section class="signup">
			
	<center>
<img src="img\forgotpass.jpg" width="460" height="250">
</center>
			<div class="signup-content">
					<form method="post" id="ForgotPassword" class="reset-password-form">
						
						<br>

						<div class="form-group col-md-6">
							<input type="email" class="form-control input-sm c-square"
								name="email" id="email" placeholder="Your Email" required />
						</div>
						<div class="form-group col-md-6">
							<input type="password" class="form-control input-sm c-square"
								name="password" id="password" placeholder=" Enter New Password"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="Must contain at least one uppercase letter, one digit, one special character and lowercase letter ,and  must be of 8 or more characters"
								required />
						</div>
						<div class="form-group col-md-6">
							<input type="password" class="form-control input-sm c-square"
								name="confirm_password" id="confirm_password"
								placeholder="Enter Password Again" required />
						</div>

						<div class="form-group">
							<button type="submit"
								class="btn c-theme-btn btn-md c-btn-uppercase c-btn-bold c-btn-square"
								value="Reset" onclick="return Validate()">Reset</button>
						</div>
					</form>
				</div>
			</div>
		</section>
		<div class="modal-footer c-no-border">
					<span class="c-text-account"></span> 
					<a href="Login.jsp" data-toggle="modal"	data-dismiss="modal"
						class="btn c-btn-dark-1 btn c-btn-uppercase c-btn-bold c-btn-slim c-btn-border-2x c-btn-square c-btn-signup">Login!</a>
				</div>
	</div>
	
</body>
</html>