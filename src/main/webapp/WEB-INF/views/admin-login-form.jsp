<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="checkadminlogin" method="post"
				modelAttribute="admin">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" type="password" />
					</div>
				</div>
				<form:button>Admin Login</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>