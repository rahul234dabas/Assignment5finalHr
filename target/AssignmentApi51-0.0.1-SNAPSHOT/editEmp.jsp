<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="keywords" content="VP">
<meta name="description" content="Made by Rahul @ Nagarro">
<meta name="author" content="Rahul">


<title>Edit Details</title>
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
	<div class="container min-vh-100">
		<!-- Login Form -->
		<form action="search" method="post" onsubmit=" return validate()" >
			<div class="card card-login">
				<div class="card-header">Edit Employee details</div>
				<div class="card-body">
					<div class="form-group row">
						<label for="empCode" class="col-sm-3 col-form-label">Employee Code:<label
							></label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="empCode"
								name="empCode" required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="empName" class="col-sm-3 col-form-label">Employee Name:<label
							></label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="empName"
								name="empName" required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="location" class="col-sm-3 col-form-label">Location:<label
							class="asterisk"></label></label>
						<div class="col-sm-8">
							<input type="textarea" class="form-control" id="location"
								name="location" required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="email" class="col-sm-3 col-form-label">Email:<label
							class="asterisk"></label></label>
						<div class="col-sm-8">
							<input type="email" class="form-control" id="email"
								name="email" required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="date" class="col-sm-3 col-form-label">Date of Birth:<label
							class="asterisk"></label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="date"
								name="date" required>
						</div>
					</div>
					
				</div>
				<div class="card-footer text-muted">
					<button>Save</button>
				</div>

			</div>
		</form>


	</div>

</body>


<script type="text/javascript">
	
	function validate(){
		var val = document.getElementById("FltClass").value;
		var val1 = document.getElementById("OutPref").value;
		
		if((val=="E" || val=="e" || val=="B" || val=="b") && (val1=="1" || val1=="2")){
			
			return true;
		}
		
		alert("Please Enter Valid Input in Form");
		return false;
	}



</script>

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous">
	
	
	
	
	
	
	
	</script>

</html>