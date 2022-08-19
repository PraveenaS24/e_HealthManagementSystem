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
<%@include file="/WEB-INF/views/cssfile/login3.css"%>
</style>
</head>
<body>
	<h1>ADMIN LOGIN</h1>

	<div id="root" class="box">
		<div id="form">
			<form:form action="checkadminlogin" method="post"
				modelAttribute="admin">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" class="form-control"
							title="Id must be number" pattern="^[0-9]+$" required="true"
							placeholder="Enter AdminId" style="width: 200px;height: 25px;" />
					</div>
					<form:errors path="adminId" cssClass="text-danger" />
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input type="password" path="password" class="form-control"
							title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							required="true" placeholder="Enter PassWord"
							style="width: 200px;height: 25px;" />
					</div>
					<form:errors path="password" cssClass="text-danger" />
				</div>
				<br>
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
				<a href="/login/home"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
				
				
</body>
</html>
