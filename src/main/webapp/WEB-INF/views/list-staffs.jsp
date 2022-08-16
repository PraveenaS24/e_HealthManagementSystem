<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staffs List</title>
<style>
<%@include file="/WEB-INF/views/cssfile/liststaff.css"%>
</style>
</head>
<body>
	<h1>STAFF LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div>
			<table>
			<caption></caption>
				<thead>
					<tr>
						<th>Staffs_Id</th>
						<th>First_Name</th>
						<th>Last_Name</th>
						<th>Gender</th>
						<th>Contact_No</th>
						<th>DOB</th>
						<th>Email</th>
						<th>Role</th>
						<th>Qualification</th>
						<th>Speciality</th>
						<th>Intime</th>
						<th>Outtime</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="staffs" items="${allstaffs}">
						<!--var represents variable items represents collection  -->
						<tr>
							<td>${staffs.staffId}</td>
							<td>${staffs.firstName}</td>
							<td>${staffs.lastName}</td>
							<td>${staffs.gender}</td>
							<td>${staffs.contactNo}</td>
							<td>${staffs.dob}</td>
							<td>${staffs.email}</td>
							<td>${staffs.role}</td>
							<td>${staffs.qualification}</td>
							<td>${staffs.speciality}</td>
							<td>${staffs.intime}</td>
							<td>${staffs.outtime}</td>
							<td><a
								href="updatestaffsform?staffId=${staffs.staffId}">
									<input onclick="change()" type="button" value="Update"
									id="myButton1"></input>

							</a></td>
							<td><a
								href="deletestaff?staffId=${staffs.staffId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>