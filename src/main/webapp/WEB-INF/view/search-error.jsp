<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Error</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>

	<h2 align="center">Employee with id ${id} not found :(</h2>
	<br>
	<label> 
	<input type="button" value="Go Back"
		onclick="window.location.href = 'list'; return false;"
		class="button addbutton" />
	</label>
	

</body>
</html>