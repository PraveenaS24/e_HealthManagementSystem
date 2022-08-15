<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
</head>
<style>
body {
	background-image:
		url("https://media.istockphoto.com/photos/stethoscope-with-space-for-copy-picture-id1343679839?b=1&k=20&m=1343679839&s=170667a&w=0&h=PmxkddUD8hBWZ8PvpiVFF6SMIwxTsBTElEi31X6RGGI=");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

h1 {
	color: black;
	float: center;
	text-align: center;
}

tr {
	color: white;
}

tr:hover {
	background-color: orange;
}

label {
	color: maroon;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
	text-align: center;
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
	float: center;
}

.box {
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
	font-weight: 900;
	width: 600px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.son {
	color: yellow;
	text-align: center;
}
</style>
<body>
	<h1>PATIENT</h1>
	<div id="root">
		<div id="form">
			<div class="box">
				<form:form action="" method="post" modelAttribute="getpatient">
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="gender">Gender</label>
						<div>
							<form:input path="gender" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="bloodgroup">Blood Group</label>
						<div>
							<form:input path="bloodgroup" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="address">Address</label>
						<div>
							<form:input path="address" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="observation">Observation</label>
						<div>
							<form:input path="observation" type="date"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="report">Report</label>
						<div>
							<form:input path="report" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="prescription">Prescription</label>
						<div>
							<form:input path="prescription"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="fees">Fees</label>
						<div>
							<form:input path="fees" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="foodmaintenance">FoodMaintenance</label>
						<div>
							<form:input path="foodmaintenance"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="revisit">Revisit</label>
						<div>
							<form:input path="revisit" style="width: 300px;height: 25px;" />
						</div>
						<br>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="son">
			<h1>FEEDBACK</h1>
			<div>
				<form:form action="" method="post" modelAttribute="getfeedback">
					<div>
						<label for="feedbackId">FeedBack Id</label>
						<div>
							<form:input path="feedbackId" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="staffNature">Staff Nature</label>
						<div>
							<form:input path="staffNature" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="addressLocate">Address</label>
						<div>
							<form:input path="addressLocate"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="patientComment">Patient Comment</label>
						<div>
							<form:input path="patientComment"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="onregisterfeedback">Feedback</label>
						<div>
							<form:input path="onregisterfeedback" type="date"
								style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="points">points</label>
						<div>
							<form:input path="points" style="width: 300px;height: 25px;" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
