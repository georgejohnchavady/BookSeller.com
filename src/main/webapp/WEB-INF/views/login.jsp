<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>BookSeller.com</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/css/login.css">
</head>
<body>
	<div class="container-fluid">
		<div class="jumbotron">
			<form action="login.do" method="post">
			<table collpadding="2" cellspacing = "2">
		
				<tr>
					<td><label class="login_label">User name</label></td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td><label class="login_label">Password</label></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr> 
					<td>&nbsp</td>
					<td><input type="checkbox" name="remember">Remember me?</td>
				</tr>
				<tr>
					
					<td><input type="submit" class="login_submit" value="Login"/></td>	
					<td>&nbsp</td>				
				</tr>				
			</table>
			</br></br>
			<label><font color="red">${message}</font></label> 
		</form>
		</div>
		
		
	</div>
	
	
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
</body>
</html>