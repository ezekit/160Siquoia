<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
	<head> 
	<title>Page Title</title> 
	<link rel="stylesheet" href="css/default.css" />
	<link rel="stylesheet" href="css/red.min.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile.structure-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	<link href='http://fonts.googleapis.com/css?family=Josefin+Sans:regular,bold' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Goudy+Bookletter+1911' rel='stylesheet' type='text/css' />
	<link href="//fonts.googleapis.com/css?family=Sorts+Mill Goudy:400italic,400" rel="stylesheet" type="text/css">
	<link rel="stylesheet" media="screen" href="http://openfontlibrary.org/face/swis-bold" rel="stylesheet" type="text/css"/>
	<script>
		$(document).ready(function() {
			$(".page2, .page3, .page4").hide();
			$("#log").click(function() {
				$(".page2, .page3, .page4").hide();
				$(".page1").show("slow");
			});
			$("#reg").click(function() {
				$(".page1, .page3, .page4").hide();
				$(".page2").show("slow");
			});
			$("#acc").click(function() {
				$(".page1, .page2, .page4").hide();
				$(".page3").show("slow");
			});
			$("#pmath").click(function() {
				$(".page1, .page2, .page3").hide();
				$(".page4").show("slow");
			});
			

			$('#222').click(function() {
				$('#welcometext').load('userLog.jsp');});

			$('#sub form').submit(function(){

			      // gather the form data
			      var data=$(this).serialize();
			      // post data
			      $.get('login', data , function(returnData){
			                  // insert returned html 
			                  $('#welcometext').html( returnData);
			      });
			      return false; // stops browser from doing default submit process
			});
			
 
		});
		
	</script>
</head> 
<body> 
	<div data-role="page" data-theme="a"> 
		<jsp:include page="nav.jsp"/>	

<!--************************* html body -->


	<div class="page1" id="body">
		<jsp:include page="login.jsp" />
	</div>

	<div class="page2">
		<jsp:include page="registration.jsp" />
	</div>

	<div class="page3">
		<jsp:include page="account.jsp" />
	</div>

	<div class="page4">
		<jsp:include page="pmath.jsp" />
	</div>

<!-- *********************** html foot -->
	<div data-role="footer" data-theme="a">
	<center>
		<table>
			<tr>
				<td><footer>
						<center>[ CS 160 SQ1-TEAM FALL 2013 PROJECT Contact
							SQ1Team20013@gmail.com | facebook | google+ ]
					</footer>
					</center></td>
			</tr>
		</table>
	</center>
	
	</div><!-- end of footer -->
<div><!-- end of page -->
</div>
</body>
</html>
