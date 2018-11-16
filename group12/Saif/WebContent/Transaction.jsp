<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction</title>
</head>
<body>



<form action="TransactionServlet">
<tr>
    <td>Enter Your Registration No</td>
    <td><input type="text" name="rno"></td>
  </tr>
  <tr>
    <td>Enter Withdraw Amount</td>
    <td><input type="text" name="ball"></td>
  </tr>
  <tr>
    <td><input type="submit" value="Withdraw"></td>
  </tr>

</form>

</body>
</html>