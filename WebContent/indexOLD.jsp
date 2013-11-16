<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SiQuoia</title>
<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/red.min.css" />
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile.structure-1.3.2.min.css" />


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Josefin+Sans:regular,bold' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Goudy+Bookletter+1911' rel='stylesheet' type='text/css' />
<link href="//fonts.googleapis.com/css?family=Sorts+Mill Goudy:400italic,400" rel="stylesheet" type="text/css">
<link rel="stylesheet" media="screen" href="http://openfontlibrary.org/face/swis-bold" rel="stylesheet" type="text/css" />
<script>
	$(document).ready(function() {
		/*	$(".page2, .page3, .page4, .page5").hide();
		$("#log").click(function() {
			$(".page2, .page3, .page4, .page5").hide();
			$(".page1").show("slow");
			
		});

	
		

		$('#logoutdiv form').click(function() {
			$.post('logout', data, function(returnData) {
				$('#maindiv').load(returnData).trigger("create").show();	
			});
		});*/
		
		/*
		$('#logindiv form').submit(function() {
			// gather the form data
			var data = $(this).serialize();
			// post data
			$.post('login', data, function(returnData) {
				// insert returned html
				if (returnData != 1) {      
					$('#body').html(returnData).trigger("create").show();					
				} else {
					$('#welcometext').load("loginInvalid.jsp");
				}
			});
			
			 clearForm();
		     return false; // stops browser from doing default submit process
		});*/

	
		$('#regisdiv form').submit(function() {
				var data = $(this).serialize();
				$.post('registration', data, function(returnData) {
				}).done(function(returnData) {
					if (returnData == 1) {
						$(".page1, .page2, .page4").hide();
						$(".page3").show("slow");
						clearForm();
					} else {
						$('#regerror').html(returnData).fadeIn("slow");
						clearForm();
					}
				});
				return false;
			});
	
		
		function clearForm() {
			$(':input', '#regform').not(':button, :submit, :reset').val('');
		};
	});
	
</script>
</head>
<body>
<div id="maindiv">
	<div data-role="page" data-theme="a">
		<jsp:include page="nav.jsp" />

		<!--************************* html body -->


		<div class="page1" id="body">
			<!--  jsp:include page="login.jsp" /-->
			<div data-role="content" id="logpage">
	<h2>Welcome To SiQuioa interactive quiz game!</h2>
	<div id="welcometext">Welcome Guest! Please login below </div>
	<!-- div id="errorlog"><p class="err">Sorry, you entered a wrong username or password!</p></div-->
	<div data-role="fieldcontain" class="ui-hide-label" style="width: 60%"  id="logindiv">
		<form action="login">
			<table width="70%">
				<tr>
					<td><label for="umail">Username:</label> <input type="text"
						name="umail" id="umail" value="" placeholder="Email" /></td>
				</tr>
				<tr>
					<td><label for="upass">Password:</label> <input
						type="password" name="upass" id="upass" value=""
						placeholder="Password" />
						<div style="width: 200px"><br>
							<input type="submit" value="submit">
						</div></td>
				</tr>
			</table>
		</form>
		If your a new user click here to <a href="#reg" id="reg">register!</a><br>
		<br>
	</div>

</div>

			
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

		</div>
		<!-- end of footer -->
		<div>
			<!-- end of page -->
		</div>
	</div>
</div>
</body>
</html>
