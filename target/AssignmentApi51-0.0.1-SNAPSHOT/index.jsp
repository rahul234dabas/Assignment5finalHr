<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="keywords" content="VP">
<meta name="description" content="Made by Rahul @ Nagarro">
<meta name="author" content="Rahul">


<title>HR Login</title>
<!-- CSS only -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/styleMy.css">

</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<!-- Container -->
	<div  align="center">
		<h1>HR Manager Login</h1>
	
	</div>
	<div class="container min-vh-100">
		<!-- Login Form -->
		<form action="login" method="post">
			<div class="card card-login">
				<div class="card-header">Login</div>
				<div class="card-body">
					<div class="form-group row">
						<label for="inputUsername" class="col-sm-3 col-form-label">User Id<label
							class="asterisk">*</label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="inputUsername"
								name="userId" required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-3 col-form-label">Password<label
							class="asterisk">*</label></label>
						<div class="col-sm-8">
							<input type="password" class="form-control" id="inputPassword"
								name="password" required>
						</div>
					</div>
					
				</div>
				<div class="card-footer text-muted">
					<button>Login</button>
				</div>

			</div>
		</form>


	</div>
	<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright: rahul04@nagarro.com
    
  </div>
  <!-- Copyright -->

</footer>

</body>

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>

</html>