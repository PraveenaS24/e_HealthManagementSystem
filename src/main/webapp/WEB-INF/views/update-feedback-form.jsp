<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update FeedBack</title>
</head>
<style>
body {
	background-image: url("https://images.pexels.com/photos/2383010/pexels-photo-2383010.jpeg?cs=srgb&dl=pexels-total-shape-2383010.jpg&fm=jpg");
	background-repeat: no-repeat;
    background-size: 100% 100%;
}

label {
	color: blue;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
	float: center;
}

tr {
	font-style: bold;
	color: #000000;
}

h1 {
    text-align: center;
 	color: blue;
	float: center;
}

#cont {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-right: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
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
	text-align: : center;
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
	height: 600px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>
<body>
	<h1>UPDATED LIST</h1>
	<div id="root" class="box">
		<div id="form">
			<div>
				<form:form action="updatefeedback" method="post"
					modelAttribute="updatefeedback">
					<div>
						<label for="feedbackId">FeedBack Id</label>
						<div>
							<form:input path="feedbackId" style="width: 300px;height: 25px;"
								title="Id can't be empty And Id must be in Integer"
								required="true" placeholder="Enter FeedBackId" />
						</div>
						<form:errors path="feedbackId" cssClass="text-danger" />
					</div>
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" style="width: 300px;height: 25px;"
								title="Id can't be empty And Id must be in Integer"
								required="true" placeholder="Enter PatientId" />
						</div>
						<form:errors path="patientId" cssClass="text-danger" />
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" style="width: 300px;height: 25px;"
								title="StaffId can't be empty And StaffId must be in Integer"
								required="true" placeholder="Enter StaffId" />
						</div>
						<form:errors path="staffId" cssClass="text-danger" />
					</div>
					<div>
						<label for="staffNature">Staff Nature</label>
						<div>
							<form:input path="staffNature" style="width: 300px;height: 25px;"
								title="StaffNature can't be empty And StaffNature must be in String"
								required="true" placeholder="Enter StaffNature" />
						</div>
						<form:errors path="staffNature" cssClass="text-danger" />
					</div>
					<div>
						<label for="addressLocate">Address</label>
						<div>
							<form:input path="addressLocate"
								style="width: 300px;height: 25px;"
								title="Address can't be empty And Address must be in String"
								required="true" placeholder="Enter Address" />
						</div>
						<form:errors path="addressLocate" cssClass="text-danger" />
					</div>
					<div>
						<label for="patientComment">Patient Comment</label>
						<div>
							<form:input path="patientComment"
								style="width: 300px;height: 25px;"
								title="PatientComment can't be empty And Patient must be in String"
								required="true" placeholder="Enter Comment" />
						</div>
						<form:errors path="patientComment" cssClass="text-danger" />
					</div>
					<div>
						<label for="onregisterfeedback">Feedback</label>
						<div>
							<form:input path="onregisterfeedback" required="true" />
						</div>
						<form:errors path="onregisterfeedback" cssClass="text-danger" />
					</div>
					<div>
						<label for="points">points</label>
						ExtraOrdinary:
						<form:radiobutton path="points" value="*****" required="true"/>
						Good:
						<form:radiobutton path="points" value="****" required="true"/>
						Average:
						<form:radiobutton path="points" value="***" required="true"/>
						Bad:
						<form:radiobutton path="points" value="****" required="true"/>
						Inferior:
						<form:radiobutton path="points" value="**" required="true"/>
					</div>
					<br>
					<div>
						<form:button id="log">Click</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
