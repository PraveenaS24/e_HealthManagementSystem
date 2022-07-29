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
	<div id="root">
		<div id="form">
			<form:form action="adduser" method="post" modelAttribute="addusers">
				<div>
					<label for="user_Id">User Id</label>
					<div>
						<form:input path="user_Id" />
					</div>
				</div>
				<div>
					<label for="user_Type">User Type</label>
					<div>
						<form:input path="user_Type" />
					</div>
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
						<form:input path="register" />
					</div>
				</div>
				<form:button>Add Users</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>