<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<link rel="stylesheet" media="screen" href="http://openfontlibrary.org/face/swis-bold" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" media="screen" href="http://openfontlibrary.org/face/odstemplik" rel="stylesheet" type="text/css"/>
<title>SELECT Operation</title>
</head>
<body>

<div data-role="page">	
	<!-- /header -->
	<jsp:include page="nav.jsp"/>
	<div data-role="content">	
	<h class="big">Please choose a topic:<br></h>
	Select the game you may want to play or play random: <br><br>
		
	<div style="width:100%">	
	<table data-role="table" width="80%"><tr>
	<td width="30%"><a class="topic" href="">SCIENCE</a>
	<td width="70%" align="left">
	<select name="select-choice-min" id="select-choice-min" data-mini="true">
	   <option value="standard">Math</option>
	   <option value="rush">Physics</option>
	   <option value="express">Random</option>
	</select> 
	</td></td></tr>
	
	<tr><td>
	<a class="topic" href="">LANGUAGE</a>
	<td valign="left">
	<select name="select-choice-min" id="select-choice-min" data-mini="true">
	   <option value="standard">English</option>
	   <option value="rush">Grammar</option>
	   <option value="express">Random</option>
	</select> 
	</td></td></tr>
	
	<tr><td>
	<a class="topic" href="">RELIGION</a>
	<td valign="left">
	<select name="select-choice-min" id="select-choice-min" data-mini="true">
	   <option value="standard">Christian</option>
	   <option value="rush">Revelation</option>
	   <option value="express">Random</option>
	</select> 
	</td></td></tr>
	</table>
	</div>	
	
		<div>
	<br><br>
	<!-- SAMPLE GUYS TEST IT OUT JSLT but u need to have JSLT search google -->
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/sq" user="root" password="root" />
	
	<sql:query dataSource="${snapshot}" var="result">
	SELECT * from authentication;
	</sql:query>
	
		<table data-role="table" width="100%" data-mode="reflow">
			<tr>
				<th>Emp ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.ID}" /></td>
					<td><c:out value="${row.USERNAME}" /></td>
					<td><c:out value="${row.USERPASSWORD}" /></td>
					<td><c:out value="${row.ADMIN}" /></td>
				</tr>
			</c:forEach>
	</table>

	</div>
	
</div><!-- /page -->



</body>
</html>