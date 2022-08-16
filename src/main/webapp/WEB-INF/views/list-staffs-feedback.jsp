<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/liststafffeed.css"%>
</style>
<body>
	<h1>STAFF</h1>
	<div id="root">
		<div>
			<div id="form" class="box">
				<form:form action="" method="post" modelAttribute="getstaffs">
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="gender">Gender</label>
						<div>
							<form:input path="gender" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="role">Role</label>
						<div>
							<form:input path="role" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="speciality">Speciality</label>
						<div>
							<form:input path="speciality" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="intime">Intime</label>
						<div>
							<form:input path="intime" style="width: 300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="outtime">Outtime</label>
						<div>
							<form:input path="outtime" style="width: 300px;height: 25px;"/>
						</div>
						<br>
					</div>
				</form:form>
			</div>
		</div>
		<div class="son">
			<h1>FEEDBACK</h1>
			<div>
				<table>
				<caption></caption>
					<thead>
						<tr>
							<th>FeedBack_Id</th>
							<th>Patient_Id</th>
							<th>Staff_Id</th>
							<th>Staff_nature</th>
							<th>Address_locate</th>
							<th>Patient_Comment</th>
							<th>OnregisterFeedback</th>
							<th>Points</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="feedback" items="${getfeedback}">
							<!--var represents variable items represents collection  -->
							<tr>
								<td>${feedback.feedbackId}</td>
								<td>${feedback.patientId}</td>
								<td>${feedback.staffId}</td>
								<td>${feedback.staffNature}</td>
								<td>${feedback.addressLocate}</td>
								<td>${feedback.patientComment}</td>
								<td>${feedback.onregisterfeedback}</td>
								<td>${feedback.points}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>