<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undecor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<style>

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    background-color:BLACK;
	
    overflow: hidden;
}

li {
    float: left;	
}

li a, .dropbtn {
    display: inline-block;
    color: WHITE;
    text-align: center;
    padding: 14px 16px;   
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: GREEN;	    
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:BLACK;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba (0,0,0,0.2);
}

.dropdown-content a {
    color: WHITE;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: CENTER;
}

.dropdown-content a:hover {background-color: GREEN}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
<script>
function check()
{  var pa=document.f1.psw.value;
   var pa2=document.f1.psw2.value;
   var ubday=document.f1.bday.value;
   
   var de=/[a-z]/
	   if(!de.test(pa))
	   {
	   alert("Password must have atleast 1 lowercase character");
	   document.f1.psw.value="";
	   document.f1.psw.focus();
	   return false;
	   }
	   var de1=/[0-9]/
	   if(!de1.test(pa))
	   {
	   alert("Password must have atleast 1 digit");
	   document.f1.psw.value="";
	   document.f1.psw.focus();
	   return false;
	   }
	   if(pa.length<8)
	   {
	   alert("Password should be atleast of 8 characters!");
	   document.f1.psw.value="";
	   document.f1.psw.focus();
	   return false;
	   }
	   if(pa!=pa2)
	   {
	   alert("Passwords do not match!");
	   document.f1.psw2.focus();
	   return false;
	   }
	   var currdate=new Date();
	   var curryr=currdate.getFullYear();
	   var bdate=new Date(ubday);
	   var birthyr=bdate.getFullYear();
	   var age=curryr-birthyr;
	   if(currdate<bdate)
	   {
	   alert("Today's date exceeded");
	   document.f1.bday.focus();
	   return false;
	   }   
}
</script>
</head>

<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>

<font color=WHITE>

<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<h3><center>Sign Up First!</center></h3>
<hr>
<ul>
  <li><a class="active" href="home.jsp" TARGET=_top >HOME</a></li>
  <li class="dropdown">
    <a class="dropbtn" TARGET=_top >GENRE</a>
    <div class="dropdown-content">
      <a href="home.jsp">MYSTERY THRILLER</a>
      <a href="home.jsp">HORROR</a>
      <a href="home.jsp">ROMANCE</a>
      <a href="home.jsp">AUTOBIOGRAPHIES</a>
    </div>
  </li>
  <li><a class="active" href="home.jsp" TARGET=_top>ABOUT US</a></li>
  <li><a class="active" href="Login.jsp" TARGET=_top>LOG IN</a></li>
  <li><a class="active" href="Signup.jsp" TARGET=_top>SIGN UP</a></li>
  <li><a class="active" href="Delete.jsp" TARGET=_top>DELETE ACCOUNT</a></li>
</ul>
<hr>
<br>

<form method=post action="SignupServlet"  name=f1 onsubmit="return check()">
<!-- registration form -->
First Name: <input type="text" name="fname" autofocus size="25" required>    
Last Name: <input type="text" name="lname"  size="25" required> <br> <br>

Gender: <input type="radio" name="gender" value="male" checked required> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other<br><br>

Nation: <select name="nation" required>
    <option value="ind">India</option>
    <option value="USA">USA</option>
	<option value="UK">UK</option>
    <option value="SL">Sri Lanka</option>
    <option value="Pak">Pakistan</option>
    <option value="Mynmr">Myanmar</option>
	<option value="arg">Argentina</option>
	<option value="ger">Germany</option>
	<option value="aus">Australia</option>
	<option value="france">France</option>
	<option value="brazil">Brazil</option>
    </select><br><br>


Birthday: <input type="date" name="bday" min="1945-01-01" max="2010-12-31" required><br><br>

E-mail: <input type="email" name="email" required><br><br>

Username: <input type="text" name="uname" required><br><br>
 
Password: <input type="password" name="psw" required><br><br>

Confirm password: <input type="password" name="psw2"required><br><br>

<input type="submit" class="button" value="Submit">  
<input type="button" class="button" value="Cancel" onclick="Signup.jsp">
</form>

</font>
</body>
</html>