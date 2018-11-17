<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="style.css">
<style type="text/css">
.parent{

}
</style>
<title>Insert title here</title>
</head>
<body>
<h1 align="center"><strong>WELCOME TO YOUR BANK</strong></h1><hr>
<div class= "search">
<form action="SearchServlet" method="get">
	<table>
		<tr>
			<th>Search Here</th>
		</tr>
		<tr> 
			<td><input type="text" name="search"></td> 
			<td><input type="submit" value="Search"></td>
		</tr>
	</table>
</form>
</div>

<form action="DisplayServlet" method="get">
	<table>
		<tr>
			<input type="submit" value="Display">
		</tr>
		</table>
</form>


<form action="WithdrawServlet">
      <p><input type="text" name="money"></p>
      <input type="submit"  value="Withdraw">
</form>

<form action="LogoutServlet" method="get">
	<table>
		<tr>
			<td><input type="submit" value="Logout"></td>
		</tr>
	</table>
</form>

<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

     if(session.getAttribute("str")==null)
    	 response.sendRedirect("Login.jsp");
    
   String str = (String)request.getSession().getAttribute("str");
%>





</body>
</html>