<%@ page import="java.lang.Integer"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<%@include file="global_js_css.jsp"%>
<title>Edit page</title>
</head>
<body>

<h1 align="center">This is Edit page</h1>

	<div class="container">

		<%@include file="navbar.jsp"%>
		
		<%
		
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		%>
		<h1 align="center">Note Id received: <%=noteId %> </h1>

	</div>

</body>
</html>