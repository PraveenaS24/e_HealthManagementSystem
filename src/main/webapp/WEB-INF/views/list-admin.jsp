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
<%@include file="/WEB-INF/views/cssfile/listadmin.css"%>
</style>
</head>
<body>
	<h1>ADMIN LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div>
			<table border="2" width="30%" cellpadding="10">
				<thead>
					<tr>
						<th>Admin Id</th>
						<th>Password</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="admin" items="${alladmin}">
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