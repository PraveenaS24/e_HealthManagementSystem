<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/listpatientfeed.css"%>
</style>
<body>
		<h1>PATIENT</h1>
	<div id="root">
		<div id="form">
			<div class="box">
			
				<form:form action="" method="post" modelAttribute="getpatient">
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" readonly="true" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="gender">Gender</label>
						<div>
							<form:input path="gender" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" readonly="true" 
								style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="bloodgroup">Blood Group</label>
						<div>
							<form:input path="bloodgroup" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="address">Address</label>
						<div>
							<form:input path="address"  readonly="true" style="width: 300px;height: 25px;" />
						</div>
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="observation">Observation</label>
						<div>
							<form:input path="observation" readonly="true" 
								style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="report">Report</label>
						<div>
							<form:input path="report" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="prescription">Prescription</label>
						<div>
							<form:input path="prescription" readonly="true"
								style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="fees">Fees</label>
						<div>
							<form:input path="fees" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="foodmaintenance">FoodMaintenance</label>
						<div>
							<form:input path="foodmaintenance" readonly="true"
								style="width: 300px;height: 25px;"  />
						</div>
					</div>
					<div>
						<label for="revisit">Revisit</label>
						<div>
							<form:input path="revisit" readonly="true" style="width: 300px;height: 25px;"  />
						</div>
						<br>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	         <div>
				  <a href="/patient/feedback?patientId=${getpatient.patientId}"><button class="button2">FeedBack</button></a>
				</div>
</body>
</html>
