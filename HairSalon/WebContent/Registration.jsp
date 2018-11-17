<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
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

.form input.buttom{ background: #4b8df9; display: inline-block; padding: 5px 10px 6px; color: #fbf7f7; text-decoration: none; font-weight: bold; line-height: 1; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: 0 1px 3px #999; -webkit-box-shadow: 0 1px 3px #999; box-shadow: 0 1px 3px #999; text-shadow: 0 -1px 1px #222; border: none; position: relative; cursor: pointer; font-size: 14px; font-family:Verdana, Geneva, sans-serif;}
.form input.buttom:hover    { background-color: #4b8df9; }
</style>
<div id="grad">
 <script type="text/javascript">
window.onload = function () {
	document.getElementById("password1").onchange = validatePassword;
	document.getElementById("password2").onchange = validatePassword;
}
function validatePassword(){
var pass2=document.getElementById("password2").value;
var pass1=document.getElementById("password1").value;
if(pass1!=pass2)
	document.getElementById("password2").setCustomValidity("Passwords Don't Match");
else
	document.getElementById("password2").setCustomValidity('');	 
//empty string means no validation error
}
</script>
</head>
<body >
<center>
<font face="Impact"> <font size="8"><h1>Register</p></font></font></center>
 <div  class="form">

            <form action="RegistrationServlet" method="post" id="contactform">

                <p class="contact"><label for="name">Name</label></p>

               <input id="name" name="name" placeholder="First and last name" tabindex="1" type="text" required >

 

                <p class="contact"><label for="email">Email</label></p>

                <input id="email" name="email" placeholder="example@domain.com" type="email" required>



                <p class="contact"><label for="username">Create a username</label></p>

                <input id="username" name="username" placeholder="username" required="" tabindex="2" type="text">

 

                <p class="contact"><label for="password">Create a password</label></p>

                <input type="password" id="password1" name="password1" required="" type="text">

                <p class="contact"><label for="repassword">Confirm your password</label></p>

                <input type="password" id="password2" name="password2" required="" type="text">

 

               
 
<br><br>
            

 

            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit">   

   </form>

</div></div>
</body>
</html>
