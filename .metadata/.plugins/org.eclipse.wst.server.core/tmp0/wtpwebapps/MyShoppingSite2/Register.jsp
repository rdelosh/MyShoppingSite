<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<title>MyShoppingSite - Register</title>
</head>
<body>

	<%@include file="header.jsp"%>

	<div class="container">
		<%@include file="includesPage/navbar.jsp"%>



		<div class="container">
			<h1>Register</h1>
			
			<form id="registerform" action="RegisterServlet" method="POST">
				<label>First Name</label><input type="text" placeholder="First Name"
					class="form-control" name="firstname"></input> <label>Last
					Name</label><input type="text" placeholder="Last Name" class="form-control"
					name="lastname"></input> <label>E-mail</label><input type="text"
					placeholder="E-mail" class="form-control" name="email"></input> <label>Password</label><input
					type="password" class="form-control" name="password"></input> <label>Confirm
					Password</label><input type="password" class="form-control"
					name="cpassword"></input> <input type="submit" value="Submit"
					class="btn"></input>
			</form>
			<a href="login.jsp">Go Back to the Login Page</a>
		</div>

	</div>


	<%@include file="includesPage/footer.jsp"%>



	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>