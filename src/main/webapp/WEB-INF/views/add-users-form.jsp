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
<body style="background-color: bisque;">
<body>
	<h1 align="center">TO ADD USER FORM</h1>
	<div id="root">
		<div id="form">
			<table border="" width="50%" cellpadding="10">
				<tr>
					<form:form action="adduser" method="post" modelAttribute="addusers">
						<div>
							<td><label for="userId">User Id</label></td>
							<td>
								<div>
									<form:input path="userId" />
								</div>
								<form:errors path="userId" cssClass="text-danger" />
							</td>
						</div>
				</tr>
				<tr>
					<div>
						<td><label for="userType">User Type</label></td>
						<td><div>
								<form:select path="userType">
									<form:option value="nurse">Nurse</form:option>
									<form:option value="murse">Murse</form:option>
									<form:option value="attendant">Attendant</form:option>
								</form:select>
							</div></td>
					</div>
				</tr>

				<tr>
					<div>
						<td><label for="secretword">Secret Word</label></td>
						<td><div>
								<form:input path="secretword" type="password"/>
							</div></td>
							<form:errors path="secretword" cssClass="text-danger" />
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="register">Register Date</label></td>
						<td>
							<div>
								<form:input path="register" type="date" />
							</div>
						</td>
						<form:errors path="register" cssClass="text-danger" />
					</div>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<div>
							<form:button>Click to add</form:button>
						</div>
					</td>
				</tr>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>