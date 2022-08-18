<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update FeedBack</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/updatefeed.css"%>
</style>
<script type="text/javascript">
var feedbackIdCheck = function() {
	if (document.myForm.feedbackId.value == "") {

		if (alert("Patient Id cannot be blank")) {
			document.myForm.feedbackId.focus();
		} else
			document.activeElement.blur();

	} else {
		return false;
	}
}


var patientIdCheck = function() {
	if (document.myForm.patientId.value == "") {

		if (alert("Patient Id cannot be blank")) {
			document.myForm.patientId.focus();
		} else
			document.activeElement.blur();

	} else {
		return false;
	}
}

var staffIdCheck = function() {
	if (document.myForm.staffId.value == "") {

		if (alert("Staff Id cannot be blank")) {
			document.myForm.staffId.focus();
		} else
			document.activeElement.blur();

	} else {
		return false;
	}
}

var staffNatureCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.myForm.staffNature.value.match(nameRegex)) {
		if (alert("StaffNat can't be empty or must contain only alphabets")) {
			document.myForm.staffNature.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}

}

var addressLocateCheck = function() {
	if (document.myForm.addressLocate.value == "") {
		if (alert("Address cannot be blank")) {
			document.myForm.addressLocate.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}
}

var patientCommentCheck = function() {
	var nameRegex = new RegExp("^[a-zA-Z]+$");
	if (!document.myForm.patientComment.value.match(nameRegex)) {
		if (alert("Comment can't be empty or must contain only alphabets")) {
			document.myForm.patientComment.focus();
		} else
			document.activeElement.blur();
	} else {
		return false;
	}

}

</script>
<body>
	<h1>UPDATED LIST</h1>
	<div id="root" class="box">
		<div id="form">
			<div>
				<form:form action="updatefeedback" method="post"
					modelAttribute="updatefeedback" name="myForm">
					<div>
						<label for="feedbackId">FeedBack Id</label>
						<div>
							<form:input path="feedbackId" readonly="true"   onblur="feedbackIdCheck();" name="feedbackId" id="feedbackId" style="width: 300px;height: 25px;"
								title="Id can't be empty And Id must be in Integer"
								required="true" placeholder="Enter FeedBackId" />
						</div>
						<form:errors path="feedbackId" cssClass="text-danger" />
					</div>
					<div>
						<label for="patientId">Patient Id</label>
						<div>
							<form:input path="patientId" readonly="true" onblur="patientIdCheck();" name="patientId" id="patientId" style="width: 300px;height: 25px;"
								title="Id can't be empty And Id must be in Integer"
								required="true" placeholder="Enter PatientId" />
						</div>
						<form:errors path="patientId" cssClass="text-danger" />
					</div>
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" readonly="true" onblur="staffIdCheck();" name="staffId" id="staffId" style="width: 300px;height: 25px;"
								title="StaffId can't be empty And StaffId must be in Integer"
								required="true" placeholder="Enter StaffId" />
						</div>
						<form:errors path="staffId" cssClass="text-danger" />
					</div>
					<div>
						<label for="staffNature">Staff Nature</label>
						<div>
							<form:input path="staffNature" onblur="staffNatureCheck();" name="staffNature" id="staffNature" style="width: 300px;height: 25px;"
								title="StaffNature can't be empty And StaffNature must be in String"
								required="true" placeholder="Enter StaffNature" />
						</div>
						<form:errors path="staffNature" cssClass="text-danger" />
					</div>
					<div>
						<label for="addressLocate">Address</label>
						<div>
							<form:input path="addressLocate" onblur="addressLocateCheck();" name="addressLocate" id="addressLocate"
								style="width: 300px;height: 25px;"
								title="Address can't be empty And Address must be in String"
								required="true" placeholder="Enter Address" />
						</div>
						<form:errors path="addressLocate" cssClass="text-danger" />
					</div>
					<div>
						<label for="patientComment">Patient Comment</label>
						<div>
							<form:input path="patientComment" onblur="patientCommentCheck();"
 name="patientComment"  id="patientComment"	style="width: 300px;height: 25px;"
								title="PatientComment can't be empty And Patient must be in String"
								required="true" placeholder="Enter Comment" />
						</div>
						<form:errors path="patientComment" cssClass="text-danger" />
					</div>
					<div>
						<label for="onregisterfeedback">Feedback</label>
						<div>
							<form:input path="onregisterfeedback" required="true" />
						</div>
						<form:errors path="onregisterfeedback" cssClass="text-danger" />
					</div>
					<div>
						<label for="points">points</label>
						ExtraOrdinary:
						<form:radiobutton path="points" value="*****" required="true"/>
						Good:
						<form:radiobutton path="points" value="****" required="true"/>
						Average:
						<form:radiobutton path="points" value="***" required="true"/>
						Bad:
						<form:radiobutton path="points" value="****" required="true"/>
						Inferior:
						<form:radiobutton path="points" value="**" required="true"/>
					</div>
					<br>
					<div>
						<form:button id="log">Click</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<div>
				  <a href="/login/home"><button class="button2">Home</button></a>
				</div>
				
				<div>
				  <a href="/admin/login"><button class="button3">Logout</button></a>
				</div>
</body>
</html>
