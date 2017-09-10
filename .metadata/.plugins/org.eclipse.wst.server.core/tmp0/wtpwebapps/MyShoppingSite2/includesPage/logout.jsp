<a href="myaccount.jsp" ><%=((beans.User)(session.getAttribute("user"))).getFname() %> 
<%=((beans.User)(session.getAttribute("user"))).getLname() %></a>
<a href="LogoutServlet" class="btn">Log out</a>
