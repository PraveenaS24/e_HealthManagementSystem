<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Patient List</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/cssfile/listpatient.css"%>
</style>
</head>
<body>
	<h1>PATIENT LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div>
			<table>
			<caption></caption>
				<thead>
					<tr>
						<th>Patient_Id</th>
						<th>Patient_Name</th>
						<th>Password</th>
						<th>DOB</th>
						<th>BloodGroup</th>
						<th>Contact_No</th>
						<th>Email</th>
						<th>Address</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="patient" items="${allpatient}">
						<!--var represents variable items represents collection  -->
						<tr>
							<td>${patient.patientId}</td>
							<td>${patient.patientName}</td>
							<td>${patient.password}</td>
							<td>${patient.dob}</td>
							<td>${patient.bloodgroup}</td>
							<td>${patient.contactNo}</td>
							<td>${patient.email}</td>
							<td>${patient.address}</td>
							
							<td><a
								href="updatepatientform?patientId=${patient.patientId}"> <input
									onclick="change()" type="button" value="Update" id="myButton1"></input>

							</a></td>
							<td><a href="deletepatient?patientId=${patient.patientId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				
				<div>
				  <a href="/users/userli"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
</body>
</html>