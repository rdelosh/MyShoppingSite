<%@page import="DB.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.ListIterator"%>
<%@page import="beans.User"%>
<%@page import="beans.Product"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<title>MyShoppingSite</title>
<style>
.cartbutton{
	
	background-color: orange;
	color:black;
	border-radius:25px;
	font-weight:900;
	
	
}
.newdiv{
	padding-bottom:30px;
}
.groupofbuttons{
	padding-bottom:50px;
}
#groupcolumntitle{
	padding-bottom:30px;
}
</style>

</head>

<body>


<%@include file="header.jsp"%>


	<div class="container">
	<%@include file="includesPage/navbar.jsp" %>

		<h3>View Cart</h3>

		<div class="row" id="groupofelements">
			<div class="row" id="groupcolumntitle">
				<div class="col-xs-2">
				<h3>Item</p>
				</div>
				<div class="col-xs-6">
				<h3>Item Description</p>
				</div>
				<div class="col-xs-2">
				<h3>Qty</p>
				</div>
			
			</div>
					
					
					
						
		</div>
		<div class="groupofbuttons pull-right">
			<button class="cartbutton">Continue Shopping</button>
			<button class="cartbutton">Update Cart</button>
			<button class="cartbutton">Proceed to Checkout</button>
		</div>
	

	</div>



<%@include file="includesPage/footer.jsp"%>



	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script>
		var groupofelements = document.getElementById("groupofelements");
		//var columntitlediv = document.createElement("")
		
		function createCartElement(id,imagepath,title,qty){
			var newdiv = document.createElement("div");
			newdiv.setAttribute("class","row newdiv");
			var node = document.createTextNode(title);
			var nodeqty = document.createElement("input");
			nodeqty.setAttribute("value",qty);
			nodeqty.setAttribute("type","text");
			nodeqty.setAttribute("size","1");
			var newtitle = document.createElement("p");
			var newimage = document.createElement("img");
			var newsubdivimage = document.createElement("div");
			var newsubdivtitle = document.createElement("div");
			var newsubdivqty = document.createElement("div");
			newsubdivimage.setAttribute("class","col-xs-2");
			newsubdivtitle.setAttribute("class","col-xs-6");
			newsubdivqty.setAttribute("class","col-xs-1");
			
			newimage.setAttribute("src",imagepath);
			
			newsubdivimage.appendChild(newimage);
			newimage.setAttribute("class","img-responsive");
			newsubdivtitle.appendChild(newtitle);
			newsubdivqty.appendChild(nodeqty);
			
			
			newtitle.appendChild(node);
			newdiv.appendChild(newsubdivimage);
			newdiv.appendChild(newsubdivtitle);
			newdiv.appendChild(newsubdivqty);
			
			groupofelements.appendChild(newdiv);
		}
		
		<%
		if(session.getAttribute("listofitems")!=null){
			LinkedList<Product> mylistofitems = (LinkedList<Product>) session.getAttribute("listofitems");
			ListIterator<Product> mylistiterator = mylistofitems.listIterator();
			while(mylistiterator.hasNext()){		
				Product myproduct = mylistiterator.next();
				
		%>
			
			createCartElement("<%=myproduct.getId()%>","<%=myproduct.getImagepath()%>","<%=myproduct.getTitle()%>","<%=myproduct.getQty()%>");
			
		<%
			}
		}
		%>
		
	</script>

</body>
</html>

