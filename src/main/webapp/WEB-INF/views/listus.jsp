<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/views/cssfile/listus.css"%></style>
</head>
<body>
	<div class="hero-image">
	<div class="menu-bar">
	<ul>
	<li class="active"> <a href="#">Patient</a>
		<div class="sub-menu-1">
		<ul><li><a href="/patient/addpatientform">Add Patient</a></li>
			<li><a href="/patient/updatepatientid">Update Patient</a></li>
			<li><a href="/patient/getpatient">Find Patient By Id</a></li>
			<li><a href="/patient/patientlist">Patient List</a></li>
			<li><a href="/patient/getpatientfeedbackform">Find Patient FeedBack</a></li>
			</ul>
			</div>
			</li>
			<li><a href="#">Staffs</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="/staffs/addstaffsform">Add Staff</a></li>
		<li><a href="/staffs/updatestaffid">Update Staff</a></li>
		<li><a href="/staffs/getstaff">Find Staff By Id</a></li>
		<li><a href="/staffs/staffslist">All Staff List</a></li>
		<li><a href="/staffs/getstafffeedbackform">Find Staff FeedBack</a></li>
	</ul>
	</div>
	</li>
	<li><a href="#">FeedBack</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="/feedback/addfeedbackform">Add FedBack</a></li>
		<li><a href="/feedback/updatefeedbackid">Update FeedBack</a></li>
		<li><a href="/feedback/feedbacklist">List FeedBack</a></li>
	</ul>
	</div>
	</li>
	</ul>
	</div>
    </div>
    <div>
		    <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
		<div>
		    <a href="/admin/adminlogin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
</body>
</html>
		