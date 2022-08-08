<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Update Staffs</title>
</head>
<!-- <body style="background-color: wheat;"> -->
<body>
	<div class="skewed-bg">
		<h1 align="center">UPDATE LIST</h1>
		<div id="root">
			<div id="form" align="center">
				<table border="" width="50%" cellpadding="10">
					<form:form action="updatestaff" method="post" modelAttribute="updatestaffs">
						<tr>
							<div>
								<td><label for="staffId">Staffs Id</label></td>
								<td>
									<div>
										<form:input path="staffId" style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="firstName">First Name</label></td>
								<td>
									<div>
										<form:input path="firstName"
											style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="lastName">Last Name</label></td>
								<td>
									<div>
										<form:input path="lastName" style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="gender">Gender</label></td>
								<td>Male: <form:radiobutton path="gender" value="Male" />
									Female: <form:radiobutton path="gender" value="Female" />
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="contactNo">Contact No</label></td>
								<td>
									<div>
										<form:input path="contactNo"
											style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="dob">DOB</label></td>
								<td>
									<div>
										<form:input path="dob" type="date"
											style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="email">Email</label></td>
								<td>
									<div>
										<form:input path="email" style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="role">Role</label></td>
								<td>Perform diagnostic tests : <form:radiobutton
										path="role" value="Perform diagnostic tests" /> Assess the
									patient : <form:radiobutton path="role"
										value="Assess the patient" /> Management of illness : <form:radiobutton
										path="role" value="Management of illness" />
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="qualification">Qualification</label></td>
								<td>
									<div>
										<form:input path="qualification"
											style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="speciality">Speciality</label></td>
								<td>
									<div>
										<form:input path="speciality"
											style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="intime">Intime</label></td>
								<td><div>
										<form:input path="intime" type="time"
											style="width: 500px;height: 25px;" />
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="outtime">Outtime</label></td>
								<td>
									<div>
										<form:input path="outtime" type="time"
											style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<div>
									<form:button>Click here to Update</form:button>
								</div>
							</td>
						</tr>
					</form:form>
			</div>
		</div>
	</div>
	</div>
	</div>
	</table>
</body>
</html>