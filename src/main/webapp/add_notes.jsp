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
	
	
	
	<form action="SaveNoteServlet" method="Post">
	
		<div class="mb-3">
		
		<!-- name field in input will be used for capturing value -->
			<label for="title" class="form-label">Note Title </label> <input required
			
				type="text" class="form-control" id="title" name="title" 
				aria-describedby="titleHelp" placeholder="Enter Title...">
			<div id="titleHelp" class="form-text">Enter a good title</div>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">Note Content</label>
		<!-- name field in textarea will be used for capturing value -->
			<textarea id="content"
			name="content"
			required
			class="form-control" 
			style="height:200px" >You should have known that copy of the "Declaration of Independence" was a fake when you saw it was signed by "Jon Hancrock" instead of "John Hancock." Something that's fake isn't authentic.

A person who falsely claims to be, feel, or do something can be said to be fake. When your friend acts sweet but spreads rumors about you behind your back, you can call her a fake. As a verb, fake means to take an action with the intent to deceive. If you've ever tried to fake a grade on your report card, you know that it's especially hard to change an F to an A. </textarea>
			<!-- added bootstrap class "form-control for decency  -->
			<!-- added css height for default height  -->
		</div>
		<div class="container text-center"> <button type="submit" class="btn btn-primary">Add</button> </div>
	</form>

</div>




<body>

</body>
</html>