<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookSeller.com</title>
</head>
<body>
	<form action="login.do" method="post">
		<table style="width: 50%">
	
			<tr>
				<td>UserName</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<input type="submit" value="Login" />
		</br></br>
		<label><font color="red">${message}</font></label> 
	</form>
	
	
</body>
</html>