<%@page import="DB.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="beans.User"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<title>MyShoppingSite</title>
</head>
<style>
#cartbutton{
	
	background-color: orange;
	color:black;
	border-radius:25px;
	font-weight:900;
	
}
#title{
	margin:10 0 30 0;
	text-align: left;
	
}

</style>
<body>


<%@include file="header.jsp"%>


	<div class="container">
	<%@include file="includesPage/navbar.jsp" %>

		<h3>View Item</h3>

		<div class="row">
			<div class="col-sm-4">
				<img id="imageproducts" class="img-responsive" src="<%=(String)(request.getAttribute("imagepath"))%>"></img>
			</div>
			<div class="col-sm-6" >
				<div class="row">
					<h1 id="title"><%=(String)(request.getAttribute("title")) %></h1>
				</div>
				<div class="row">
					<div class="col-sm-3 pull-right">
						<a href="AddToCartServlet?idtocart=<%=(Integer)(request.getAttribute("id")) %>" id="cartbutton">Add to Cart</a>
						<h1 id="price">$<%=(double)(request.getAttribute("price")) %></h1>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<p><%=(String)(request.getAttribute("description")) %></p>
		</div>
	

	</div>



<%@include file="includesPage/footer.jsp"%>



	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script>
		
	</script>

</body>
</html>