<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EMI Repayment</title>
<link rel="icon" type="text/image" href="../uploads/images/prjtlogo.png">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		style="margin-bottom:50px"> <a class="navbar-brand" href="#">EMI
		Repayment</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	</nav>

	<div class="row">
		<div class="container">
			<form action="RegisterServlet" method="post">
				<!-- Name -->
				<div class="form-group">
					<label for="inputName">Name</label> <input type="text"
						class="form-control" id="inputName" name="inputName"
						placeholder="Enter name">
				</div>


				<!-- Gender -->
				<div class="form-group radio">
					<div class="form-check form-check-inline">
						<label class="form-check-label" for="inputGender">Gender</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inputGender"
							id="inputGenderMale" value="M"> <label
							class="form-check-label" for="inputGenderMale">Male</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inputGender"
							id="inputGenderFemale" value="F"> <label
							class="form-check-label" for="inputGenderFemale">Female</label>
					</div>
				</div>

				<!-- Date of Birth -->
				<!--  	<div class="form-group col-md-6">
						<label for="inputDob">Date of Birth</label> <input type="date"
							class="form-control" id="inputDob" name="inputDob">
					</div> -->
				<!-- 			<div class="form-group">
						<label for="inputMobile">Mobile</label> <input type="number"
							class="form-control" id="inputMobile" name="inputMobile">
					</div> -->

				<!-- PAN -->

				<div class="form-group">
					<label for="inputPan">PAN</label> <input type="text"
						class="form-control" id="inputPan" name="inputPan"
						placeholder="PAN number here">
				</div>
				<!-- Aadhar -->
				<!-- 	<div class="form-group col-md-6">
						<label for="inputPassword">Aadhar</label> <input type="number"
							class="form-control" id="inputAadhar" name="inputAadhar"
							placeholder="Aadhar Number here">
					</div> -->
				<!-- Email -->
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail">Email</label> <input type="email"
							class="form-control" id="inputEmail" name="inputEmail"
							placeholder="Email">
					</div>
					<!-- Password -->
					<div class="form-group col-md-6">
						<label for="inputPassword">Password</label> <input type="password"
							class="form-control" id="inputPassword" name="inputPassword"
							placeholder="Password">
					</div>
				</div>
				<!-- City -->
				<div class="form-group">
					<label for="inputCity">City</label> <select id="inputCity"
						class="form-control" name="inputCity">
						<option selected>Choose City...</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Chennai">Chennai</option>
						<option value="Pune">Pune</option>
						<option value="Bangalore">Bangalore</option>
						<option value="Hyderabad">Hyderabad</option>
					</select>
				</div>

				<button type="submit" class="btn btn-primary" value="register">Sign
					in</button>
			</form>
		</div>
	</div>
</body>
</html>