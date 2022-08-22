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
<%@include file="/WEB-INF/views/cssfile/getstafffeed.css"%>
</style>
<body>
  <h1>View Staff FeedBack</h1>
	<div>
		<div id="form">
			<div class="box">
				<form action="getstaffsfeedback">
					<div>
						<label for="staffId">Enter StaffId</label>
						<div>
							<input type="text" id="staffId" name="staffId" required="true" />
						</div>
					</div>
					<input id="log" type="submit" value="get" />
					${result}
				</form>
			</div>
		</div>
	</div>
</body>
</html>