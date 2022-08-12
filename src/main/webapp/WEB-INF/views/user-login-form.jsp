<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>

	<div id="root">
		<div id="form">
			<form:form action="checkuserlogin" method="post"
				modelAttribute="users">

				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="secretword">Secretword</label>
					<div>
						<form:input path="secretword" type="password" />
					</div>
				</div>
				<form:button>User Login</form:button>
			</form:form>
		</div>
	</div>
	</table>
</body>
</html>