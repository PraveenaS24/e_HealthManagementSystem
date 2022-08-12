<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body {
	background-image: linear-gradient(to right, lightgray,#2E4053, #808B96, #BFC9CA, #626567, black, slategrey);
	background-size: 50% 80%;
}

h1 {
	color: blue;
	float: center;
}

label {
	color: blue;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#secretword {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#userType {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}

.box {
	width: 400px;
	height: 240px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

#cont {
	float: center;
}
</style>
</head>
<body>
	<br>
	<h1 id="cont" align="center">ADMIN LOGIN</h1>
	<br>
	<br>
	<div id="root" class="box" align="center">
		<div id="form">
			<table>
				<form:form action="checkadminlogin" method="post"
					modelAttribute="admin">
					<tr>
						<div>
							<td><label for="adminId">Admin Id</label></td>
							<div>
								<td><form:input path="adminId" class="form-control" 
								title="Id must be number"
											pattern="^[0-9]+$" required="true"
											placeholder="Enter AdminId" style="width: 200px;height: 25px;"/></td>
							</div>
							<form:errors path="adminId" cssClass="text-danger" />
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="password">Password</label></td>
							<div>
								<td><form:input type="password" path="password"
										class="form-control" title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Enter PassWord" style="width: 200px;height: 25px;"/></td>
							</div>
							<form:errors path="password" cssClass="text-danger" />
						</div>
						<br>
					</tr>
					<tr>
						<div>
							<td colspan="5" align="right"><br> <form:button
									id="log">Login</form:button></td>
						</div>
					</tr>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>