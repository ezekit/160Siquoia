

	<%
		//allow access only if session exists
		String user = null;
		if (session.getAttribute("currentSessionUser") == null) {
			response.sendRedirect("login.jsp");
		} else
			user = (String) session.getAttribute("currentSessionUser");
		String userName = null;
		String sessionID = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user"))
					userName = cookie.getValue();
				if (cookie.getName().equals("JSESSIONID"))
					sessionID = cookie.getValue();
			}
		}
	%>
	<h3>
		Hi
		<%=userName%>, Login successful. Your Session ID=<%=sessionID%></h3>
	<br> User=<%=user%>
	
	
	