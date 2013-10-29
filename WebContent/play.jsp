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

	<div data-role="header">
		<h1>Play Quiz Sample DATABASE</h1>
	</div><!-- /header -->

	<div data-role="content">	

	<!-- SAMPLE GUYS TEST IT OUT JSLT but u need to have JSLT search google -->
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/test" user="root" password="root" />
	
		<sql:query dataSource="${snapshot}" var="result">
	SELECT * from employees;
	</sql:query>
	
		<table border="1" width="100%">
			<tr>
				<th>Emp ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.id}" /></td>
					<td><c:out value="${row.first}" /></td>
					<td><c:out value="${row.last}" /></td>
					<td><c:out value="${row.age}" /></td>
				</tr>
			</c:forEach>
	</table>

	</div>
	
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div><!-- /footer -->
</div><!-- /page -->



</body>
</html>