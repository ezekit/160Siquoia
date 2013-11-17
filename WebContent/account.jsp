
<jsp:include page="header.html" />
<div data-role="page" data-theme="a">
<jsp:include page="nav.jsp" />
<!-- ALWAYS ADD HEADER ABOVE  -->
	
	

<div data-role="content" data-theme="c">
	<%@ page import="jSiquoia.UserBean" %>
	<jsp:useBean id="userbean" class="jSiquoia.UserBean" scope="session"/>
	<jsp:setProperty name="userbean" property="*"/> 
	<%
		//allow access only if session exists
		String user = null;
		if (session.getAttribute("currUser") == null) {
			response.sendRedirect("index.jsp");
		} else
		
		{
		//user = (String) session.getAttribute("currUser");
		UserBean bean = (UserBean) session.getAttribute("bean");
		userbean = bean;
		
		String userName = null;
		String sessionID = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("currUser"))
					userName = cookie.getValue();
				if (cookie.getName().equals("JSESSIONID"))
					sessionID = cookie.getValue();
			}
			}

		}
		
	%>

	<!-- Your Session ID=< %=sessionID% -->
	<!-- User=< %=user% -->
	
	
	<div id="logoutdiv"> 
	<form action="logout">
		<input type="submit" value="logout" id="logoutbut">
	</form>
	</div>
	
	
	<br><br>
	<div class="bodycontent">
		<table cellpadding=2 cellspacing=2>
			<tr>
				<td valign=top><img
					src="${pageContext.request.contextPath}/images/ukn.jpg" width=90
					height=90 border=2 />
				<td valign=top>
					<table>
						<tr>
							<td><strong>Name:</strong>
							<td><%=userbean.getName()%></td>
						</tr>
						<tr>
							<td><strong>Email:</strong>
							<td><%=userbean.getEmail()%></td>
						</tr>
						<tr>
							<td><strong>About Me:</strong>
							<td>I despised stupidity</td>
						</tr>
						<tr>
							<td><strong>Login Date:</strong>
							<td><%=userbean.getDate()%></td>
						</tr>
						<tr>
							<td><strong>Total Tokens:</strong>
							<td><%=userbean.getToken()%></td>
						</tr>
						<tr>
							<td><strong>Level:</strong>
							<td><%=userbean.getLevel()%></td>
						</tr>
						<tr>
							<td><strong>Score:</strong>
							<td><%=userbean.getScore()%></td>
						</tr>
						<tr>
							<td><strong>Rank: </strong>
							<td><h><%=userbean.getRank()%></h></td>
						</tr>
					</table> <input type="button" value=" Click to edit account information " /><br>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td><h>Badges Earned:</h><br> <img
					src=${pageContext.request.contextPath}/images/pin0.png width=50
					height=50> <img
					src=${pageContext.request.contextPath}/images/pin.png width=50
					height=50> <img
					src=${pageContext.request.contextPath}/images/pin2.png width=50
					height=50>
			</tr>
			</td>
		</table>


	</div>
</div>



<!-- ALWAYS DEL FOOTER BELOW -->	
<jsp:include page="footer.html" />


