<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>FeedBack List</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/cssfile/listfeedback.css"%>
</style>
</head>
<body>
	<h1>FEEDBACK LIST</h1>
	<br>
	<br>
	<br>
	<div id="table root">
		<div class="box">
			<table>
			<caption></caption>
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
	<div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				
				<div>
				  <a href="/users/userli"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
	
</body>
</html>