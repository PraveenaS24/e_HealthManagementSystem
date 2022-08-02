<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FeedBack List</title>
</head>
<body style="background-color: Gold;">
<body>
	<h1 align="center">FEEDBACK LIST</h1>
	<div id="table root">
		<div align="center">
			<table border="2" width="50%" cellpadding="20">
				<thead>
					<tr>
						<th>FeedBack_Id</th>
						<th>Patient_Id</th>
						<th>Staff_Id</th>
						<th>Staff_nature</th>
						<th>Address_locate</th>
						<th>Patient_Comment</th>
						<th>OnregisterFeedback</th>
						<th>Points</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="feedback" items="${allfeedback}">
						<!--var represents variable items represents collection  -->
						<tr>
							<td>${feedback.feedbackId}</td>
							<td>${feedback.patientId}</td>
							<td>${feedback.staffId}</td>
							<td>${feedback.staffNature}</td>
							<td>${feedback.addressLocate}</td>
							<td>${feedback.patientComment}</td>
							<td>${feedback.onregisterfeedback}</td>
							<td>${feedback.points}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>