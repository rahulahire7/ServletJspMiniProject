<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}

</style>
<title>Result</title>
</head>
<body>


   <c:if test="${requestScope.result >= 8}">
   <c:import url="recommender1.jsp"></c:import>
   <h3 align="center">Passed</h3>
</c:if>
<c:if test="${requestScope.result < 5}">
 <c:import url="recommender.jsp"></c:import>
   <h3 align="center">Failed</h3>
</c:if>




</body>
</html>