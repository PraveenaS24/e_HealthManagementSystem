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
<%@include file="/WEB-INF/views/cssfile/feedbackfind.css"%>
</style>
<body style="background-color: Cyan;">
<body>
	<h1>FINDED LIST</h1>
	<div id="root">
		<div id="form">
			<div class="box">
				<form:form action="" method="get" modelAttribute="findfeedbackbyid">
					<div>
						<label for="feedbackId">FeedBack Id</label>
						<div>
							<form:input path="feedbackId" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="staffNature">Staff Nature</label>
						<div>
							<form:input path="staffNature" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="addressLocate">Address</label>
						<div>
							<form:input path="addressLocate" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="patientComment">Patient Comment</label>
						<div>
							<form:input path="patientComment" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="onregisterfeedback">Feedback</label>
						<div>
							<form:input path="onregisterfeedback" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="points">points</label>
						<div>
							<form:input path="points" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>