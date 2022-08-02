<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient List</title>
</head>
<body style="background-color: linen;">
<body>
	<h1 align="center">PATIENT LIST</h1>
	<div id="table root">
		<div align="center">
			<table border="2" width="10%" cellpadding="10">
				<thead>
					<tr>
						<th>Patient_Id</th>
						<th>First_Name</th>
						<th>Last_Name</th>
						<th>Gender</th>
						<th>Contact_No</th>
						<th>DOB</th>
						<th>Email</th>
						<th>BloodGroup</th>
						<th>Address</th>
						<th>Staff_Id</th>
						<th>Observation</th>
						<th>Report</th>
						<th>Prescription</th>
						<th>Fees</th>
						<th>FoodMaintenance</th>
						<th>Revisit</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="patient" items="${allpatient}">
						<!--var represents variable items represents collection  -->
						<tr>
							<td>${patient.patientId}</td>
							<td>${patient.firstName}</td>
							<td>${patient.lastName}</td>
							<td>${patient.gender}</td>
							<td>${patient.contactNo}</td>
							<td>${patient.dob}</td>
							<td>${patient.email}</td>
							<td>${patient.bloodgroup}</td>
							<td>${patient.address}</td>
							<td>${patient.staffId}</td>
							<td>${patient.observation}</td>
							<td>${patient.report}</td>
							<td>${patient.prescription}</td>
							<td>${patient.fees}</td>
							<td>${patient.foodmaintenance}</td>
							<td>${patient.revisit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>