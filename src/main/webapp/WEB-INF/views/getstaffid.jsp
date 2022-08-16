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
<%@include file="/WEB-INF/views/cssfile/getstaff.css"%>
</style>
<body>
	<div>
		<div id="form">
		   <div class="box">
			<form action="findstaffsid">
				<div>
					<label for="staffId">Enter StaffId</label>
					<div>
						<input type="text" id="staffId" name="staffId" />
					</div>
				</div>
				<input type="submit" value="get" />
			</form>
           </div>
		</div>
	</div>
</body>
</html>