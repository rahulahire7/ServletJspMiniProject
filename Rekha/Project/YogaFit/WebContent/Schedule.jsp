<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>YogaFit</title>

	<link href="https://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/main.css">
	
</head>

<body>
	<!-- start header Area -->
	<header id="header">
		<div class="header-top">
			<div class="container">
				
						<div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
						
					</div>
				</div>
			</div>
		</div>
		<div class="container main-menu">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a  href="index.jsp"><%=session.getAttribute("uname") %></a></li>
						<li><a class="active" href="Schedule.jsp">Schedule</a></li>
						<li><a  href="MyCourses.jsp">MyCourses</a></li>
						
						
						
						<li><a href="Logout.jsp">Signout</a></li>
						
					</ul>
				</nav><!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- end header Area -->

	

	<!-- Start schedule Area -->
<section class="feature-area courses section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12">
					<div class="section-title-wrap text-center">
						<h1>Our Featured Classes</h1>
					</div>
				</div>
			</div>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-6 col-md-6 single-feature">
					<figure>
						<img class="img-fluid" src="img/featured-class/f1.jpg" alt="">
						<div class="overlay overlay-bg"></div>
					</figure>
					<div class="text-center">
						<h4 class="mb-10">Basic Preliminary Yog Course</h4>
						<p>
							<a href="ApplyCourse.jsp">Apply</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 single-feature">
					<figure>
						<img class="img-fluid" src="img/featured-class/f2.jpg" alt="">
						<div class="overlay overlay-bg"></div>
					</figure>
					<div class="text-center">
						<h4 class="mb-10">Repeater Course</h4>
						<p>
							<a href="ApplyCourse.jsp">Apply</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 single-feature">
					<figure>
						<img class="img-fluid" src="img/featured-class/f3.jpg" alt="">
						<div class="overlay overlay-bg"></div>
					</figure>
					<div class="text-center">
						<h4 class="mb-10">Hath Yoga Pranit Pramanpatra</h4>
						<p>
							<a href="ApplyCourse.jsp">Apply</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 single-feature">
					<figure>
						<img class="img-fluid" src="img/featured-class/f4.jpg" alt="">
						<div class="overlay overlay-bg"></div>
					</figure>
					<div class="text-center">
						<h4 class="mb-10">Advance Guidance Course</h4>
						<p>
							<a href="ApplyCourse.jsp">Apply</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
				</div>
			</div>
		</div>
	</section>
	<!-- End schedule Area -->


	<!-- start footer Area -->
	
			<div class="footer-bottom row align-items-center">
				<p class="footer-text m-0 col-lg-12 col-md-12" style="background-color: black;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved. 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				<div class="col-lg-6 col-sm-12 footer-social">
					
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

  <!-- JS -->
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.tabs.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>

</html>