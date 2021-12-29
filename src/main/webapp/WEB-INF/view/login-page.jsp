<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
	body{
		color:black;
		background-color: #F3EBF6;
	}
	
	.log{
	background-color: #FFFFFF;
	margin-left:440px;margin-right:420px;padding:20px;color:black;font-size:20px;font-family:sans-serif;
	border:3px solid white;
	margin-top:100px;
	margin-bottom:100px;
	padding-bottom:50px;
	border-radius:1.5em;
}
div table{
	margin-left:10px;
	padding-left:20px;

}

div form input{
	width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 650;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.08);
    padding: 10px 20px;
    border: 1px solid #8C55AA ;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-top: 5px;
    margin-left: 40px;
    text-align: center;
    margin-bottom: 5px;
    font-family: 'Ubuntu', sans-serif;

	}
.submitButton{
	margin-top:30px;
	margin-left:125px;
	width:200px;
	height:45px;
	border:1px solid white;
	background-color:#8C55AA;
	color:white;
}

.tab{
	color: #8C55AA;
	text-align:center;
	font-family: 'Ubuntu', sans-serif;
    font-weight: bold;
    font-size: 23px;
}

.emp{
	color: #8C55AA;
	text-align:center;
	font-family: 'Ubuntu', sans-serif;
    font-weight: bold;
    font-size:40px;
}

.main{
	
 }

</style>
</head>
<body>
		<div class="main">
			<p class="emp">EMPLOYEE MANAGEMENT</p>
		</div>
		<div class="log">
		
		<form action="login" method="post">
			<p class="tab">Login</p>
			<table>
			
				<tr>
					<td>Username:</td>
					<td><input type="text" name="username"/></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"/></td>
				</tr>
				
			
			</table>
			<input class="submitButton" type="submit" value="Sign In"/>
			</form>
		
		</div>
</body>
</html>