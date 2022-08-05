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
<body style="background-color: yellow;">
<body>
	<h1 align="center">TO ADD PATIENT FORM</h1>
	<div id="root">
		<div id="form">
			<div align="center">
				<table border="" width="50%" cellpadding="10">
					<form:form action="addpatient" method="post" modelAttribute="addpatient">
						<tr>
							<div>
								<td><label for="patientId">Patient Id</label></td>
								<td><div>
										<form:input path="patientId" />
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="firstName">First Name</label></td>
								<td>
									<div>
										<form:input path="firstName" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="lastName">Last Name</label></td>
								<td>
									<div>
										<form:input path="lastName" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="gender">Gender</label></td>
								<td>
							Male: <form:radiobutton path="gender" value="Male" />
							Female: 	<form:radiobutton path="gender" value="Female" />
							</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="contactNo">Contact No</label></td>
								<td>
									<div>
										<form:input path="contactNo" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="dob">DOB</label></td>
								<td><div>
										<form:input path="dob" type="date" />
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="email">Email</label></td>
								<td><div>
										<form:input path="email" />
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="bloodgroup">Blood Group</label></td>
								<td>
									<div>
										<form:input path="bloodgroup" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="address">Address</label></td>
								<td>
									<div>
										<form:input path="address" />
									</div>
								</td>
							</div>
						</tr>
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
								<td><label for="observation">Observation</label></td>
								<td>
									<div>
										<form:input path="observation" type="date" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="report">Report</label></td>
								<td>
									<div>
										<form:input path="report" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="prescription">Prescription</label></td>
								<td>
									<div>
										<form:input path="prescription" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="fees">Fees</label></td>
								<td>
									<div>
										<form:input path="fees" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="foodmaintenance">FoodMaintenance</label></td>
								<td>
									<div>
										<form:input path="foodmaintenance" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="revisit">Revisit</label></td>
								<td>
									<div>
										<form:input path="revisit" />
									</div>
								</td>
							</div>
						<tr>
							<td colspan="2" align="center">
								<div>
									<form:button>submit</form:button>
								</div>
							</td>
						</tr>
					</form:form>
				</table>
			</div>
		</div>
	</div>
</body>
</html>