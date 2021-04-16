<%@ page import="java.lang.Integer"%>
<%@ page import="java.util.List"%>
<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="com.entitites.*"%>
<%@ page import="org.hibernate.Query"%>
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
		
		<%
			
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class,noteId);
		%>
		<h3 align="center">Note title received: <%=note.getTitle() %> </h3>
		<p align="center">Note content received: <%=note.getContent() %> </p>
		

	</div>

</body>
</html>