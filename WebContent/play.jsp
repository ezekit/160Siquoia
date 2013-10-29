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
<style>
.table-stroke thead th {
  border-bottom: 1px solid rgba(0, 0, 0, .1);
}
.table-stroke tbody th,
.table-stroke tbody td {
  border-bottom: 1px solid rgba(0, 0, 0, .05);
}
.table-stripe tbody tr:nth-child(odd) td,
.table-stripe tbody tr:nth-child(odd) th {
  background-color: rgba(0,0,0,0.04);
}
/* Add stroke to the header and last item */
.table-stripe thead th,
.table-stripe tbody tr:last-child {
  border-bottom: 1px solid rgba(0, 0, 0, .1);
}
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
h.big{ 
   font-family: 'SwIS Bold'; 
   font-weight: bold; 
   font-style: normal; 
   font-size: 40px;
   color:#222222;
   letter-spacing:-1px;
}
a.topic{ 
   font-family: 'SwIS Bold'; 
   font-weight: bold; 
   font-style: normal; 
   font-size: 100px;
   color:#000;
   letter-spacing:-1px;
}
</style>
</head>
<body>

<div data-role="page">	
	<!-- /header -->
	<jsp:include page="nav.jsp"/>
	<div data-role="content">	
				<h class="big">Please choose a topic:<br></h>
	
	<div style="width:100%">	
	<table data-role="table" width="50%"><tr>
	<td width="30%"><a class="topic" href="">SCIENCE</a>
	<td valign="left">
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
	
</div><!-- /page -->



</body>
</html>