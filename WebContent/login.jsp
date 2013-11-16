
<div class="page1" id="body">

<div data-role="content" id="logpage">
	<h2>Welcome To SiQuioa interactive quiz game!</h2>
	<div id="welcometext">Welcome Guest! Please login below </div>
	<!-- div id="errorlog"><p class="err">Sorry, you entered a wrong username or password!</p></div-->
	<div data-role="fieldcontain" class="ui-hide-label" style="width: 60%"  id="logindiv">
		<form action="login" method="post" id="logform">
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
							<input type="submit" value="submit" id="loginbut">
						</div></td>
				</tr>
			</table>
		</form>
		If your a new user click here to <a  href="registration.jsp" data-theme="b"  id="log" rel="internal">register!</a><br>
		
		
		<br>
	</div>
</div>


</div>

