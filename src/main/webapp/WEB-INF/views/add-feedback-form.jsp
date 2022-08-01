<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add FeedBack</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addfeedback" method="post"
				modelAttribute="addfeedback">
				<div>
					<label for="patientId">Patient Id</label>
					<div>
						<form:input path="patientId" />
					</div>
				</div>
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="staffNature">Staff Nature</label>
					<div>
						<form:input path="staffNature" />
					</div>
				</div>
				<div>
					<label for="addressLocate">Address</label>
					<div>
						<form:input path="addressLocate" />
					</div>
				</div>
				<div>
					<label for="patientComment">Patient Comment</label>
					<div>
						<form:input path="patientComment" />
					</div>
				</div>
				<div>
					<label for="onregisterfeedback">Feedback</label>
					<div>
						<form:input path="onregisterfeedback" type="date" />
					</div>
				</div>
				<div>
					<label for="points">points</label>
					<div>
						<form:input path="points" />
					</div>
				</div>
				<form:button>Click to register</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>