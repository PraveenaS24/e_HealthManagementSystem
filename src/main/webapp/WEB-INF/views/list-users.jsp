<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Users List</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/cssfile/listuser.css"%>
</style>
</head>
<body>
	<h1>USER LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div>
			<table>
			<caption></caption>
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
	<div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				
				<div>
				  <a href="/admin/adminlogin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
</body>
</html>