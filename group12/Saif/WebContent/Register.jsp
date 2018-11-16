<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: cyan;
}


* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=tel],input[type=date] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus,input[type=tel]:focus,input[type=date]:focus {
    background-color: #ddd;
    outline: 2px dashed black;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.btn btn-info btn-lg {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: dashed;
    cursor: pointer;
    width: 2000%;
    opacity: 0.9;
}

.btn btn-info btn-lg :hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>


</head>
<body>

<form action="RegistrationServlet" method="post">
<div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="RegNo"><b>RegNo</b></label>
    <input type="text" placeholder="Enter RegNo" name="rno" required>
    
    <label for="First Name"><b>First Name<span class="glyphicon glyphicon-envelope"></span> </b></label>
    <input type="text" placeholder="Enter First Name" name="fname" required>
    
      <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>

    <label for="Acc Bal"><b>Account Balance <span class="glyphicon glyphicon-phone"></span></b></label><br>
    <input type="tel" placeholder="Enter Phone" name="bal" required><br>
   
   
    <button type="submit" align="center" class="btn btn-info btn-lg" data-toggle="modal" value="Register" data-target="#myModal">Register</button>

  

  
    <hr>

</form>

</body>
</html>