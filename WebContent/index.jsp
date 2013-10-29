<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
	<head> 
	<title>Page Title</title> 
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<link rel="stylesheet" media="screen" href="http://openfontlibrary.org/face/swis-bold" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" media="screen" href="http://openfontlibrary.org/face/odstemplik" rel="stylesheet" type="text/css"/>
<style>
.header {
   background-color:#435e69;
}
.bodycont {
   background-color:#c3dcbf;
}
h.logo{ 
   font-family: 'SwIS Bold'; 
   font-weight: bold; 
   font-style: normal; 
   font-size: 100px;
   color:#ffffff;
   letter-spacing:-4px;
}
label{
   font-family: 'SwIS Bold'; 
   font-weight: bold; 
   font-style: normal; 
   font-size: 12px;
   color:#000;
   letter-spacing:-1px;
}
</style>
</head> 
<body> 

<!-- Start of first page -->
<div data-role="page" id="log">
	<jsp:include page="login.jsp"/>
	<div data-role="footer">
		<h4>SQ 1 Team</h4>
	</div><!-- /footer -->
</div><!-- /page -->

<!-- Start of second page -->
<div data-role="page" id="reg">
		<jsp:include page="registration.jsp"/>
	</div><!-- /footer -->
</div><!-- /page -->


<!-- Start of third page -->
<div data-role="page" id="acc">
		<jsp:include page="account.jsp"/>
	</div><!-- /footer -->
</div><!-- /page -->





</body>
</html>