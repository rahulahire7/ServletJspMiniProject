<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EMI Repayment</title>
<link rel="icon" type="text/image" href="../uploads/images/prjtlogo.png">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</head>
<body>
<!-- 	NAVIGATION BAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		style="margin-bottom:50px"> <a class="navbar-brand" href="#">EMI
		Repayment</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	</nav> 
<!-- 	END OF NAVIGATION BAR -->
	<div class="row">
		<div class="container">
		<%
			if(session.getAttribute("id")!=null) { //CHECK IF SESSION SET
		%>
<!-- 		USER EMI DETAILS CARD -->
			<div class="card">
<!-- 			TABLE FOR EMI DETAILS -->
				<table class="table table-borderless">
<!-- 				USER NAME -->
					<thead> 
						<th colspan="2"><%=session.getAttribute("cname") %>&nbsp;EMI Details</th>
					</thead>
					<tbody>
<!-- 					ROW FOR PRINCIPAL -->
						<tr>
							<th>Principal</th>
							<td><%=session.getAttribute("principal") %></td>
						</tr>
<!-- 						ROW FOR INSTALLMENTS -->
						<tr>
							<th>Total Installments Left</th>
							<td><%=session.getAttribute("total_installments") %></td>
						</tr>
<!-- 						ROW FOR INTEREST PERCENTAGE -->
						<tr>
							<th>Interest Percentage</th>
							<td><%=session.getAttribute("total_interest") %>&#37;</td>
						</tr>
<!-- 						BALANCE DUE -->
						<tr>
							<th>Total Amount Due</th>
							<td><%=session.getAttribute("payback") %></td>
						</tr>
					</tbody>
				</table>
			</div>  <!-- END OF DETAIL TABLE  -->
	
			<form action="EmiPayServlet" method="post">
				<div class="form-group">
					<label for="inputAmount">Pay EMI</label> <select id="inputAmount"
						class="form-control" name="inputAmount">
						<option selected>Choose...</option>
						<option value="<%=session.getAttribute("emi")%>"><%=session.getAttribute("emi") %></option>
					</select>
				</div>
				<button type="submit" class="btn btn-primary" value="pay">Pay</button>
			</form>
			<%} else { %>
			<div class="card">
				<h3>Login First</h3>
			</div>
			<%} %>
		</div>
	</div>
</body>
</html>