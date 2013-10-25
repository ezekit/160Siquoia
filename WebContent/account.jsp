	<jsp:include page="nav.jsp"/>
	<div data-role="content" id="page1" data-theme="a"> 	
		<div class="bodycontent">
		<br>
			
			<h>User Account Info:</h><br>
			<table cellpadding=10 cellspacing=10><tr><td valign=top>
			<img src="${pageContext.request.contextPath}/images/ukn.jpg" width=60 height=60 border=2/>
			<td valign=top>
			<p class="para">
			Name: David Taylor<br>
			Email: David.Taylor@sjsu.edu<br>
			About Me: I despised stupidity<br>
			Total Games Played: 1<br>
			Packages bought: 0<br> 
			Rank: 
			<h>499/500</h>
			
			<br><br>	
			<input type="button" value=" Click to edit account information "/><br> 
			<br>
			</p>
			</td></tr></table>
			
			<table><tr><td>
			<h>Badges Earned:</h><br>
			<img src=${pageContext.request.contextPath}/images/pin0.png width=50 height=50>
			<img src=${pageContext.request.contextPath}/images/pin.png width=50 height=50>
			<img src=${pageContext.request.contextPath}/images/pin2.png width=50 height=50>
			</tr></td></table>


		</div>
	</div>
