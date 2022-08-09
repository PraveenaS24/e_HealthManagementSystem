<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

 <style><%@include file="/WEB-INF/views/cssfile/homePage.css"%></style>
</head>
<body>
	<nav>
		<div Class="logo">
			<p>WELL BEING UPDATION</p>
	</div>
	
		<ul>
			<li><a href="/users/userlogin">login</a></li>
			<li><a href="/patient/patientlist">Patients</a></li>
			<li><a href="/staffs/staffslist">Staffs</a></li>
			<li><a href="/feedback/feedbacklist">FeedBack</a></li>
		</ul>
	</nav>

</body>
</html>
