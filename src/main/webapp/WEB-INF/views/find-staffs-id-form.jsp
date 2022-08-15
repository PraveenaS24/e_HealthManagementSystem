<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Staffs</title>
</head>
<style>
body {
	background-image:
		url("https://thumbs.dreamstime.com/b/heart-health-paper-design-healthy-lifestyle-symbol-collection-looking-healthy-food-fitness-leads-to-healthy-life-symbols-33670665.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	text-align: center;
	color: #061FFF;
}

label {
	color: red;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#secretword {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#userType {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}

.box {
	width: 600px;
	height: 900;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 30px;
	text-align: center;
	float: center;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

#cont {
	position: relative;
	left: 100px;
}


</style>
<body style="background-color: lightSeaGreen;">
<body>
	<h1>FINDED LIST</h1>
	<div id="root">
		<div id="form">
			<div class="box">
				<form:form action="" method="post" modelAttribute="findstaffsbyid">
					<div>
						<label for="staffId">Staffs Id</label>
						<div>
							<form:input path="staffId" />
						</div>
					</div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" />
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" />
						</div>
					</div>
					<div>
						<label for="gender">Gender</label>
						<div>
							<form:input path="gender" />
						</div>
					</div>
					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" />
						</div>
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" />
						</div>
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" />
						</div>
					</div>
					<div>
						<label for="role">Role</label>
						<div>
							<form:input path="role" />
						</div>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" />
						</div>
					</div>
					<div>
						<label for="speciality">Speciality</label>
						<div>
							<form:input path="speciality" />
						</div>
					</div>
					<div>
						<label for="intime">Intime</label>
						<div>
							<form:input path="intime" />
						</div>
					</div>
					<div>
						<label for="outtime">Outtime</label>
						<div>
							<form:input path="outtime" />
						</div>
						<br>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>