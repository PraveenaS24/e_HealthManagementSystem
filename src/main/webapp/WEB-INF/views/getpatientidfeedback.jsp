<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>PatientFeedBack</title>
</head>
<style>
body {
	background-image:
		url("https://images.pexels.com/photos/1640770/pexels-photo-1640770.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
	background-repeat: no-repeat;
	background-size: cover;
}
h1 {
	color: blue;
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: black;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
	margin-top: 10px;
	text-align: center;
	margin-left: 230px;
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
	float: center;
}

.box {
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
	font-weight: 900;
	width: 600px;
	margin-top: 300px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

</style>
<body>
	<div>
		<div id="form">
			<div class="box">
				<form action="getpatientfeedback">
					<div>
						<label for="patientId">Enter PatientId</label>
						<div>
							<input type="text" id="patientId" name="patientId" />
						</div>
					</div>
					<input type="submit" value="get" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>