<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ page errorPage ="error.jsp" %>
    
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
		<title>Fitness</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
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
		
		  <%
      	if(session.getAttribute("rid") == null){
      		response.sendRedirect("login.jsp");
      	}
      %>
		<%
        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        
        	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        	
        	response.setHeader("Expires", "0"); //Proxies
        
        %>
			  <header id="header">
		  		<div class="header-top">
		  			<div class="container">
				  		<div class="row align-items-center justify-content-center">
				  			
				  			<div class="col-md-4 col-4 header-top-bottom no-padding">
				        		<a href="index.html"><img class="img-fluid" src="img/logo.png" alt="" title="" /></a>			
				  			</div>
				  			<div class="col-md-4 col-4 header-top-right no-padding">
				        		<a class="contact-texts" href="tel:+91 9876543210">+91 9876543210</a>
				        		<a href="tel:+440 123 12 658 439"><span class="lnr lnr-phone-handset"></span></a>
				  			</div>	
				  			<div>
				  			<button><a href="LogoutServlet" value="Logout"> Logout</a> </button>
				  			</div>			  							  			
				  		</div>			  					
		  			</div>
				</div>
	
			    </div> -->
			  </header><!-- #header -->
			  
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								About Us				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start feature Area -->
			<section class="feature-area section-gap" >
				<div class="container" align="center">
					<div class="row section-title">
						<h1>Our Topnotch Features</h1>
						<p>The city of southern California, san diego is locally</p>
					</div>						
					<div class="row justify-content-between align-items-center">
						<div class="col-lg-6 feature-left">
							<img class="img-fluid" src="img/f.jpg" alt="">
						</div>
						<div class="col-lg-6 feature-right">
							<div class="single-feature">
								<h4>Smart Security</h4>
								<p>
									Growing up in Michigan, I was lucky enough to experience one part of the Great Lakes. And let me assure you, they are great. As a photojournalist.
								</p>
							</div>
							<div class="single-feature">
								<h4>Unlimited Colors</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</div>	
							<div class="single-feature">
								<h4>Endless Support</h4>
								<p>
									The diseases most commonly seen in travellers are diarrhoea, malaria if you travel in a malaria-infested area, accidents when travelling.     
								</p>
							</div>														
						</div>
					</div>
				</div>	
			</section>
			<!-- End feature Area -->

			<!-- Start cta Area -->
			<section class="cta-area">
				<div class="container-fluid" align="center">
					<div class="row no-padding">
						<div class="col-lg-6 single-cta cta1 no-padding section-gap relative">
							<div class="overlay overlay-bg"></div>
							<h6 class=text-uppercase>Book an appointment</h6>
							<h1>Get into shape now</h1>
							<a href="booking.jsp" class="primary-btn">Book Now</a>
						</div>
						<div class="col-lg-6 single-cta cta2 no-padding section-gap relative">
							<div class="overlay overlay-bg"></div>
							<h6 class=text-uppercase>Book an appointment</h6>
							<h1>Get into shape now</h1>
							<a href="booking.jsp" class="primary-btn">Book Now</a>			
		
						</div>
					</div>
				</div>	
			</section>
			<!-- End cta Area -->			
					
			<!-- Start testomial Area -->
			<section class="testomial-area section-gap">
				<div class="container">
					<div class="row section-title">
						<h1>Testimonial from our Clients</h1>
						<p>Las Vegas has more than 100,000 hotel rooms to choose from.</p>
					</div>					
					<div class="row">
						<div class="active-testimonial-carusel">
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t1.png" alt="">
								<p class="desc">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware and more. laptop accessory
								</p>
								<h4>Helena Phillips</h4>
								<p>
									CEO at Facebook
								</p>
							</div>
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t2.png" alt="">
								<p class="desc">
									It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its.
								</p>
								<h4>Cordelia Barton</h4>
								<p>
									CEO at Twitter
								</p>
							</div>
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t3.png" alt="">
								<p class="desc">
									About 64% of all on-line teens say that do things online that they wouldn’t want their parents to know about.   11% of all adult internet users visit dating websites.     	
								</p>
								<h4>Carrie Reese</h4>
								<p>
									CEO at Google
								</p>
							</div>	
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t1.png" alt="">
								<p class="desc">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware and more. laptop accessory
								</p>
								<h4>Helena Phillips</h4>
								<p>
									CEO at Facebook
								</p>
							</div>
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t2.png" alt="">
								<p class="desc">
									It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its.
								</p>
								<h4>Cordelia Barton</h4>
								<p>
									CEO at Twitter
								</p>
							</div>
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t3.png" alt="">
								<p class="desc">
									About 64% of all on-line teens say that do things online that they wouldn’t want their parents to know about.   11% of all adult internet users visit dating websites.     	
								</p>
								<h4>Carrie Reese</h4>
								<p>
									CEO at Google
								</p>
							</div>	
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t1.png" alt="">
								<p class="desc">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker, projector, hardware and more. laptop accessory
								</p>
								<h4>Helena Phillips</h4>
								<p>
									CEO at Facebook
								</p>
							</div>
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t2.png" alt="">
								<p class="desc">
									It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its.
								</p>
								<h4>Cordelia Barton</h4>
								<p>
									CEO at Twitter
								</p>
							</div>
							<div class="single-testimonial item">
								<img class="mx-auto" src="img/t3.png" alt="">
								<p class="desc">
									About 64% of all on-line teens say that do things online that they wouldn’t want their parents to know about.   11% of all adult internet users visit dating websites.     	
								</p>
								<h4>Carrie Reese</h4>
								<p>
									CEO at Google
								</p>
							</div>																												
						</div>
					</div>
				</div>	
			</section>
			<!-- End testomial Area -->		

			<!-- Start brands Area -->
			<section class="brands-area">
		
			</section>
			<!-- End brands Area -->

			<!-- Start callto Area -->
			<section class="callto-area section-gap relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row">
						<div class="call-wrap mx-auto">
							<h1>It's never late to start, join us today!</h1>
							<p>
								Thinking about overseas adventure travel? Have you put any thought into the best places to go when it comes to overseas adventure travel? Nepal is one of the most popular places of all.
							</p>
							<a href="booking.jsp" class="primary-btn">Become a Member</a>				
						</div>
					</div>
				</div>	
			</section>
			<!-- End callto Area -->							    			

			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-3  col-md-6 col-sm-6">
							
						</div>
						<div class="col-lg-4  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h4>Contact Us</h4>
								<p>
									55/2,Shiwaji chowk, Kalyan - 421620.
								</p>
								<p class="number">
									012-6532-568-9746 <br>
									012-6532-569-9748
								</p>
							</div>
						</div>						
						<div class="col-lg-5  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								
								<div class="d-flex flex-row" id="mc_embed_signup">


									  <form class="navbar-form" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get">
									    <div class="input-group add-on align-items-center d-flex">
									      	
											<div style="position: absolute; left: -5000px;">
												<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
											</div>
									      
									    </div>
									      <div class="info mt-20"></div>									    
									  </form>
								</div>
							</div>
						</div>						
					</div>
					
				</div>
			</footer>	
			
	</html>