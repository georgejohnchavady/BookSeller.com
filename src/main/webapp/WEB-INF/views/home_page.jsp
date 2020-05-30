<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/BookSeller.com/WEB-INF/css/homepage.css">

</head>
<body>
<%
System.out.println(System.getProperty("user.dir"));

%>
	<div class="container-fluid">
		<div class="row">
			
			<div class="btn btn-group" role="group" aria-label="Basic example">
				<button type="button" class="btn btn-secondary">Home</button>
				<div class="btn-group" role="group">
				  <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    About Us
				  </button>
				  <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
				    <a class="dropdown-item" href="#">Our Caption</a>
				    <a class="dropdown-item" href="#">Leadership TEAM</a>
				  </div>
				</div>		
				<button type="button" class="btn btn-secondary">Contact Us</button>
			</div> 			
			
			<nav class="navbar navbar-default" role="navigation">
			
				<div id="logout" class="container" >
				    <a class="btn navbar-btn navbar-right pull-right btn-info" role="button" href="http://localhost:8080/login.do" onclick="clearSession()">Logout</a>
				</div>
			</nav>  
					
	</div>
	
	
	
<script>
	function clearSession() {
		sessionStorage.clear();
		localStorage.clear();
	}
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
</body>
</html>