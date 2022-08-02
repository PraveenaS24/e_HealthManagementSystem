<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Staffs</title>
</head>
<body style="background-color: pink;">
<body>
	<h1 align="center">TO ADD STAFFS FORM</h1>
	<div id="root">
		<div align="center">
			<div id="form">
				<form:form action="addstaff" method="post"
					modelAttribute="addstaffs">
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
						<label for="dutytime">Dutytime</label>
						<div>
							<form:input path="dutytime" />
						</div>
						</br>
					</div>
					<form:button>click to register</form:button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>