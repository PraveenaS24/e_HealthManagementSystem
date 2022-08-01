<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staffs List</title>
</head>
<body style="background-color: mediumSpringGreen;">
<body>
	<div id="table root">
		<table>
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
					<th>Dutytime</th>
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
						<td>${staffs.dutytime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>