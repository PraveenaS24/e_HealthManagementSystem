<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Patient</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/getpatient.css"%>
</style>
<body>
<h1>View Patient</h1>
	<div>
		<div id="form">
			<div class="box">
				<form action="findpatientid">
					<div>
						<label for="patientId">Enter PatientId</label>
						<div>
							<input type="text" id="patientId" name="patientId" required="true"/>
						</div>
					</div>
					<input id="log" type="submit" value="get" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>