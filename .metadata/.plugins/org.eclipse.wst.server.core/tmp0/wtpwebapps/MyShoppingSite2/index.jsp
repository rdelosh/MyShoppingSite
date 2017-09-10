
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="beans.User"%>

<%@page import="DB.DBconnection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<title>MyShoppingSite</title>
</head>
<body>


<%@include file="header.jsp"%>


	<div class="container">
<%@include file="includesPage/navbar.jsp" %>

		<h3 id="hottestheadline">Today's Hottest</h3>

		<div id="contentrow" class="hottest row"></div>



	</div>



<%@include file="includesPage/footer.jsp"%>
	<%
		String[][] myarrayofstrings = new String[6][5];

		try {
			
			DBconnection myconn = new DBconnection();
			Connection conn = myconn.getConnection();
			Statement myStmt = conn.createStatement();
			ResultSet myRs = myStmt.executeQuery("select * from products");

			int i = 0;
			while (myRs.next()) {
				for (int j = 0; j < 5; j++) {
					//System.out.println(myRs.getObject(j + 1));
					if (j == 0) {
						myarrayofstrings[i][j] = Integer.toString(myRs.getInt(j + 1));
					} else {
						myarrayofstrings[i][j] = myRs.getString(j + 1);
					}
					
				}
				i++;
			}

		} catch (Exception e) {
			System.out.println("error while accesing db");
			throw new Error(e);
		}
	%>


	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script>

	var content = document.getElementsByClassName("hottest row")[0];
	
	function createnewitem(ID, image, description, price, title){
	var newitem = document.createElement("div");
	var newitemanchor = document.createElement("a");
	var newimage = document.createElement("img");
	var newdescription = document.createElement("p");
	var node = document.createTextNode(title);
	//content.setAttribute("class","col-xs-4");
	
	newimage.src = image;
	
	
	newimage.setAttribute("class","img-responsive");
	newdescription.appendChild(node);
	newitemanchor.setAttribute("href","<%=request.getContextPath()+"/ViewItemServlet?id="%>"+ID);
	newitemanchor.setAttribute("class","thumbnail");
	newitemanchor.appendChild(newimage);
	newitem.appendChild(newitemanchor);
	newitem.appendChild(newdescription);
	newitem.setAttribute("class","item col-sm-4 ");
	content.appendChild(newitem);
	}
	<%for (int s = 0; s < 6; s++) {%>
		createnewitem("<%=myarrayofstrings[s][0]%>","<%=myarrayofstrings[s][1]%>","<%=myarrayofstrings[s][2]%>","<%=myarrayofstrings[s][3]%>","<%=myarrayofstrings[s][4]%>");
	<%}%>
	
	
	
	</script>

</body>
</html>