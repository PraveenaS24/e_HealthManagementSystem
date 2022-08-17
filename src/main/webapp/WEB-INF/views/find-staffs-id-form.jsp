<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Staffs</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/stafffind.css"%>
</style>
<body style="background-color: lightSeaGreen;">
<body>
	<h1>FINDED LIST</h1>
	<div id="root">
		<div id="form">
			<div class="box">
				<form:form action="" method="post" modelAttribute="findstaffsbyid">
					<div>
						<label for="staffId">Staffs Id</label>
						<div>
							<form:input path="staffId" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="gender">Gender</label>
						<div>
							<form:input path="gender" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="role">Role</label>
						<div>
							<form:input path="role" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="speciality">Speciality</label>
						<div>
							<form:input path="speciality" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="intime">Intime</label>
						<div>
							<form:input path="intime" readonly="true" style="width:300px;height: 25px;"/>
						</div>
					</div>
					<div>
						<label for="outtime">Outtime</label>
						<div>
							<form:input path="outtime" readonly="true" style="width:300px;height: 25px;"/>
						</div>
						<br>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>