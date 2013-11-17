<jsp:include page="header.html" />
<div data-role="page" data-theme="a">
<jsp:include page="nav.jsp" />
<!-- ALWAYS ADD HEADER ABOVE  -->

<script>
	$(document).ready(function() {
		$("#2").hide();
		
		
		setInterval(function(){
			
			$('#a1').click(function() {
				$("#1").hide();
				$("#2").show();
				});
			

			$("#1").hide();
			$("#2").show();
			}
			,3000);
	});	

</script>

<div id="playform">
	<form action="play">
	<div id="1">Question: 1
	<input type="radio" name="a" value="3"/>A 
	<input type="radio" name="a" value="4"/>B
	<input type="radio" name="a" value="5"/>C
	<input type="radio" name="a" value="6"/>D
	<input type="submit" value="submit" id="a1"/>
	</div>
	<div id="2">Question: 222222
	<input type="radio" name="a" value="3"/>A 
	<input type="radio" name="a" value="4"/>B
	<input type="radio" name="a" value="5"/>C
	<input type="radio" name="a" value="6"/>D
	<input type="submit" value="submit"/>
	</div><div id="3"></div>
	<div id="4"></div>
	<div id="5"></div>	
	</form>
</div>



<!-- ALWAYS DEL FOOTER BELOW -->	
<jsp:include page="footer.html" />


