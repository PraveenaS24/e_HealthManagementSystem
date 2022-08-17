<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Staffs</title>
</head>
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/staff.css"%>
</style>
<script type="text/javascript">
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
	<h1>ADD STAFFS</h1>
	<div id="root" class="box">
		<div id="form">
			<div>
				<form:form action="addstaff" method="post"
					modelAttribute="addstaffs" name="myForm">
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" onblur="firstNameCheck();" 
							name="firstName" id="firstName" style="width: 300px;height: 25px;"
								title="Name can't be empty And First Name must be in String"
								required="true" placeholder="Enter FirstName" />
						</div>
						<form:errors path="firstName" cssClass="text-danger" />
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" style="width: 300px;height: 25px;" onblur="lastNameCheck();" id="lastName" name="lastName"
								title="Name can't be empty And Last Name must be in String"
								required="true" placeholder="Enter LastName" />
						</div>

						<form:errors path="lastName" cssClass="text-danger" />
					</div>

					<div>
						<label for="gender">Gender</label> <div>Male:
						<form:radiobutton path="gender" value="Male" required="true"/>
						Female:
						<form:radiobutton path="gender" value="Female" required="true"/>
                         </div>
                         <form:errors path="gender" cssClass="text-danger" />
					</div>

					<div>
						<label for="contactNo">Contact No</label>
						<div>
							<form:input path="contactNo" placeholder="Enter PhoneNumber" onblur="contactNoCheck();" id="contactNo" name="contactNo"
								required="true" style="width: 200px; height: 25px;" />
						</div>
						<form:errors path="contactNo" cssClass="text-danger" />
					</div>

					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date"
								style="width: 300px;height: 25px;" placeholder="Enter Date"
								requird="true" />
						</div>
						<form:errors path="dob" cssClass="text-danger" />
					</div>

					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" style="width: 300px;height: 25px;"
								title="Mail Id is not in correct format" onblur="emailCheck();" id="email" name="email"
								pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
								placeholder="Enter Email" />
						</div>
						<form:errors path="email" cssClass="text-danger" />
					</div>

					<div class="const">
						<label for="role">Role</label> Perform diagnostic tests :
						<form:radiobutton path="role" value="Perform diagnostic tests" required="true"/>
						Assess the patient :
						<form:radiobutton path="role" value="Assess the patient" required="true"/>
						Management of illness :
						<form:radiobutton path="role" value="Management of illness" required="true"/>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" onblur="qualificationCheck();" id="qualification" name="qualification"
								style="width: 300px;height: 25px;"
								placeholder="Enter Qualification" required="true" />
						</div>
						<form:errors path="qualification" cssClass="text-danger" />
					</div>

					<div>
						<label for="speciality">Speciality</label> Pediatrics :
						<form:radiobutton path="speciality" value="Pediatrics" required="true"/>
						Geriatrics :
						<form:radiobutton path="speciality" value="Geriatrics" required="true"/>
						Pain care :
						<form:radiobutton path="speciality" value="Pain care" required="true"/>
						Wound care :
						<form:radiobutton path="speciality" value=" Wound care" required="true"/>
						Mental health :
						<form:radiobutton path="speciality" value="Mental health" required="true"/>
						Specific disease:
						<form:radiobutton path="speciality" value="Specific disease" required="true"/>
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
</body>
</html>