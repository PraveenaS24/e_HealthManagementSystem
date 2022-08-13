<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

 <style><%@include file="/WEB-INF/views/cssfile/homePage.css"%>
   @import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
 </style>
</head>
<body>
	<nav>
		<div Class="logo">
			<p>WELL BEING UPDATION</p>
	</div>
	
		<ul>
		<li><a href="/admin/adminlogin">Admin</a></li>
			<li><a href="/users/userlogin">User</a></li>
			
			
		</ul>
	</nav>
	<div class="com">
	<p>H IS HEALTH! THAT IS REAL WEALTH!!<br>
	AND NOT PIECES OF GOLD AND SILVER!!<br>
	</p>
	<h3>- Mahatma Gandhi</h3>
	</div>
</body>
</html>
