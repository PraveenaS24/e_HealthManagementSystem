<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background-image:
		url('https://images.unsplash.com/photo-1509909756405-be0199881695?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGFwcHklMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80');
	background-size: cover;
	background-repeat: no-repeat;
}

a:hover {
	background-color: blue;
}

.com {
	width: 550px;
	padding: 10px;
	height: 500;
	font-weight: 900;
	float: center;
	margin-left: 31%;
}

h1 {
	color:  blue;
	font-weight: 900;
}

li {
	list-style: none;
	display: inline;
}

ul {
	margin-left: 40%;
}
</style>
<body>
	<h1 align="center">Delighted Welcome!<br>
	          Happy To Have You!!</h1>
	<br>
	<br>
	<br>
	<br>
	<div class="com">
		<h2>Login Sucessfully <br> <br> <br> <br>You have
		successfully signed into your account.</h2>

	</div>
	<div class="button-list">
		<br> <br> <br> <br>
		<ul>
			<li><a href="/patient/patientlist"><button class="click">Patient</button></a></li>
			<li><a href="/staffs/staffslist"><button class="click">Staffs
					</button></a></li>
			<li><a href="/feedback/feedbacklist"><button class="click">FeedBack</button></a></li>
		</ul>
	</div>
</body>
</html>