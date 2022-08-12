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
			<li><a href="#">Logout</a></li>
			
		</ul>
	</nav>
	<div class="com">
	<div class="title">IT IS HEALTH THAT IS REAL WEALTH!<br>
	<br>
	AND NOT PIECES OF GOLD OR SILVER!!
	</div>
	</div>
</body>
</html>
