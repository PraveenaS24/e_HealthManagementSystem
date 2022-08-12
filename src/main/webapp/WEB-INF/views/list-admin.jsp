<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
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
	<h1 align="center">ADMIN LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div align="center">
			<table border="2" width="30%" cellpadding="10">
				<thead>
					<tr>
						<th>Admin Id</th>
						<th>Password</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="admin" items="${alladmin}">
						<!--var represents variable items represents collection  -->
						<tr>
							<td>${admin.adminId}</td>
							<td>${admin.password}</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>