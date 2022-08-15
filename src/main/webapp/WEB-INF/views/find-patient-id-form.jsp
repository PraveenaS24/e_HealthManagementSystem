<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Patient</title>
</head>
<style>
body {
	background-image:
		url("https://static.vecteezy.com/system/resources/previews/002/025/357/large_2x/healthy-food-borders-free-photo.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	background-color: white;
	color: #061FFF;
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
<body>
	<h1>FINDED LIST</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="" method="post" modelAttribute="findpatientbyid">
					<div>
						<label for="patientId">Patient ID</label>
						<div>
							<form:input path="patientId" style="width:300px;height: 25px;" />
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
							<form:input path="dob" style="width: 300px;height: 25px;" />
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
							<form:input path="observation" style="width: 300px;height: 25px;" />
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
					</div>
					<div>
						<label for="status">Status</label>

						<div>
							<form:input path="status" style="width: 300px;height: 25px;" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
