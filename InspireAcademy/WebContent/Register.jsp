<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel ="stylesheet" href = "nav.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: orange;
  background-image:Url('images/university-105709_1920.jpg') ;
  
}

.topnav {
  overflow: hidden;
  background-color: orange;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: orange;
  color: white;
}

#grad {
    background: url('css/img34.jpg') no-repeat;
background-size: cover;
width: 100%;
height: 200%;

     }
h1 {
	color: white;
	text-align: center;
	font-weight: bolder;
	margin-top: 0px;
}
.form{

    width:470px; margin:0 auto; padding-left:50px; padding-top:10px;

}

.form fieldset{border:5px; padding:0px; margin:0px; }

.form p.contact { font-size: 12px; margin:0px 0px 10px 0;line-height: 14px; font-family:Arial, Helvetica;color: white;}



.form input[type="text"] { width: 400px; }

.form input[type="email"] { width: 400px; }

.forminput[type="password"] { width: 400px; }


.form label { font-weight:bold;font-size: 15px;font-family:Arial, Helvetica;color: white; }

.form label.month {width: 135px;}

.form input, textarea { background-color: white; border: 1px solid rgba(122, 192, 0, 0.15); padding: 7px; font-family: Keffeesatz, Arial; font-color: white; font-size: 14px; -webkit-border-radius: 5px; margin-bottom: 15px; margin-top: -10px; }

.form input:focus, textarea:focus { border: 1px solid white; background-color: rgba(255, 255, 255, 0.5); }


.form .gender {

  width:410px;

  }
.heading
{
color: white;
background-color: black;
 }

.form input.buttom{ background: #4b8df9; display: inline-block; padding: 5px 10px 6px; color: #fbf7f7; text-decoration: none; font-weight: bold; line-height: 1; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: 0 1px 3px #999; -webkit-box-shadow: 0 1px 3px #999; box-shadow: 0 1px 3px #999; text-shadow: 0 -1px 1px #222; border: none; position: relative; cursor: pointer; font-size: 14px; font-family:Verdana, Geneva, sans-serif;}
.form input.buttom:hover    { background-color: #4b8df9; }

</style>

<div id="grad"> 

<script type="text/javascript"> 
function validation()
{ 
 var ph1 = document.getElementById("phoneno").value;
 var p1 = document.getElementById("pwd1").value;
 var p2 = document.getElementById("pwd2").value;	
 if(isNaN(ph1))
	 {alert("Enter numeric value!");
	   return false;
	  }
	 
 if(ph1.charAt(0)<6 )
	 { 
	  alert("Enter valid mobile number ");
	  return false;
	 
	  
	  
	 } 	 
 }

window.onload = function () {
	document.getElementById("pwd1").onchange = validatePassword;
	document.getElementById("pwd2").onchange = validatePassword;
}
function validatePassword(){
var pass2=document.getElementById("pwd2").value;
var pass1=document.getElementById("pwd1").value;
if(pass1!=pass2)
	document.getElementById("pwd2").setCustomValidity("Passwords Don't Match");
else
	document.getElementById("pwd2").setCustomValidity('');	 

}


</script>

<body>
<h1 class= "heading" align = "center"> Inspire Academy</h1>

<div class="topnav">
  <a href="home.jsp">Home</a>
  <a class ="active" href="Register.jsp">Register</a>
  <a href="Login.jsp">Login</a>
  <a href="courses.jsp">Course</a>
  <a href="About us">About</a>
</div>

<center>
 <div  class="form">

            <form action="RegistrationServlet" method="post" id="contactform" onsubmit = "return validation()">

                <p class="contact"><label for="name">Name</label></p>

               <input id="name" name="name" placeholder="Full name" tabindex="1" type="text" required >

 

                <p class="contact"><label for="email">Email</label></p>

                <input id="email" name="email" placeholder="johndoe@yahoo.com" type="email" required>



                <p class="contact"><label for="username">Create a username</label></p>

                <input id="username" name="username" placeholder="username" required="" tabindex="2" type="text">

 

                <p class="contact"><label for="password">Create a password</label></p>

                <input type="password" id="pwd1" name="pwd1" required="" type="text" onkeyup='check();'>

                <p class="contact"><label for="repassword">Confirm your password</label></p>

                <input type="password" id="pwd2" name="pwd2" required="" type="text" onkeyup='check();'>

               
                 <p class="contact"><label for="phoneno">Phone Number</label></p>

                <input type="text" id="phoneno" name="phoneno" required> 
                
                
                <p class="contact"><label for="courseno" placeholder="course">Course Name</label></p> 
                <select name = "course_name">
                  <option value = "option1">Java</option>
                  <option value = "option2">Sql</option>
                  <option value = "option3">Bootstrap</option>
                  <option value = "option4">Angular js</option>
                </select>

                
               
 
<br><br>
            

 

            <input class="buttom" name="submit" id="submit" tabindex="5" value="Register" type="submit" >   

   </form>

</div></div>



</body>
</html>