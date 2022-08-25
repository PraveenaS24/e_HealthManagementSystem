<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Patient</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/patientfind.css"%>
</style>
<body>
	<h1>FINDED LIST</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="" method="get" modelAttribute="findpatientbyid">
					<div>
						<label for="patientId"></label>

						<div>
							<form:input path="patientId" readonly="true" style="width: 300px;height: 25px;"
								title="Name can't be empty And Patient Name must be in String"
								required="true" placeholder="Enter Name" onblur="patientIdCheck();"  name="patientId" id="patientId" type="hidden"/>
						</div>

						<form:errors path="patientId" cssClass="text-danger" />
					</div>
					
					
					<div>
						<label for="patientName">Patient Name</label>

						<div>
							<form:input path="patientName" readonly="true" style="width: 300px;height: 25px;"
								title="Name can't be empty And Patient Name must be in String"
								required="true" placeholder="Enter Name" onblur="patientNameCheck();"  name="patientName" id="patientName"/>
						</div>

						<form:errors path="patientName" cssClass="text-danger" />
					</div>
					
					<div>
						<label for="password">PassWord</label>
						<div>
							<form:input path="password" onblur="passwordCheck();" readonly="true" name="password" id="password" type="password"
								title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
								pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
								required="true" placeholder="Enter PassWord" style="width: 300px;height: 25px;"/>
						</div>
						<form:errors path="password" cssClass="text-danger" />
					</div>
					
					<div>
					<label for="contactNo">Contact No</label>
					<div>
						<form:input path="contactNo" readonly="true" placeholder="Enter PhoneNumber"
							style="width: 300px;height: 25px;" onblur="contactNoCheck();" id="contactNo" name="contactNo" required="true" />
					</div>
					<form:errors path="contactNo" cssClass="text-danger" />
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date" readonly="true" placeholder="Enter Date"
								style="width: 300px;height: 25px;" required="true" />
						</div>
						<form:errors path="dob" cssClass="text-danger" />
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" readonly="true" style="width: 300px;height: 25px;"
								title="Mail Id is not in correct formet"
								pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" onblur="emailCheck();" id="email" name="email" required="true"
								placeholder="Enter Email" />
						</div>
						<form:errors path="email" cssClass="text-danger" />
					</div>

					<div>
						<label for="bloodgroup">Blood Group</label>

						<div>
							<form:input path="bloodgroup" readonly="true" style="width: 300px;height: 25px;"
								title="BloodGroup can't be empty And BloodGroup must be in String" onblur="bloodgroupCheck();" id="bloodgroup" name="bloodgroup"
								required="true" placeholder="Enter BloodGroup" />
						</div>

					</div>

					<div>
						<label for="address">Address</label>

						<div>
							<form:input path="address" readonly="true" style="width: 300px;height: 25px;"
								title="Address can't be empty And Address must be in String"
								required="true" placeholder="Enter Address" onblur="addressCheck();" id="address" name="address"/>
						</div>

						<form:errors path="address" cssClass="text-danger" />
					</div>

					${result}
				</form:form>
			</div>
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
