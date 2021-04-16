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
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class,noteId);
		%>

		
		
		<form action="UpdateServlet" method="Post">
	
		<div class="mb-3">
		
		<input value=<%=note.getId() %> name="note_id" type="hidden" >
		
		<!-- name field in input will be used for capturing value -->
			<label for="title" class="form-label">Note title:</label> <input required
			
				type="text" class="form-control" id="title" name="title" 
				aria-describedby="titleHelp" placeholder="Enter Title..." value=<%=note.getTitle() %> >
			<div id="titleHelp" class="form-text">Update the title</div>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">Note Content:</label>
		<!-- name field in textarea will be used for capturing value -->
			<textarea id="content"
			name="content"
			required
			class="form-control" 
			style="height:200px" 
			 > <%=note.getContent() %> </textarea>
			<!-- added bootstrap class "form-control for decency  -->
			<!-- added css height for default height  -->
		</div>
		<div class="container text-center"> <button type="submit" class="btn btn-primary">Update</button> </div>
	</form>
		

	</div>

</body>
</html>