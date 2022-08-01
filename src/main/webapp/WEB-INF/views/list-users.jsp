<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users List</title>
</head>
<body style="background-color: rosyBrown;">
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>User Id</th>
					<th>User Type</th>
					<th>Secretword</th>
					<th>Register</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="users" items="${allusers}">
					<!--var represents variable items represents collection  -->
					<tr>
						<td>${users.userId}</td>
						<td>${users.userType}</td>
						<td>${users.secretword}</td>
						<td>${users.register}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>