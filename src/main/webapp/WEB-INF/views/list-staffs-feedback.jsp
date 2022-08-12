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
<body>
	<h1 align="center">TO ADD STAFFS FORM</h1>
	<div id="root">
		<div align="center">
			<div id="form">
				<form:form action="" method="post" modelAttribute="getstaffs">
					<div>
						<label for="staffId">Staff Id</label>
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
						<form:select path="gender">
							<form:option value="male">Male</form:option>
							<form:option value="female">Female</form:option>
						</form:select>
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
							<form:input path="dob" type="date" />
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
						</br>
					</div>
					<div align="center"></div>
				</form:form>
			</div>
		</div>
		<div id="table root">
			<div align="center">
				<table border="2" width="50%" cellpadding="20">
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