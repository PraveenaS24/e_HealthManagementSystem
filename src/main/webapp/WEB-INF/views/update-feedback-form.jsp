<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update FeedBack</title>
</head>
<style>
body {
	background-image: linear-gradient(gainsboro, grey, lavender);
}

label {
	color: red;
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
	position: relative;
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
	margin-right: 400px;
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
	width: 900px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>
<body>
	<h1 align="center">UPDATED LIST</h1>
	<div id="root" class="box">
		<div id="form">
			<div align="center">
				<table width="100%" cellpadding="10">
					<form:form action="updatefeedback" method="post"
						modelAttribute="updatefeedback">
						<tr>
							<div>
								<td><label for="feedbackId">FeedBack Id</label></td>
								<td>
									<div>
										<form:input path="feedbackId" style="width: 300px;height: 25px;"
										title="Id can't be empty And Id must be in Integer"
										required="true" placeholder="Enter FeedBackId"/>
									</div>
								</td><form:errors path="feedbackId" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
						<div><td>
							<label for="patientId">Patient Id</label></td>
							<td>
							<div>
								<form:input path="patientId" style="width: 300px;height: 25px;"
										title="Id can't be empty And Id must be in Integer"
										required="true" placeholder="Enter PatientId"/>
							</div></td><form:errors path="patientId" cssClass="text-danger" />
						</div>
						</tr>
						<tr>
						<div><td>
							<label for="staffId">Staff Id</label></td>
							<td>
							<div>
								<form:input path="staffId" style="width: 300px;height: 25px;"
										title="StaffId can't be empty And StaffId must be in Integer"
										required="true" placeholder="Enter StaffId"/>
							</div></td><form:errors path="staffId" cssClass="text-danger" />
						</div></tr>
						<tr>
						<div><td>
							<label for="staffNature">Staff Nature</label></td>
							<td>
							<div>
								<form:input path="staffNature" style="width: 300px;height: 25px;"
										title="StaffNature can't be empty And StaffNature must be in String"
										required="true" placeholder="Enter StaffNature"/>
							</div>
							</td><form:errors path="staffNature" cssClass="text-danger" />
						</div></tr>
						<tr>
						<div>
						<td>
							<label for="addressLocate">Address</label></td>
							<td>
							<div>
								<form:input path="addressLocate" style="width: 300px;height: 25px;"
										title="Address can't be empty And Address must be in String"
										required="true" placeholder="Enter Address"/>
							</div>
							</td><form:errors path="addressLocate" cssClass="text-danger" />
						</div></tr>
						<tr>
						<div><td>
							<label for="patientComment">Patient Comment</label></td>
							<td>
							<div>
								<form:input path="patientComment" style="width: 300px;height: 25px;"
										title="PatientComment can't be empty And Patient must be in String"
										required="true" placeholder="Enter Comment"/>
							</div>
							</td><form:errors path="patientComment" cssClass="text-danger" />
						</div></tr>
						<tr>
						<div><td>
							<label for="onregisterfeedback">Feedback</label></td>
							<td>
							<div>
								<form:input path="onregisterfeedback" required="true"/>
							</div>
							</td><form:errors path="onregisterfeedback" cssClass="text-danger" />
						</div></tr>
						<tr>
						<div>
						<td>
							<label for="points">points</label></td>
							<td>
							ExtraOrdinary: <form:radiobutton path="points" value="*****" />
								Good: <form:radiobutton path="points" value="****" />
								Average: <form:radiobutton path="points" value="***" />
								Bad: <form:radiobutton path="points" value="****" />
								Inferior: <form:radiobutton path="points" value="**" />
							</td>
						</div>
						</tr>
						<tr>
						<div>
						<td colspan="2" align="center"><br> <form:button
									id="log">Click</form:button></td>
						</div>
						</tr>
					</form:form>
				</table>
			</div>
		</div>
	</div>
</body>
</html>