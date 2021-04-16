<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="global_js_css.jsp"%>
	
<title>Note Taker!</title>
</head>
<body>
	<h1 align="center">This is homepage</h1>

	<div class="container">

		<%@include file="navbar.jsp"%>
		
		<div class="card my-5">
		<img alt="A note pad" class="img-fluid mx-auto" style="max-width: 400px" src="img/icon.png">
		<h1 align="center">Start Taking Your Notes</h1>
		<h3 class="text-center"><a  href="add_notes.jsp">Start Taking Notes</a></h3>
		</div>

	</div>

	
</body>
</html>