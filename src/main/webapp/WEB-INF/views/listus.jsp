<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoicing with GST</title>
<style><%@include file="/WEB-INF/views/cssfile/listus.css"%></style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/fontawesome.min.css">
</head>
<body>
	<div class="hero-image">
	<div class="menu-bar">
	<ul>
	<li class="active"> <a href="#">Patient</a>
		<div class="sub-menu-1">
		<ul><li><a href="/patient/addpatientform">Add Patient</a></li>
			<li><a href="/patient/updatepatientform">Update Patient</a></li>
			<li><a href="/patient/getpatient">Find Patient By Id</a></li>
			<li><a href="/patient/patientlist">Patient List</a></li>
			<li><a href="/patient/deleteform">Delete Patient</a></li>
			<li><a href="/patient/getpatientfeedbackform">Find Patient FeedBack</a></li>
			</ul>
			</div>
			</li>
			<li><a href="#">Staffs</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="/staffs/addstaffsform">Add Staff</a></li>
		<li><a href="/staffs/updatestaffsform">Update Staff</a></li>
		<li><a href="/staffs/getstaff">Find Staff By Id</a></li>
		<li><a href="/staffs/staffslist">All Staff List</a></li>
		<li><a href="/staffs/deleteform">Delete Staff</a></li>
		<li><a href="/staffs/getstafffeedbackform">Find Staff FeedBack</a></li>
	</ul>
	</div>
	</li>
	<li><a href="#">FeedBack</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="/feedback/addfeedbackform">Add FedBack</a></li>
		<li><a href="/feedback/updatefeedbackform">Update FeedBack</a></li>
		<li><a href="/feedback/feedbacklist">List FeedBack</a></li>
	</ul>
	</div>
	</li>
	</ul>
	</div>
    </div>
</body>
</html>
		