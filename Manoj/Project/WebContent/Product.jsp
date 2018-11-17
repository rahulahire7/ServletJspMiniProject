<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.dao.*,java.util.*,com.model.Product,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,javax.servlet.http.HttpSession;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   <!-- <title>Bootstrap 4, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

   <!-- <link href="css/bootstrap.min.css" rel="stylesheet">-->
  <!--  <link href="css/style.css" rel="stylesheet">-->

<link rel="stylesheet" type="text/css" href="css.css">

</head>
<body>
<a action="Welcome.jsp"></a>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1>
					Medikare <h6>Medical Supplies and Support</h6>
				</h1>
			</div>
			<nav class="navbar navbar-default">
  <div class="container-fluid">
   
  
			<!--take price and stock from db-->
			<%!Product p=null; int temp;%>
			<%
			
			DBApplication db=new DBApplication();
			List<Product> lst=new LinkedList<Product>();
			
			List<Product> i=db.prodgetAllData(lst);
			Iterator<Product> itr=i.iterator();
			while(itr.hasNext())
			{
				System.out.println("dbsave3");	
				 p=itr.next();
				// temp=p.getStock();
			
			//System.out.println(temp);
			}
			%>
			
			<p>MRP <%=p.getPrice()%> </p>
			<p>Stock <%=p.getStock()%></p>
	
			Quantity <input type="text" >
			<%! int a; int finalprod; %>
			<%
			if(session.isNew() )
			{
			 a=(Integer) session.getAttribute("qty");
			finalprod=temp-a;
			}
			%>
			<%
			//DBApplication db=new DBApplication();
			//List<Product> lst=new LinkedList<Product>();
			
			List<Product> ib=db.prodgetAllData(lst);
			Iterator<Product> ittr=ib.iterator();
			while(ittr.hasNext())
			{
				System.out.println("pddbsave3");	
				 p=ittr.next();
				// temp=p.getStock();
			
			//System.out.println(temp);
			}
			%>
			<a  href="Index.jsp"><button type="button" class="btn btn-success">Buy</button></a>
			
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>