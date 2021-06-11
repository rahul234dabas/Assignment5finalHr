<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee details</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/styleMy.css">
</head>
<body>
	<div class="container min-vh-100" >
		<form action="index.jsp" method="post">
			<div class="card card-login">
				<div class="card-header">Employees Listing</div>
				<div class="card-body">
					<table class="table table-striped">
						<tr>
						<th>Employee code</th>
						<th>Employee Name</th>
						<th>Location</th>
						<th>Email</th>
						<th>Date of Birth</th>
						<th>Action</th>
						</tr>
						
						
						
						
					</table>
					
				</div>
				<div class="card-footer text-muted">
					<button>Back</button>
				</div>

			</div>
		</form>
	</div>
</body>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
</html>