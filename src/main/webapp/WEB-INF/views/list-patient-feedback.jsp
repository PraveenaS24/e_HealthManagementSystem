<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
</head>
<body style="background-color: Silver;">
<body>
	<h1 align="center">PATIENT AND FEEDBACK</h1>
	<div id="root">
		<div id="form">
			<div align="center">
				<form:form action="" method="post" modelAttribute="getpatient">
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" />
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
						<label for="bloodgroup">Blood Group</label>
						<div>
							<form:input path="bloodgroup" />
						</div>
					</div>
					<div>
						<label for="address">Address</label>
						<div>
							<form:input path="address" />
						</div>
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" />
						</div>
					</div>
					<div>
						<label for="observation">Observation</label>
						<div>
							<form:input path="observation" type="date" />
						</div>
					</div>
					<div>
						<label for="report">Report</label>
						<div>
							<form:input path="report" />
						</div>
					</div>
					<div>
						<label for="prescription">Prescription</label>
						<div>
							<form:input path="prescription" />
						</div>
					</div>
					<div>
						<label for="fees">Fees</label>
						<div>
							<form:input path="fees" />
						</div>
					</div>
					<div>
						<label for="foodmaintenance">FoodMaintenance</label>
						<div>
							<form:input path="foodmaintenance" />
						</div>
					</div>
					<div>
						<label for="revisit">Revisit</label>
						<div>
							<form:input path="revisit" />
						</div>
						</br>
					</div>
				</form:form>
			</div>
		</div>
		<div id="root">
		<div id="form">
			<table align="center">
				<div>
					<form:form action="" method="post" modelAttribute="getfeedback">
						<tr>
							<div>
								<td><label for="feedbackId">FeedBack Id</label></td>
								<td>
									<div>
										<form:input path="feedbackId" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="patientId">Patient Id</label></td>
								<td>
									<div>
										<form:input path="patientId" />
									</div>
								</td>
							</div>
						<tr>
							<div>
								<td><label for="staffId">Staff Id</label></td>
								<td>
									<div>

										<form:input path="staffId" />
									</div>
								</td>

							</div>
						</tr>
						<tr>
							<div>
								<td><label for="staffNature">Staff Nature</label></td>
								<td>
									<div>
										<form:input path="staffNature" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="addressLocate">Address</label></td>
								<td>
									<div>
										<form:input path="addressLocate" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="patientComment">Patient Comment</label></td>
								<td><div>
										<form:input path="patientComment" />
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="onregisterfeedback">Feedback</label></td>
								<td>
									<div>
										<form:input path="onregisterfeedback" type="date" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="points">points</label></td>
								<td>
									<div>
										<form:input path="points" />
									</div>
								</td>

							</div>
						</tr>
						<div align="center">
						</div>
					</form:form>
			</table>
		</div>
	</div>
	</div>
</body>
</html>