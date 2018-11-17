<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>0
      <%@ page import="com.model.Register" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Register r; %>
  <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	 if(request.getSession(false)==null)
	  response.sendRedirect("Start.jsp");%>

</body>
</html>