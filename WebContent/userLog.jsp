<font color="red">User Logged Successfully
	
<% UserBean currentUser = ((UserBean) (session.getAttribute("currentSessionUser")));%> 
   Welcome <%= currentUser.getName() + " " + currentUser.getEmail() %>

<jsp:useBean id="date" class="java.util.Date" /> 
<p>The date/time is <%= date %>

</p>

</font></center>
