<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Users List</title>
<style>
body {
	background-image: linear-gradient(to right, plum, sandybrown, peachpuff, papayawhip, pink,
		sandybrown, salmon, plum);
}

tr:hover {
	background-color: skyblue;
}

tr {
	color: black;
	font-weight: 900;
}

h1 {
	color: blue;
}
</style>
</head>
<body>
	<h1 align="center">USER LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div align="center">
			<table border="2" width="60%" cellpadding="10">
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
	</div>
</body>
</html>