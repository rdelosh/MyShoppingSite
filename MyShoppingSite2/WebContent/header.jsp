
<div id="myheader" class="row">
		<div class=container>
			<div class="col-xs-8">
				<a href="index.jsp"><img src="images/MyShoppingSite.png" height="80px" width="250px"
					class="img-responsive"></a>
			</div>

			<div id="mybuttons" class="col-xs-4 pull-right">
			
			<a href="viewcart.jsp">Cart</a>
			
			
								<%
								
				        		if (session.getAttribute("user") == null ){// THen new user, show join now
				        			
				        			System.out.println("Usersession OFF" + session.getAttribute("user"));
				            %>
								<jsp:include page="includesPage/LoginRegister.jsp"></jsp:include>
								<%
				        }else {
				        	System.out.println("Usersession ON" + session.getAttribute("user"));
				        	
				            %>
				            
								<jsp:include page="includesPage/logout.jsp"></jsp:include>
								<%
				        }
				        %>
			</div>
		</div>
	</div>




