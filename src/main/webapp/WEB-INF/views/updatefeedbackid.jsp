<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/updatepatientid.css"%>
</style>
<body>
<h1>Update Here</h1>
	<div>
		<div id="form">
			<div class="box">
				<form action="updatefeedbackform" method="get">
					<div>
						<label for="feedbackId">Enter FeedBackId</label>
						<div>
							<input type="text" id="feedbackId" name="feedbackId" required="true"/>
						</div>
					</div>
					<input id="log" type="submit" value="get" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>