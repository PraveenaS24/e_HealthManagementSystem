<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/login2.css"%>
</style>

</head>
<body>
	<br>
	<h1 id="cont">User Login</h1>
	<br>
	<div id="root" class="box">
		<div id="form">

			<form:form action="checkuserlogin" method="post"
				modelAttribute="users">

				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" class="form-control"
							title="Id must be number" pattern="^[0-9]+$" required="true"
							placeholder="Enter UserId" />
					</div>
					<form:errors path="userId" cssClass="text-danger" />
				</div>


				<div>
					<label for="secretword">Password</label>
					<div>
						<form:input type="password" path="secretword" class="form-control"
							title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							required="true" placeholder="Enter PassWord" />
					</div>
					<form:errors path="secretword" cssClass="text-danger" />
				</div>

				<div>
					<label for="userType">UserType</label>
					<div>
						<form:select path="userType" required="true">
							<form:errors path="userType" />
							<form:option value="nurse">Nurse</form:option>
							<form:option value="murse">Murse</form:option>
						</form:select>
					</div>
				</div>
				<br>
				<div>
				<form:button id="log">Login</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				<div>
				  <a href="/login/home"><button class="button3"><em class="gg-arrow-left-r"></em>

				  </button></a>
				</div>
				
				
</body>
</html>