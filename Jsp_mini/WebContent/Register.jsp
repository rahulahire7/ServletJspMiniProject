<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blood Bank</title>
<link rel="stylesheet" href="WebContent/materialize.min.css"><link rel="stylesheet" href="HeaderAll.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"><style>
/*   body { */
/*     font-family: Arial, Helvetica, sans-serif; */
/*     background-color: lightblue; */
/* } */

* {
    box-sizing: border-box;
}

/* Add padding to containers */
 /* .container {
width: 100%;
margin: 50px 330px;
    padding: 16px;
    background-color: white;
}  */

/* Full-width input fields */
input[type=text], input[type=password],input[type=country] {
    width: 50%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=country]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
     width: 50%;
    text-align: center;
}
</style>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/freelancer.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav" >
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="color:red;">Blood Bank</a>
      <!--   <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button> -->
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Register.jsp" style="color:red;">Register Here</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Login1.jsp" style="color:red;">Login </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead bg-primary text-white text-center">
        <form name=F1 onSubmit="return dil(this)" action="registerServlet" method="post">

    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
       <i class="fa fa-user fa-fw" aria-hidden="true"></i>&nbsp;
<label for="username"><b>NAME</b></label>
    <input type="text" placeholder="Enter name" name="uname" required><br>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required><br>
           <i class="fa fa-address-book fa-fw" aria-hidden="true"></i>&nbsp;
   
    <label for="address"><b>Address</b></label>
    <input type="text" placeholder="Enter Your Address" name="add" required><br>
    
    <label for="bldgrp"><b>Blood Groop</b></label></br></br>
    <SELECT NAME="bldgrp"> 
									<option value=O+ > O+ 
									<option value=O > O-
									<option value=A+ > A+
									<option value=A- > A-
									<option value=B+ > B+ 
									<option value=B- > B-
									<option value=AB+ > AB+
									<option value=AB- > AB-
									</SELECT> 
									</br> </br>
									           <i class="fa fa-mobile fa-fw" aria-hidden="true"></i>&nbsp;
     <label for="mobile"><b>Mobile</b></label>
    <input type="text" placeholder="Enter Mobile NUmber" name="number" required><br>
    
    									           <i class="fa fa-envelope fa-fw" aria-hidden="true"></i>&nbsp;
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>


    

   
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  
  
  <div class="container signin">
    <p style="color:red;">Already have an account? <a href="Login.jsp">Sign in</a>.</p>
  </div>
</form>

    </header>

    

    

   

    <div class="copyright py-4 text-center text-white">
      <div class="container">
        <small>Copyright &copy;Pooja Yadav</small>
      </div>
    </div>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
      <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>

   

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>

  </body>

</html>