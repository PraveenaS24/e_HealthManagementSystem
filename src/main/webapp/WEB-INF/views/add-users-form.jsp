<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Users</title>
</head>
<body>
	<h1 align="center">TO ADD USER FORM</h1>
	<div id="root">
		<div id="form">
			<div align="center">
				<form:form action="adduser" method="post" modelAttribute="addusers">
					<div>
						<label for="userId">User Id</label>
						<div>
							<form:input path="userId" />
						</div>
					</div>
					<div>
						<label for="userType">User Type</label>
						<form:select path="userType">
							<form:option value="nurse">Nurse</form:option>
							<form:option value="murse">Murse</form:option>
							<form:option value="attendant">Attendant</form:option>
						</form:select>
					</div>
					<div>
						<label for="secretword">Secret Word</label>
						<div>
							<form:input path="secretword" />
						</div>
					</div>
					<div>
						<label for="register">Register Date</label>
						<div>
							<form:input path="register" type="date" />
						</div>
					</div>
					</br>
					<div>
						<form:button>Click to add</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>