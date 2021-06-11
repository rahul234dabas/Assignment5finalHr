<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.List"%>
<%@page import="com.nagarro.model.Employee" %>
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
	<br>
	<!-- Container -->
	<div class="container min-vh-100">
	
	<% Employee item =(Employee) request.getAttribute("item");
		request.setAttribute("itemid",item.getEid() ) ;
	%>
		<!-- Login Form -->
		<form action="update" method="post" onsubmit=" return validate()" >
			<div class="card card-login">
				<div class="card-header">Edit Employee details</div>
				<div class="card-body">
					<div class="form-group row">
						<label for="empCode" class="col-sm-3 col-form-label">Employee Code:<label
							></label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" value=<%=item.getEid() %> id="empCode"
								name="empCode"  disabled="true">
								<input type="hidden" class="form-control" value=<%=item.getEid() %> id="empCode"
								name="empCodee"  >
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="empName" class="col-sm-3 col-form-label">Employee Name:<label
							></label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="empName"
								name="empName" value=<%=item.getEname() %> required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="location" class="col-sm-3 col-form-label">Location:<label
							class="asterisk"></label></label>
						<div class="col-sm-8">
							<input type="textarea" class="form-control" id="location"
								name="location" value=<%=item.getLocation() %> required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="email" class="col-sm-3 col-form-label">Email:<label
							class="asterisk"></label></label>
						<div class="col-sm-8">
							<input type="email" class="form-control" id="email"
								name="email" value=<%=item.getEmail() %> required>
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="date" class="col-sm-3 col-form-label">Date of Birth:<label
							class="asterisk"></label></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="date"
								name="date" value=<%=item.getDate() %> required>
						</div>
					</div>
					
				</div>
				<div class="card-footer text-muted">
					<button>Save</button>
				</div>

			</div>
		</form>


	</div>
<footer class="page-footer fixed-bottom font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright: rahul04@nagarro.com
    
  </div>
  <!-- Copyright -->

</footer>
</body>


<script type="text/javascript">
   
   // form validation is done in this method
   
	function validate(){
		var empname = document.getElementById("empName").value;
		var location = document.getElementById("location").value;
		var email = document.getElementById("email").value;
		var date = document.getElementById("date").value;
		
		if(empname.length>100 || empname.length==0){
			alert("please Enter Employee Name upto 500 characters!!");
			return false;
		}
		if(location.length>500){
			alert("please Enter Location upto max 500 characters!!");
			return false;
		}
		if(email.length>100){
			alert("Please Enter Email address upto 100 character long!");
			return false;
		}
		
		alert("Record updated!");
		return true;
	}



</script>

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous">
	
	
	
	
	
	
	
	</script>

</html>