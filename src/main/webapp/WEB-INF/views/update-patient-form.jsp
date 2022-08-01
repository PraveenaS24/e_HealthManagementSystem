<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Patient</title>
</head>
<body style="background-color: NavajoWhite;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatepatient" method="post"
				modelAttribute="updatepatient">
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
						<form:input path="dob" />
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
						<form:input path="observation" />
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
				</div>
				<form:button>Click here to Update</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>