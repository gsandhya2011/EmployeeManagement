<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<meta charset="ISO-8859-1">
<title>Employee List</title>
<style>
table{
	
	border-collapse:collapse;
	
	 
	 border:1px solid #cccac6;
	 font-family: 'Roboto', sans-serif;
	}
th, td {
  padding: 5px;
  border-collapse:collapse;
	
	border:1px solid #cccac6;
}
</style>

</head>
<body style="  background-color: #F3EBF6;" >
	<div id="wrapper">
		<div id="header">
			<h1 align="center" style="font-family: 'Roboto', sans-serif;
    color: #8C55AA;">EMPLOYEE LIST</h1>
		</div>
	</div>
	<div style="  background-color: #F3EBF6;height:25px;">
	<form method="post" action="search">
	<input type="number" name="id" placeholder="search by employee id"  style="margin-left:767px; border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid beige;width:200px;height:30px;">
	<button type="submit" class="add-button">Search</button>
	
	<input type="button" value="Add Employee"
		onclick="window.location.href = 'showFormForAdd'; return false;"
		class="add-button"  />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
		</form>
		</div>
	<br>
	<table style=" background-color: #FFFFFF;   
    border-spacing: 10px;
        
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);">
		<tr>
	<td>Employee ID</td>
	<td>First Name</td>
	<td>Last Name</td>
	<td>Gender</td>
	<td>Contact No</td>
	<td>Email</td>
	<td>Age</td>
	<td>Manager ID</td>
	<td>Business Unit</td>
	<td>Job Title</td>
	<td>Salary</td>
	<td>Date Of Joining</td>
	<td>Action</td>
	</tr>
	
	<c:forEach var="tempEmployee" items="${employees}">

			<c:url var="updateLink" value="/employee/showFormForUpdate">
				<c:param name="Id" value="${tempEmployee.employee_id}"></c:param>
			</c:url>
			
			<c:url var="deleteLink" value="/employee/delete">
				<c:param name="Id" value="${tempEmployee.employee_id}"></c:param>
			</c:url>
	<tr>
	<td>${tempEmployee.employee_id}</td>
	<td>${tempEmployee.first_name }</td>
	<td>${tempEmployee.last_name }</td>
	<td>${tempEmployee.gender}</td>
	<td>${tempEmployee.contact_no }</td>
	<td>${tempEmployee.email }</td>
	<td>${tempEmployee.age }</td>
	<td>${tempEmployee.manager_id}</td>
	<td>${tempEmployee.business_unit }</td>
	<td>${tempEmployee.job_title }</td>
	<td>${tempEmployee.salary}</td>
	<td>${tempEmployee.date_of_joining }</td>
	<td><a href="${updateLink}">Update</a>|
	<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>