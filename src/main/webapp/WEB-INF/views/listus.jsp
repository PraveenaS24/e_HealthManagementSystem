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
		url('https://t3.ftcdn.net/jpg/01/63/24/24/360_F_163242410_85lEeYR0m7yKmr1t5lLcow74I0Sd4j42.jpg');
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
	color: blue;
	font-weight: 900;
	text-align: center;
}

li {
	list-style: none;
	display: inline;
	margin-left: 20px;
}

ul {
	padding-left: 350px;
	margin-top: 200px;
} 

h2 {
	color: white;
	text-align: center;
}

button {
	width: 100px;
	height: 30px;
}

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
			<li><a href="/patient/addpatientform"><button class="click">Add
						Patient</button></a></li> 
			<li><a href="users/userlist"><button class="click">User</button></a></li>
			<li><a href="/patient/patientlist"><button class="click">Patient</button></a></li>
			<li><a href="/staffs/staffslist"><button class="click">Staffs</button></a></li>
			<li><a href="/feedback/feedbacklist"><button class="click">FeedBack</button></a></li>
		</ul>
	</div>
</body>
</html>