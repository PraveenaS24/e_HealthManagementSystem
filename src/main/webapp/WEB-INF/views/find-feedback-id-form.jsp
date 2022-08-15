<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find FeedBack</title>
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
<body style="background-color: Cyan;">
<body>
	<h1>FINDED LIST</h1>
	<div id="root">
		<div id="form">
			<div class="box">
				<form:form action="" method="post" modelAttribute="findfeedbackbyid">
					<div>
						<label for="feedbackId">FeedBack Id</label>
						<div>
							<form:input path="feedbackId" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="staffNature">Staff Nature</label>
						<div>
							<form:input path="staffNature" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="addressLocate">Address</label>
						<div>
							<form:input path="addressLocate" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="patientComment">Patient Comment</label>
						<div>
							<form:input path="patientComment" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="onregisterfeedback">Feedback</label>
						<div>
							<form:input path="onregisterfeedback" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="points">points</label>
						<div>
							<form:input path="points" style="width:300px;height: 25px;"/>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>