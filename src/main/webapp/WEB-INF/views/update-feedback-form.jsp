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
<%@include file="/WEB-INF/views/cssfile/updatefeed.css"%>
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
