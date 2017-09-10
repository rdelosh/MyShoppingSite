<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


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
	<jsp:useBean id="randomuser" class="beans.User" scope="session"></jsp:useBean>
	
	
	
	<%@include file="header.jsp"%>

	<div class="container">
		<%@include file="includesPage/navbar.jsp"%>




		<h1>Login</h1>

		<form role="form" id="registerform" action="LoginServlet"
			method="POST">
			<div class=form-group>
				<label>E-mail</label> <input type="text" class="form-control"
					placeholder="johndoe@yahoo.com" name="email"></input>
			</div>
			<div class=form-group>
				<label>Password</label> <input type="password" name="password"
					class="form-control"></input>
			</div>
			<input type="submit" value="Submit" class="btn"></input>

		</form>
		<a href="login.jsp">Go Back to the Login Page</a>


	</div>


	<%@include file="includesPage/footer.jsp"%>



	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>