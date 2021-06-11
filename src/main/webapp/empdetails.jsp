<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.nagarro.model.Employee" %>
<%@page import="com.nagarro.model.EmployeeList" %>
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
	<div class=" min-vh-100" style="float:right; padding-right:30px; padding-top:50px" ><h3>Welcome <%= request.getParameter("userId") %>!</h3></div>
	<div class="container min-vh-100" >
	<br>
	<br>
	<br>
	<br>
	<br>
	
		<!--  <form action="index.jsp" method="post" id="mainform"> -->
			<div class="card card-login">
				<div class="card-header">Employees Listing</div>
				<div class="card-body">
					<table class="table table-striped" >
						<tr>
						<th>Employee code</th>
						<th>Employee Name</th>
						<th>Location</th>
						<th>Email</th>
						<th>Date of Birth</th>
						<th>Action</th>
						</tr>
						<%
							EmployeeList employeeList =(EmployeeList) request.getAttribute("employees");
						    List<Employee> emplist = employeeList.getList();
						    for(Employee it : emplist){
						    	
						    int val = it.getEid();
						%>
						<tr>
							<td><%= it.getEid() %></td>
							<td><%= it.getEname() %></td>
							<td><%= it.getLocation() %></td>
							<td><%= it.getEmail() %></td>
							<td><%= it.getDate() %></td>
							<td>
								<form action="empdetails?eidd=<%= val %>" method="POST" id="editform<%=val%>">
								<div>
								<button form="editform<%=val%>" type="submit" class="btn btn-light" >Edit</button> 
								</div>
								</form>
							
							</td>
						</tr>
						
						<% } %>
						
						
						
					</table>
					
				</div>
				<div class="card-footer text-muted">
					<button>Back</button>
				</div>

			</div>
	<!--  	</form>  -->
	</div>
	<footer class="page-footer fixed-bottom font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright: rahul04@nagarro.com
    
  </div>
  <!-- Copyright -->

</footer>
</body>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
</html>