<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>FeedBack List</title>
<style>
body {
	background-image: linear-gradient(to right, plum, sandybrown, peachpuff, papayawhip, pink,
		sandybrown, salmon, plum);
}

tr:hover {
	background-color: skyblue;
}

tr {
	color: black;
	font-weight: 900;
}

h1 {
	color: blue;
	text-align: center;
}
.box{
   text-align: center;
 }
</style>
</head>
<body>
	<h1>FEEDBACK LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div class="box">
			<table border="2" width="30%" cellpadding="10">
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
							<td><a
								href="updatefeedbackform?feedbackId=${feedback.feedbackId}">
									<input onclick="change()" type="button" value="Update"
									id="myButton1"></input>

							</a></td>
							<td><a
								href="deletefeedback?feedbackId=${feedback.feedbackId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>