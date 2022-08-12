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
		url('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/55884/s960_Hospital.jpg');
}
</style>
<body style="background-color: CornflowerBlue;">
<body>
	<h1 align="center">FINDED LIST</h1>
	<div id="root">
		<div id="form">
			<div align="center">
				<table border="" width="10%" cellpadding="2">
					<form:form action="" method="post" modelAttribute="findpatientbyid">
						<tr>
							<div>
								<td><label for="patientId">Patient ID</label></td>
								<td>
									<div>
										<form:input path="patientId" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="firstName">First Name</label></td>
								<td>
									<div>
										<form:input path="firstName" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="lastName">Last Name</label></td>
								<td>
									<div>
										<form:input path="lastName" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="gender">Gender</label></td>
								<td>
									<div>
										<form:input path="gender" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="contactNo">Contact No</label></td>
								<td>
									<div>
										<form:input path="contactNo" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="dob">DOB</label></td>
								<td>
									<div>
										<form:input path="dob" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="email">Email</label></td>
								<td>
									<div>
										<form:input path="email" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="bloodgroup">Blood Group</label></td>
								<td>
									<div>
										<form:input path="bloodgroup" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="address">Address</label></td>
								<td>
									<div>
										<form:input path="address" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="staffId">Staff Id</label></td>
								<td>
									<div>
										<form:input path="staffId" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="observation">Observation</label></td>
								<td>
									<div>
										<form:input path="observation" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="report">Report</label></td>
								<td>
									<div>
										<form:input path="report" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="prescription">Prescription</label></td>
								<td>
									<div>
										<form:input path="prescription" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="fees">Fees</label></td>
								<td>
									<div>
										<form:input path="fees" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="foodmaintenance">FoodMaintenance</label></td>
								<td>
									<div>
										<form:input path="foodmaintenance" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="revisit">Revisit</label></td>
								<td>
									<div>
										<form:input path="revisit" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="status">Status</label></td>
								<td>
									<div>
										<form:input path="status" style="width: 400px;height: 25px;"/>
									</div>
								</td>
							</div>
						</tr>
					</form:form>
				</table>
			</div>
		</div>
	</div>
</body>
</html>