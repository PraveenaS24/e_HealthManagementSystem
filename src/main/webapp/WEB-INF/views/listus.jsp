<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>USERS</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/listus.css"%>
</style>
<body>
	<h1>
		Delighted Welcome!<br> Happy To Have You!!
	</h1>

		<h2>
			Login Sucessfully! 
		</h2>

	<nav>
	<div class="navbar">
   <div class="dropdown"> 
		<button class="dropbtn">Patient
		<em class= "fa fa-caret-down"></em>
		</button>
		<div class="dropdown-content">
				<a href="/patient/patientlist">Patient List</a>
				<a href="/patient/addpatientform">Add Patient</a>
				<a href="/patient/updatepatientform">Update Patient</a>
				<a href="/patient/getpatient">Find Patient</a>
			</div>
			<div class="dropdowns">
			<button class="dropbtns">Staffs
		<em class= "fa fa-caret-downs"></em>
		</button>
	<div class="dropdown-contents">
				<a href="/staffs/staffslist">Staff List</a>
				<a href="/staffs/addstaffsform">Add Staff</a>
				<a href="/staffs/updatestaffsform">Update Staff</a>
				<a href="/staffs/getstaff">Find Staff</a>
			</div>
		</div>
	</div>
	</div>
	</nav>
</body>
</html>