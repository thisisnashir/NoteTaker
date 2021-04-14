<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="global_js_css.jsp"%>
</head>

<h1 align="center">You are now at add notes page</h1>


<div class="container">

	<%@include file="navbar.jsp"%>

	<br>
	<h3 align="center">Please enter something</h3>

	<br>

	<!--  Input Form -->
	<form action="SaveNoteServelet" method="Post">
		<div class="mb-3">
			<label for="title" class="form-label">Note Title </label> <input
				type="text" class="form-control" id="title"
				aria-describedby="titleHelp" placeholder="Enter Title...">
			<div id="titleHelp" class="form-text">Enter a good title</div>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">Note Content</label>

			<textarea id="content" 
			class="form-control" 
			style="height:200px" > Defalt Content</textarea>
			<!-- added bootstrap class "form-control for decency  -->
			<!-- added css height for default height  -->
		</div>
		<div class="container text-center"> <button type="submit" class="btn btn-primary">Add</button> </div>
	</form>

</div>




<body>

</body>
</html>