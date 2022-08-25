<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add PrescriptionDetails</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/addprescrip.css"%>
</style>

<script type="text/javascript">

var patientIdCheck = function() {
	if(document.myForm.patientId.value == ""){
		
		if(alert("Patient Id cannot be blank")){
			document.myForm.patientId.focus();
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
	<h1>ADD PRESCRIPTION</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="updateprescriptiondetails" method="post"
					modelAttribute="updateprescriptiondetails" name="myForm">

					<div>
						<label for="patientId">Patient Id</label>

						<div>
							<form:input path="patientId" style="width: 300px;height: 25px;"
								title="Id can't be empty And Id must be in String"
								required="true" placeholder="Enter Id"
								onblur="patientIdCheck();" name="patientId" id="patientId" />
						</div>

						<form:errors path="patientId" cssClass="text-danger" />
					</div>

					<div>
						<label for="gender">Gender</label>
						<form:input path="gender" required="true" readonly="true" style="width: 300px;height: 25px;"/>

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
							<form:input path="revisit" type="date" style="width: 300px;height: 25px;"
								title="Revisit can't be empty And Revisit must be in String" onblur="revisitCheck();" name="revisit" id="revisit"
								required="true" placeholder="Enter Revisit" />
						</div>

						<form:errors path="revisit" cssClass="text-danger" />
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
		<a href="/login/home"><button class="button2">
				<em class="fa fa-home"></em>
			</button></a>
	</div>

	<div>
		<a href="/users/userli"><button class="button3">
				<em class="gg-arrow-left-r"></em>
			</button></a>
	</div>
</body>
</html>