<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
    <title>
        HTML Document Structure
    </title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
.user-icon {
	top:153px; /* Positioning fix for slide-in, got lazy to think up of simpler method. */
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/user-icon.png') no-repeat center;	
}

.pass-icon {
	top:201px;
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/pass-icon.png') no-repeat center;
}


</style>
</head>
<body>

<div id='cssmenu'>
<center><ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul></center>
</div>

<div style="position:absolute;left:500px;top:90px">
Don`t have an account, click here to <a href='${pageContext.request.contextPath}/register'>Register</a>
</div>

<div id="wrapper">

	<form name="login-form" class="login-form" action="checkLogin" method="post">
	
		<div class="header">
		<h1>Login </h1>
		<div>
			<font color="red" size="3"><c:out value="${errorMessage }"/></font>
			</div>
		<span></span>
		</div>
	
		<div class="content">
		<input name="username" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
		
		</div>
	
	</form>

</div>
<div class="gradient"></div>


</body>
</html>