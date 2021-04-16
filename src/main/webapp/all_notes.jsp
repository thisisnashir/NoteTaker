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
<title>All Notes : Note Taker</title>
<%@include file="global_js_css.jsp"%>
</head>
<body>

	<h1 align="center">This is THE VIEW ALL NOTE PAGE</h1>

	<div class="container">

		<%@include file="navbar.jsp"%>
		<h1 style='' align="center">all notes</h1>

		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query query = s.createQuery("From Note");
				List<Note> list = query.list();

				for (Note eachnote : list) {
				%>

				<div class="card mt-3" style="width: 85rem;" >
					<p align="center">
					<img src="img/icon.png" style="max-width: 100px;" class="card-img-top" alt="...">
					</p>
					<div class="card-body">
						<h5 class="card-title"><%= eachnote.getTitle() %></h5>
						<p class="card-text"><%= eachnote.getContent() %></p>
						<div class="contain text-center">
							
						<a href="" class="btn btn-danger">Delete</a>
						<a href="" class="btn btn-primary">Update</a>
						
						</div>
					</div>
				</div>
				

				<%
				//out.println(eachnote.getId() + " : " + eachnote.getTitle() + " -> " + eachnote.getContent() + "<br>");
				}
				s.close();
				%>


			</div>
		</div>


	</div>

</body>
</html>