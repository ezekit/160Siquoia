
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="jSiquoia.UserBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title></title>
</head>

<body><center>
	<font color="#ffffff">User Logged Successfully
	
<% UserBean currentUser = ((UserBean) (session.getAttribute("currentSessionUser")));%> 
   Welcome <%= currentUser.getName() + " " + currentUser.getEmail() %>

<jsp:useBean id="date" class="java.util.Date" /> 
<p>The date/time is <%= date %>

</p>

</font></center>
</body>

</html>