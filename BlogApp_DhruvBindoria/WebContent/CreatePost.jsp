<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.css">
</head>
<body>
	<form action="CreatePostServlet">
		Title: <input type="text" name="title">
		Body: <textarea rows="5" cols="50" name="paragraph"></textarea>
		<input type="submit" value="Post">
	</form>
	<a href="Home.jsp">Go to Home</a> &nbsp; &nbsp; &nbsp; <a href="Profile.jsp">Go back to profile</a>
</body>
</html>