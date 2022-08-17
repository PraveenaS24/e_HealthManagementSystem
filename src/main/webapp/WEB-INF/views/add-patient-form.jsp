<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
</head>
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/patient.css"%>
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

var addressCheck = function() {
	 if(document.myForm.address.value == ""){
			if(alert("Address cannot be blank")){ 
				 document.myForm.address.focus();
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

var reportCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.report.value.match(nameRegex)){
			if(alert("Report can't be empty or must contain only alphabets")){ 
				 document.myForm.report.focus();
		    }
			else
				document.activeElement.blur();
		}
 else{
     return false;
 } 

}


var prescriptionCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.prescription.value.match(nameRegex)){
			if(alert("Prescription can't be empty or must contain only alphabets")){ 
				 document.myForm.prescription.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
    return false;
} 

}


var foodmaintenanceCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.foodmaintenance.value.match(nameRegex)){
			if(alert("Food can't be empty or must contain only alphabets")){ 
				 document.myForm.foodmaintenance.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
   return false;
} 

}

var revisitCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.revisit.value.match(nameRegex)){
			if(alert("Revisit can't be empty or must contain only alphabets")){ 
				 document.myForm.revisit.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
  return false;
} 

}


var bloodgroupCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.bloodgroup.value.match(nameRegex)){
			if(alert("Bloodgroup can't be empty or must contain only alphabets")){ 
				 document.myForm.bloodgroup.focus();
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
	<h1>ADD PATIENT</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="addpatient" method="post"
					modelAttribute="addpatient" name="myForm">
					<div>
						<label for="firstName">First Name</label>

						<div>
							<form:input path="firstName" style="width: 300px;height: 25px;"
								title="Name can't be empty And First Name must be in String"
								required="true" placeholder="Enter FirstName" onblur="firstNameCheck();"  name="firstName" id="firstName"/>
						</div>

						<form:errors path="firstName" cssClass="text-danger" />
					</div>
					<div>
						<label for="lastName">Last Name</label>

						<div>
							<form:input path="lastName" style="width: 300px;height: 25px;"
								title="Name can't be empty And Last Name must be in String"
								required="true" placeholder="Enter LastName"  onblur="lastNameCheck();" id="lastName" name="lastName"/>
						</div>
						<form:errors path="lastName" cssClass="text-danger" />
					</div>
					<div>
						<label for="gender">Gender</label> Male:
						<form:radiobutton path="gender" value="Male" required="true" />
						Female:
						<form:radiobutton path="gender" value="Female" required="true" />

					</div>
					<div>
					<label for="contactNo">Contact No</label>
					<div>
						<form:input path="contactNo" placeholder="Enter PhoneNumber"
							style="width: 150px;height: 25px;" onblur="contactNoCheck();" id="contactNo" name="contactNo" required="true" />
					</div>
					<form:errors path="contactNo" cssClass="text-danger" />
					</div>
					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date" placeholder="Enter Date"
								style="width: 300px;height: 25px;" required="true" />
						</div>
						<form:errors path="dob" cssClass="text-danger" />
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" style="width: 300px;height: 25px;"
								title="Mail Id is not in correct formet"
								pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" onblur="emailCheck();" id="email" name="email" required="true"
								placeholder="Enter Email" />
						</div>
						<form:errors path="email" cssClass="text-danger" />
					</div>

					<div>
						<label for="bloodgroup">Blood Group</label>

						<div>
							<form:input path="bloodgroup" style="width: 300px;height: 25px;"
								title="BloodGroup can't be empty And BloodGroup must be in String" onblur="bloodgroupCheck();" id="bloodgroup" name="bloodgroup"
								required="true" placeholder="Enter BloodGroup" />
						</div>

					</div>

					<div>
						<label for="address">Address</label>

						<div>
							<form:input path="address" style="width: 300px;height: 25px;"
								title="Address can't be empty And Address must be in String"
								required="true" placeholder="Enter Address" onblur="addressCheck();" id="address" name="address"/>
						</div>

						<form:errors path="address" cssClass="text-danger" />
					</div>

					<div>
						<label for="staffId">Staff Id</label>

						<div>
							<form:input path="staffId" style="width: 300px;height: 25px;"
								title="Id must be number" pattern="^[0-9]+$" onblur="staffIdCheck();" id="staffId" name="staffId" required="true"
								placeholder="Enter Staff Id" />
						</div>

						<form:errors path="staffId" cssClass="text-danger" />
					</div>

					<div>
						<label for="observation">Observation</label>

						<div>
							<form:input path="observation" type="date"
								style="width: 300px;height: 25px;" placeholder="Enter Date"
								required="true" />
						</div>

						<form:errors path="observation" cssClass="text-danger" />
					</div>

					<div>
						<label for="report">Report</label>

						<div>
							<form:input path="report" style="width: 300px;height: 25px;"
								title="Report can't be empty And report must be in String"
								required="true" onblur="reportCheck();" name="report" id="report" placeholder="Enter Report" />
						</div>

						<form:errors path="report" cssClass="text-danger" />
					</div>
					<div>
						<label for="prescription">Prescription</label>

						<div>
							<form:input path="prescription"
								style="width: 300px;height: 25px;"
								title="Prescription can't be empty And Prescription must be in String"
								required="true" onblur="prescriptionCheck();" name="prescription"  id="prescription" placeholder="Enter Prescription" />
						</div>

						<form:errors path="prescription" cssClass="text-danger" />
					</div>

					<div>
						<label for="fees">Fees</label>

						<div>
							<form:input path="fees" style="width: 300px;height: 25px;"
								title="Fees must be number" pattern="^[0-9]+$"
								placeholder="Enter Fees" required="true" />
						</div>

						<form:errors path="fees" cssClass="text-danger" />
					</div>

					<div>
						<label for="foodmaintenance">FoodMaintenance</label>

						<div>
							<form:input path="foodmaintenance"
								style="width: 300px;height: 25px;"
								title="Food can't be empty And Food must be in String" onblur="foodmaintenanceCheck();" name="foodmaintenance" id="foodmaintenance"
								required="true" placeholder="Enter Food" />
						</div>

						<form:errors path="foodmaintenance" cssClass="text-danger" />
					</div>

					<div>
						<label for="revisit">Revisit</label>

						<div>
							<form:input path="revisit" style="width: 300px;height: 25px;"
								title="Revisit can't be empty And Revisit must be in String" onblur="revisitCheck();" name="revisit" id="revisit"
								required="true" placeholder="Enter Revisit" />
						</div>

						<form:errors path="revisit" cssClass="text-danger" />
					</div>
					<div class="moon">
						<label for="status">Status</label> Active:
						<form:radiobutton path="status" value="Active" required="true" />
						InActive:
						<form:radiobutton path="status" value="InActive" required="true" />

					</div>

					<div>
						<br>
						<form:button id="log">
									Click</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<div>
		<a href="/login/home"><button class="button!">logout</button></a>
				</div>
</body>
</html>