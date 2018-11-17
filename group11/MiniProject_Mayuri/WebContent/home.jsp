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
<body>

	<!-- Navigation -->
	<nav class="w3-bar w3-black">
		<a href="Register.jsp" class="w3-button w3-bar-item">Register</a> <a
			href="DisplayServlet2" class="w3-button w3-bar-item">Display</a> <a
			href="Search.jsp" class="w3-button w3-bar-item">Search</a> <a
			href="Login.jsp" class="w3-button w3-bar-item">Login</a>
	</nav>

	<!-- Slide Show -->
	<section>
		<img class="mySlides" src="online_pizza_ordering_system.jpg"style="width: 100%"> 
		<img class="mySlides" src="fullimage2.jpg"style="width: 100%">
		 <img class="mySlides" src="fullimage1.jpg"style="width: 100%">
		  <img class="mySlides" src="fullimage7.jpg"style="width: 100%">
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
		<a href="#"><i class="fa fa-facebook-official"></i></a> <a href="#"><i
			class="fa fa-pinterest-p"></i></a> <a href="#"><i
			class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-flickr"></i></a>
		<a href="#"><i class="fa fa-linkedin"></i></a>

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
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 3000);
		}
	</script>

</body>
</html>