<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin List</title>
</head>
<body style="background-color: Blue Gray;">
<body>
	<h1 align="center">ADMIN LIST</h1>
	<div id="table root">
		<div align="center">
			<table border="20" width="50%" cellpadding="2">
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