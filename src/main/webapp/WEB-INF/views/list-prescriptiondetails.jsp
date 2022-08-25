<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/cssfile/listprescription.css"%>
</style>
</head>
<body>
	<h1>PRESCRIPTION LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div>
			<table>
				<caption></caption>
				<thead>
					<tr>
					    <th>Prescription_Id</th>
					    <th>Patient_Id</th>
					    <th>Gender</th>
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
					<c:forEach var="prescriptiondetails" items="${allprescription}">
						<!--var represents variable items represents collection  -->
						<tr>

                        <td>${prescriptiondetails.prescriptionId}</td>
						<td>${prescriptiondetails.patientId}</td>
						<td>${prescriptiondetails.gender}</td>
						<td>${prescriptiondetails.staffId}</td>
						<td>${prescriptiondetails.observation}</td>
						<td>${prescriptiondetails.report}</td>
						<td>${prescriptiondetails.prescription}</td>
						<td>${prescriptiondetails.fees}</td>
						<td>${prescriptiondetails.foodmaintenance}</td>
						<td>${prescriptiondetails.revisit}</td>
						
						
						
						<td><a
								href="updateprescriptiondetailsform?prescriptionId=${prescriptiondetails.prescriptionId}"> <input
									onclick="change()" type="button" value="Update" id="myButton1"></input>

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