<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href=" https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
html, body {
	padding: 0;
	margin: 0;
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	background: #FFFFFF;
}

.logincontent {
	position: fixed;
	width: 350px;
	height: 300px;
	top: 50%;
	left: 50%;
	margin-top: -150px;
	margin-left: -175px;
	background: #07A8C3;
	padding-top: 10px;
}

.loginheading {
	border-bottom: solid 1px #ECF2F5;
	padding-left: 18px;
	padding-bottom: 10px;
	color: #ffffff;
	font-size: 20px;
	font-weight: bold;
	font-family: sans-serif;
}

label {
	color: #ffffff;
	display: inline-block;
	margin-left: 18px;
	padding-top: 10px;
	font-size: 15px;
}

input[type=text], input[type=password] {
	font-size: 14px;
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 300px;
	height: 35px;
	border: 1px solid #ccc;
	border-radius: 2px;
	box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f5f5;
	font-size: 14px;
}

input[type=checkbox] {
	margin-left: 18px;
	margin-top: 30px;
}

.loginremember {
	background: #ECF2F5;
	height: 70px;
	margin-top: 20px;
}

.check {
	font-family: sans-serif;
	position: relative;
	top: -2px;
	margin-left: 2px;
	padding: 0px;
	font-size: 12px;
	color: #321;
}

.loginbtn {
	float: right;
	margin-right: 20px;
	margin-top: 20px;
	padding: 6px 20px;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	background-color: #07A8C3;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3),
		to(#6EE4E8));
	background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	border-radius: 30px;
	border: 1px solid #07A8C3;
	cursor: pointer;
}

.loginbtn:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
<body>

	<!-- Navigation -->
	<nav class="w3-bar w3-black">
		<a href="Welcome.jsp" class="w3-button w3-bar-item">Home</a> <a
			href="Register.jsp" class="w3-button w3-bar-item">Register</a> <a
			href="DisplayServlet2" class="w3-button w3-bar-item">Display</a> <a
			href="Search.jsp" class="w3-button w3-bar-item">Search</a> <a
			href="Make.jsp" class="w3-button w3-bar-item">Make an Order</a> <a
			href="About Us.jsp" class="w3-button w3-bar-item">About Us</a> <a
			href="Logout.jsp" class="w3-button w3-bar-item">Logout</a>
	</nav>
	<%
        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        
        	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        	
        	response.setHeader("Expires", "0"); //Proxies
        
        %>
	<%
      	if(session.getAttribute("name") == null){
      		response.sendRedirect("Home.jsp");
      	}
      %>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%
 String name;
		name = (String)session.getAttribute("name");
%>
	<!-- Slide Show -->
	<section>
		<img class="mySlides" src="onlinepizzaorderingsystem.png"
			style="width: 50%"> <img class="mySlides" src="fullimage2.jpg"
			style="width: 50%"> <img class="mySlides" src="fullimage1.jpg"
			style="width: 50%"> <img class="mySlides" src="fullimage7.jpg"
			style="width: 50%"> <img class="mySlides" src="fullimage8.jpg"
			style="width: 50%">
	</section>

	<!-- Band Description -->
	<section class="w3-container w3-center w3-content"
		style="max-width: 600px">
		<h2 class="w3-wide">Online Pizza Order</h2>

		<p class="w3-justify">
			Order a delicious pizza on the go, anywhere, anytime. Pizza Hut is
			happy to assist you with your home delivery.<br> Every time you
			order, you get a hot and fresh pizza delivered at your doorstep in
			less than thirty minutes.<br>
		<center>
			*T&C Apply.<br> Hurry up and place your order now!
			</p>
	</section>



	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
		</span> For Placing Orders Call:8523697410<br>
	</footer>

	<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
}
</script>

</body>
</html>