<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Order.css">
</head>
<body>
 <div id="wrapper">
  <div id="inputs">
  <div>
<center>
<form name="input" action="DeductServlet" method="post">
  <h1>Order</h1>
  First name: <input type="text" name="firstname" placeholder="Mayuri"><br/>
  <br>
  Last name: <input type="text" name="lastname" placeholder="Patil"><br/>
  <br>
  Address:<input type="email" name="email" placeholder=" 1234 Street City, ST Zip"> <br/>
<br>
Amount:
 <select name='money'>
  <option >100</option>
  <option> 150</option>
  <option>200</option>
  <option >300</option>
</select>
    <p>Pizza toppings (Check all that apply)</p>
    <input type='checkbox' checked>Cheese
    <input type='checkbox'>Mushrooms
    <input type='checkbox'>Pepperoni
    <p>Comments:</br></p>
	<input type="submit" value="Submit" href="#">
</form>
</div>
</div>
</body>
</html>