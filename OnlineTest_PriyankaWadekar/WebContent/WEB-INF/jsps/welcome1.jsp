<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The Public-Library Website Template | Home :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
          <link rel="stylesheet" href="css/bootstrap.min.css">

      <link rel="stylesheet" href="css/style1.css">
      <link rel="stylesheet" href="css/styles.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link href="css/easy-responsive-tabs.css" rel="stylesheet">
 <script src="js/jquery.easyResponsiveTabs.js"></script>
  

  
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

<c:import url="header.jsp"></c:import>
<div class="btm_border">
<div class="h_bg">
<div class="wrap">
	<div class="header">
		
		<div class="social-icons">
			<font color="brown" size="4">Welcome Admin</font>
		</div>	
		<div class="clear"></div>
	</div>
	
     <div style="position:absolute;top:120px;left:1080px">
      <a href='${pageContext.request.contextPath}/logout'>Logout</a>
     </div>
     
	<div class='h_btm'>
		<div class='cssmenu'>
			<ul>
			    
			    <li class='has-sub'><a href='<%=request.getContextPath() %>/AdminController?action=display_students_details'><span>Display Students Details</span></a></li>
			    <li class='has-sub'><a href='<%=request.getContextPath() %>/AdminController?action=delete_students_details'><span>Delete Students Details</span></a></li>
			     
			   
			 	<div class="clear"></div>
			 </ul>
	</div>
	
	<div class="clear"></div>
</div>
</div>
</div>
</div>
</body>
</html>