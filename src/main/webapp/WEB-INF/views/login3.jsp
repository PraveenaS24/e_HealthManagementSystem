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
	background-image:
		url("https://c4.wallpaperflare.com/wallpaper/933/647/603/heart-beautiful-backgrounds-desktop-wallpaper-preview.jpg");
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

h1 {
	color: blue;
	float: center;
	text-align: center;
}

label {
	color: black;
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
	background-color: blue;
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
	margin-top: 100px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

#cont {
	float: center;
}
</style>
<script>
	function validate() {
		var pass = document.getElementById('pass');
		var upper = document.getElementById('upper');
		var lower = document.getElementById('lower');
		var num = document.getElementById('number');
		var len = document.getElementById('length');
		var sp_char = document.getElementById('special_character');

		if (pass.value.match(/[0-9]/)) {
			num.style.color = 'green'
		} else {
			num.style.color = 'red'
		}
		if (pass.value.match(/[A-Z]/)) {
			upper.style.color = 'green'
		} else {
			upper.style.color = 'red'
		}
		if (pass.value.match(/[a-z]/)) {

			lower.style.color = 'green'
		} else {
			lower.style.color = 'red';
		}
		if (pass.value.match(/[!\@\#\$\%\^\&\*\(\)\_\-\+\=\?\>\<\.\,]/)) {

			sp_char.style.color = 'green'
		} else {
			sp_char.style.color = 'red';
		}
		if (pass.value.length < 6) {

			len.style.color = 'green'
		} else {
			len.style.color = 'red';
		}
	}
	function confirm() {
		var pass = document.getElementById('pass');
		var email = document.getElementById('email');
		if (pass.value != email.value) {
			document.getElementById('number').style.display = 'none'
		}
	}
}
</script>
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
</body>
</html>
