<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Staffs</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/updatestaff.css"%>
</style>
<script type="text/javascript">

var staffIdCheck = function() {
	if(document.myForm.staffId.value == ""){
		
		if(alert("Staff Id cannot be blank")){
			document.myForm.staffId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}

var firstNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.firstName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.myForm.firstName.focus();
		    }
			else
				document.activeElement.blur();
		}
 else{
     return false;
 } 

}
var lastNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.lastName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.myForm.lastName.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
    return false;
} 

}

var contactNoCheck = function() {
	 var phoneRg = new RegExp("[1-9]{1}[0-9]{9}");
	 if(!document.myForm.contactNo.value.match(phoneRg)){
			if(alert("Phone Number not valid")){
				 document.myForm.contactNo.focus();
			}
			else
				document.activeElement.blur();
		}
 else{
 	return false;
 }
} 


var emailCheck = function() {
	var rg = new RegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
	if(!document.myForm.email.value.match(rg)){
		if(alert("Email not valid")){
			document.myForm.email.focus();
		}
		else
			document.activeElement.blur();
	}
   else{
   	return false;
   }
}

var qualificationCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.qualification.value.match(nameRegex)){
			if(alert("Qualification can't be empty or must contain only alphabets")){ 
				 document.myForm.qualification.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
   return false;
} 

}

</script>
<body>
	<h1>UPDATE STAFFS</h1>
	<div id="root" class="box">
		<div id="form">
			<div>
				<form:form action="updatestaff" method="post"
					modelAttribute="updatestaffs" name="myForm">
					<div>
						<label for="staffId">Staff Id</label>
						<div>
							<form:input path="staffId" readonly="true" style="width: 300px;height: 25px;"
								title="Id can't be empty And ID must be in String"
								required="true" placeholder="Enter StaffId" onblur="staffIdCheck();" name="staffId" id="staffId" />
						</div>
						<form:errors path="staffId" cssClass="text-danger" />
					</div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" readonly="true" style="width: 300px;height: 25px;"
								title="Name can't be empty And First Name must be in String"
								required="true" placeholder="Enter FirstName" onblur="firstNameCheck();" 
							name="firstName" id="firstName"/>
						</div>
						<form:errors path="firstName" cssClass="text-danger" />
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" readonly="true" style="width: 300px;height: 25px;"
								title="Name can't be empty And Last Name must be in String"
								required="true" placeholder="Enter LastName" onblur="lastNameCheck();" id="lastName" name="lastName"/>
						</div>

						<form:errors path="lastName" cssClass="text-danger" />
					</div>

					<div>
						<label for="gender">Gender</label> Male:
						<form:radiobutton path="gender" readonly="true" value="Male" />
						Female:
						<form:radiobutton path="gender" readonly="true" value="Female" />

					</div>

					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" placeholder="Enter PhoneNumber"
								required="true" style="width: 200px; height: 25px;" onblur="contactNoCheck();" id="contactNo" name="contactNo"/>
						</div>
						<form:errors path="contactNo" cssClass="text-danger" />
					</div>

					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" readonly="true" 
								style="width: 300px;height: 25px;" placeholder="Enter Date"
								requird="true" />
						</div>
						<form:errors path="dob" cssClass="text-danger" />
					</div>

					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" style="width: 300px;height: 25px;"
								title="Mail Id is not in correct formet" onblur="emailCheck();" id="email" name="email"
								pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
								placeholder="Enter Email" />
						</div>
						<form:errors path="email" cssClass="text-danger" />
					</div>

					<div class="const">
						<label for="role">Role</label> Perform diagnostic tests :
						<form:radiobutton path="role" value="Perform diagnostic tests" readonly="true"/>
						Assess the patient :
						<form:radiobutton path="role" value="Assess the patient" readonly="true"/>
						Management of illness :
						<form:radiobutton path="role" value="Management of illness" readonly="true"/>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" readonly="true" onblur="qualificationCheck();" id="qualification" name="qualification" 
								style="width: 300px;height: 25px;"
								placeholder="Enter Qualification" required="true" />
						</div>
						<form:errors path="qualification" cssClass="text-danger" />
					</div>

					<div>
						<label for="speciality">Speciality</label> Pediatrics :
						<form:radiobutton path="speciality" readonly="true" value="Pediatrics" />
						Geriatrics :
						<form:radiobutton path="speciality" readonly="true" value="Geriatrics" />
						Pain care :
						<form:radiobutton path="speciality" readonly="true" value="Pain care" />
						Wound care :
						<form:radiobutton path="speciality" readonly="true" value=" Wound care" />
						Mental health :
						<form:radiobutton path="speciality" readonly="true" value="Mental health" />
						Specific disease:
						<form:radiobutton path="speciality" readonly="true" value="Specific disease" />
					</div>

					<div>
						<label for="intime">Intime</label>
						<div>
							<form:input path="intime" type="time"
								style="width: 300px;height: 25px;" placeholder="Enter Time"
								required="true" />
						</div>
						<form:errors path="intime" cssClass="text-danger" />
					</div>

					<div>
						<label for="outtime">Outtime</label>
						<div>
							<form:input path="outtime" type="time"
								style="width: 300px;height: 25px;" placeholder="Enter Time"
								required="true" />
						</div>
						<form:errors path="outtime" cssClass="text-danger" />
					</div>
					<div>
						<br>
						<form:button id="log">Submit</form:button>
					</div>
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