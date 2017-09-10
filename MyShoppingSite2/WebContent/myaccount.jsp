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
<style>
.tabs-left{
	border-bottom: none;
	padding-top: 2px;
}

.tabs-left {
	border-right: 1px solid #ddd;
}


.tabs-left>li{
	float: none;
	margin-bottom: 2px;
}

.tabs-left>li {
	margin-right: -1px;
}



.tabs-left>li.active>a, .tabs-left>li.active>a:hover, .tabs-left>li.active>a:focus
	{
	border-bottom-color: #ddd;
	border-right-color: transparent;
}


.tabs-left>li>a {
	border-radius: 4px 0 0 4px;
	margin-right: 0;
	display: block;
}

</style>
</head>
<body>
					<%
					if(session.getAttribute("user")==null){
						response.sendRedirect(request.getContextPath()+"/index.jsp");
					}
					%>	
	<%@include file="header.jsp"%>
	
	<div class="container">
		<%@include file="includesPage/navbar.jsp"%>
		
		<div id="myaccountcontent" class="col-sm-6">
			<h3>My Account</h3>
			<hr />
			<div class="col-xs-3">
				<!-- required for floating -->
				<!-- Nav tabs -->
				<ul class="nav nav-tabs tabs-left sideways">
					<li class="active"><a href="#home-v" data-toggle="tab">Account Details</a></li>
					<li><a href="#profile-v" data-toggle="tab">Change Password</a></li>
					<li><a href="#messages-v" data-toggle="tab">Contact Support</a></li>
					
				</ul>
			</div>

			<div class="col-xs-9">
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="home-v">Account Details</div>
					<div class="tab-pane" id="profile-v">Change Password</div>
					<div class="tab-pane" id="messages-v">Contact Support</div>
					
				</div>
			</div>

			<div class="clearfix"></div>

		</div>
	</div>
		


		<%@include file="includesPage/footer.jsp"%>



		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script>
	

		
	</script>
</body>
</html>