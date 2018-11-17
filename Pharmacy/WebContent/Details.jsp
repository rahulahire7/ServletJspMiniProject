<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Registration"%>
<%@page import="com.dao.Registrationjdbc"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>
<h3>List of Cust</h3>
<c:if test="${requestScope.message !=null}">
	NOTE : ${message}
</c:if>
<c:if test="${requestScope.data !=null and
 not empty requestScope.data}">
<table border="1" cellpadding="3">
	<tr>
		<td>Name</td>
		<td>Email</td>
		<td>UserName</td>
		<td>Password1</td>
				<td>Password2</td>
		
	</tr>
	<c:forEach items="${requestScope.data}" var="e"> 		
	<tr>
		<td>${e.getName()}</td>
		<td>${e.getEmail()}</td>
		<td>${e.getUsername()}</td>
		<td>${e.getPassword1()}</td>
		<td>${e.getPassword2()}</td>
		
	</tr>
	</c:forEach>
</table></c:if>

<%
Object o=request.getAttribute("data");
List lo=(List)o;

	Iterator it=lo.iterator();
	while(it.hasNext())
	{
		Registration r=(Registration)it.next();
		out.println(r.getName());
	}	
%>

<%
Registrationjdbc db = new Registrationjdbc();
List<Registration> l = null;
l = db.displayAll();
Registration r ;
%>

<table border =1 , align = "center">
 <tr>
   <td>Name</td>
   <td>Email</td>
   <td>Username</td>
   <td>Password1</td>
   <td>Password2</td>
   </tr> 
   
   
      <%
      for(int i = 0; i<l.size(); i++)
      {
    	  r = (Registration)l.get(i);
      %>
      <tr>
      <td><%=r.getName()%> </td>
      <td><%=r.getEmail() %></td>
      <td> <%=r.getUsername() %></td>
      <td><%=r.getPassword1() %></td>
      <td><%=r.getPassword2() %></td>
      
      
    </tr>

<%} %>
</table>





</body>
</html>