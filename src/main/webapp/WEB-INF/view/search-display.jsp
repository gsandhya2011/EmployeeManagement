<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
</head>
<body>
	<div class="table">
	<table>
	
	<tr>
	<th>Employee ID</th>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Gender</th>
	<th>Contact No</th>
	<th>Email</th>
	<th>Age</th>
	<th>Manager ID</th>
	<th>Business Unit</th>
	<th>Job Title</th>
	<th>Salary</th>
	<th>Date Of Joining</th>
	</tr>
	
	<c:forEach var = "emp" items = "${emplist}" >
	<tr>
	<td>${emp.employee_id}</td>
	<td>${emp.first_name }</td>
	<td>${emp.last_name }</td>
	<td>${emp.gender}</td>
	<td>${emp.contact_no }</td>
	<td>${emp.email }</td>
	<td>${emp.age }</td>
	<td>${emp.manager_id}</td>
	<td>${emp.business_unit }</td>
	<td>${emp.job_title }</td>
	<td>${emp.salary}</td>
	<td>${emp.date_of_joining }</td>
	</tr>
	</c:forEach>
	
	</table>
</div>	
</body>
</html>