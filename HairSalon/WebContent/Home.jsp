<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hair Salon</title>
<link rel="stylesheet" href="/lib/w3.css">

</head>
<style>
body { 
  background: black;
  font-family: helvetica, arial, serif;
  font-size: 13px;
  text-transform: uppercase;
  text-align: center;
}
h1 {
	color: white;
	text-align: center;
	font-weight: bolder;
	margin-top: 0px;
}
.mySlides {
   text-align: center;
display: block;}
.w3-left, .w3-right, .w3-badge {cursor:pointer

}
.w3-badge {height:13px;width:13px;padding:0px; 
}
#grad22{
align: center;

}
.wrap {
  display: inline-block;
  -webkit-box-shadow: 0 0 70px #fff;
  -moz-box-shadow: 0 0 70px #fff;
  box-shadow: 0 0 70px #fff;
  margin-top: 0px;
}



a {
  text-decoration: none;
  color: #fff;
  display: block;
}

ul {
  list-style: none;
  position: relative;
  text-align: left;
}

li {
  float: left;
}



ul:before,
ul:after {
    content: " ";
    display: table;
}

nav{
  position: relative;
  background: #2B2B2B;
  background-image: -webkit-linear-gradient(bottom, #2B2B2B 7%, #333333 100%);
  background-image: -moz-linear-gradient(bottom, #2B2B2B 7%, #333333 100%);
  background-image: -o-linear-gradient(bottom, #2B2B2B 7%, #333333 100%);
  background-image: linear-gradient(bottom, #2B2B2B 7%, #333333 100%);
  text-align: center;
  letter-spacing: 1px;
  text-shadow: 1px 1px 1px #0E0E0E;
  -webkit-box-shadow: 2px 2px 3px #888;
  -moz-box-shadow: 2px 2px 3px #888;
  box-shadow: 2px 2px 3px #888;
  border-bottom-right-radius: 8px;
  border-bottom-left-radius: 8px;
}

/* prime */
ul.primary1 li a {
  display: block;
  padding: 20px 30px;
  border-right: 1px solid #3D3D3D;
}

ul.primary1 li:last-child a {
  border-right: none;
}

ul.primary1 li a:hover {
  
  color: #000;
}

/* subs */
ul.sub1 {
  position: absolute;
  z-index: 200;
  box-shadow: 2px 2px 0 #BEBEBE;
  width: 35%;
  display:none;
}

ul.sub1 li {
  float: none;
  margin: 0;
}

ul.sub1 li a {
  border-bottom: 1px dotted #ccc;
  border-right: none;
  color: #000;
  padding: 15px 30px;
}

ul.sub1 li:last-child a {
  border-bottom: none;
}

ul.sub1 li a:hover {
  color: #000;
  background: #eeeeee;
}

/* sub display*/
ul.primary1 li:hover ul {
  display: block;
  background: #fff;
}

/* keeps the tab background white */
ul.primary1 li:hover a {
  background: #fff;
  color: #666;
  text-shadow: none;
}

ul.primary1 li:hover > a{
  color: #000;
} 

@media only screen and (max-width: 600px) {
  .decor {
    padding: 3px;
  }
  
  .wrap {
    width: 100%;
    margin-top: 0px;
  }
  
   li {
    float: none;
  }
  
  ul.primary1 li:hover a {
    background: none;
    color: #8B8B8B;
    text-shadow: 1px 1px #000;
  }

  ul.primary1 li:hover ul {
    display: block;
    background: #272727;
    color: #fff;
  }
  
  ul.sub1 {
    display: block;  
    position: static;
    box-shadow: none;
    width: 100%;
  }
  
  ul.sub1 li a {
    background: #272727;
    border: none;
    color: #8B8B8B;
  }
  
  ul.sub1 li a:hover {
    color: #ccc;
    background: none;
  }
}
</style>
<h1 >Hair Salon</h1>
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
<div id="grad22">
<div class="w3-content w3-section" style="max-width:445px">
  
<img class="mySlides w3-animate-fading" src="css/img51.jpg" style="width:300%"  "height:10%" >


 <img class="mySlides w3-animate-fading" src="css/img52.jpg" style="width:300%" height:10% >
<img class="mySlides w3-animate-fading" src="css/img53.jpg" style="width:300%" height:10% >
<img class="mySlides w3-animate-fading" src="css/img54.jpg" style="width:300%" height:10% >
</div>
</div>
<script>
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
    setTimeout(carousel, 2000);
}
</script>
<style>

#nav { 
width:100%;
margin:0 left;
list-style:none;
}
#nav li{
float:left;
}
#nav a {
display:block;
text-align:center;
width:150px; /* fixed width */
text-decoration:none; 
}
ul.bottom{
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: black;
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

/* Change the link color to #111 (black) on hover */
li  a:hover {
    background-color: red;
}
i{
    border: solid white;
    border-width: 0 3px 3px 0;
    display: inline-block;
    padding: 3px;
}
.down {
    transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
}


</style>

</body>
</html>









