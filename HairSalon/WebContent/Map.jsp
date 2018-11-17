<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/nav.css">
<title>Google Maps</title>
<style>
body { 
  background: black;
  text-align: center;
}
h1 {

	color: white;
	text-align: center;
	font-weight: bolder;
	margin-top: 20px;
}
p{

font-size: 20px;
color: white;
}


</style>
</head>

<body>
<div class="wrap">

<span class="decor"></span>

<nav>
  <ul class="primary1">
    <li>
      <a href="Home.jsp">Home</a>
    </li>
    <li>
      <a href="Abt.jsp">About us</a>
      <ul class="sub1">
        <li><a href="Abt.jsp">Trending</a></li>
        <li><a href="Map.jsp">Location</a></li>
      </ul>
    </li>
    
    <li>
      <a href="Registration.jsp">Register</a> 
    </li>
 <li>
      <a href="Appt.jsp">Appointment</a> 
    </li>
    <li>
      <a href=".HairStyle.jsp">Tutorial</a>
      <ul class="sub1">
        <li><a href="Colourtut.jsp">Hair Coloring</a></li>
        <li><a href="Tutorial.jsp">Hair Styling</a></li>
        <li><a href="HairCutTut.jsp">Hair cuts</a></li>
      </ul>  
    </li>
<li>
      <a href="Cart.jsp">Buy Products</a> 
    </li>
 
   </nav>
</div>
    

<br><br>

	<h1 ><font face="Jokerman">Location<font></h1>
	<p>
		<strong>Address:</strong>Palvi Compound,Near Rasaram Garden,Off Station Road, <br >Jogeshwari East, Mumbai, Maharashtra 400060

	</p>
	<p>
		<strong>Phone:</strong> 9856382223
	</p>
	<p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30155.357374642714!2d72.84343586717591!3d19.133098464541174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b7d307ec27c7%3A0xf2ff4c0f78223863!2sModern+Family+Salon!5e0!3m2!1sen!2sin!4v1541781461284" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></p>
	</body>
</html>