<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style type="text/css">

body { 
  background: black;
}

h1,label {
	color: white;
	font-weight: bolder;
	margin-top: 0px;
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
  
	<form>
  <div class="form-group">
    <label for="exampleInputEmail1" class="col-sm-2>Email address</label><div class="col-sm-10">
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small></div>
     </div>
  
  <div class="form-group">
   // <label for="exampleFormControlSelect2"> Select</label>
    <select >//multiple class="form-control" id="exampleFormControlSelect2">
      <option>HAir Style</option>
      <option>Hair Cut</option>
      <option>HAIR cOLOR</option>
      </select>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>