<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD FEEDBACK FORM</title>
</head>
<body style="background-color: DarkSalmon;">
<body>
	<h1 align="center">TO ADD FEEDBACK</h1>
	<div id="root">
		<div id="form" align="center">
			<table border="" width="50%" cellpadding="10">
				<div>
					<form:form action="addfeedback" method="post" modelAttribute="addfeedback">
						<tr>
							<div>
								<td><label for="feedbackId">FeedBack Id</label></td>
								<td>
									<div>
										<form:input path="feedbackId" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="patientId">Patient Id</label></td>
								<td>
									<div>
										<form:input path="patientId" />
									</div>
								</td>
							</div>
						<tr>
							<div>
								<td><label for="staffId">Staff Id</label></td>
								<td>
									<div>

										<form:input path="staffId" />
									</div>
								</td>

							</div>
						</tr>
						<tr>
							<div>
								<td><label for="staffNature">Staff Nature</label></td>
								<td>
									<div>
										<form:input path="staffNature" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="addressLocate">Address</label></td>
								<td>
									<div>
										<form:input path="addressLocate" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="patientComment">Patient Comment</label></td>
								<td><div>
										<form:input path="patientComment" />
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="onregisterfeedback">Feedback</label></td>
								<td>
									<div>
										<form:input path="onregisterfeedback" type="date" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="points">points</label></td>
								<td>
									<div>
										<form:input path="points" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<div>
									<form:button>Click to register</form:button>
								</div>
							</td>
						</tr>
					</form:form>
				</div>
			</table>
		</div>
	</div>
</body>
</html>