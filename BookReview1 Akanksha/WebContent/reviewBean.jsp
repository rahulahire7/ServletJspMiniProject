<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books & Beyond</title>
<link rel="stylesheet" type="text/css" href="undecor.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<style>
a{
    display: inline-block;
    color: WHITE;
    text-align: center;
    padding: 14px 16px;   
}
 a:hover {
    background-color: GREEN;	    
}

.dropdown-content a {
    color: WHITE;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: CENTER;
}

.dropdown-content a:hover {background-color: GREEN}

</style>
</head>

<body background=law.jpg;
   background-repeat:no-repeat;
     background-size:cover;>
<font color=WHITE>
<h1 style="font-family:Times New Roman ;font size:24px"><center>BOOKS & BEYOND</center></h1>
<h2><center>Thank You for writing review</center></h2><hr>
<jsp:useBean id="reviewBean" class="com.model.Review" scope="request">
</jsp:useBean>
<jsp:setProperty property="*" name="reviewBean"/>
<!-- display review to user after entering -->
<center><h3>
Book Id Is: ${reviewBean.bookId}<br><br>
Book category Is: ${reviewBean.category}<br><br>
Your Username Is: ${reviewBean.uname}<br><br>
Your review Is: ${reviewBean.review}<br><br></h3>
<a href="welcome.jsp">Go Back</a>
</center>
</font>
</body>
</html>