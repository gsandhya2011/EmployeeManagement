<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<meta charset="ISO-8859-1">
<title>Employee Form</title>

<style>

 table{
 
background: white;

border-radius: 1.5em;
   
 padding: 55px;
    
position: absolute;

   top:20%;  
  
  left: 32%;
    
width: 37%;


}

</style>
</head>
<body>
<h1 align="center" >Add Employee Details</h1>
	<form:form action="saveEmployee" modelAttribute="employee"
		method="POST">
		<div style="  background-color: #F3EBF6;height:25px;">
	<input type="button" value="Employee List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" style="margin-left:1100px;" />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
		
		</div>
		
		<table>
			<tbody>
				<tr>
					<td><label>Employee Id:</label></td>
					<td><form:input path="employee_id" />
					<form:errors path="employee_id" cssClass="error"></form:errors>
					</td>
					</tr>
					<tr>
					<td><label>First Name:</label></td>
					<td><form:input path="first_name" />
					<form:errors path="first_name" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Last Name:</label></td>
					<td><form:input path="last_name" />
					<form:errors path="last_name" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Gender:</label></td>
					<td><form:radiobutton path="gender" value="M" />Male<br/>
					<form:radiobutton path="gender" value="F" />Female
					<form:errors path="gender" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Contact No:</label></td>
					<td><form:input path="contact_no" />
					<form:errors path="contact_no" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Email:</label></td>
					<td><form:input path="email" />
					<form:errors path="email" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Age:</label></td>
					<td><form:input path="age" />
					<form:errors path="age" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Manager Id:</label></td>
					<td><form:input path="manager_id" />
					<form:errors path="manager_id" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Business Unit:</label></td>
					<td><form:input path="business_unit" />
					<form:errors path="business_unit" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Job Title:</label></td>
					<td><form:input path="job_title" />
					<form:errors path="job_title" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Salary</label></td>
					<td><form:input path="salary" />
					<form:errors path="salary" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Date Of Joining</label></td>
					<td><form:input path="date_of_joining" />
					<form:errors path="date_of_joining" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
				
				<td ><input type = "submit" value = "Save" class = "button" /></td>
					<td ><input type="reset" value="Reset" class="button" /></td>
			</tr>
				
				
			</tbody>
		</table>
	</form:form>
	
</body>
</html>