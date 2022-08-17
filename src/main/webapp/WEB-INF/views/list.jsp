<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/list.css"%>
</style>
<body>
	<h1>
		Delighted Welcome!<br> Happy To Have You!!
	</h1>
	<div class="com">
		<h2>  
			Login Sucessfully! 
		</h2>

	</div>
	<div class="button-list">
		<ul>
			<li><a href="/users/adduserform"><button class="click">Add
						User</button></a></li> 
			<li><a href="/users/userlist"><button class="click">User</button></a></li>
			<li><a href="/patient/patientlist"><button class="click">Patient</button></a></li>
			<li><a href="/staffs/staffslist"><button class="click">Staffs</button></a></li>
			<li><a href="/feedback/feedbacklist"><button class="click">FeedBack</button></a></li>
			<li><a href="/patient/getpatientfeedbackform"> <button class ="click"> Get Patient Feedback</button></a></li>
		</ul>
	</div>
</body>
</html>