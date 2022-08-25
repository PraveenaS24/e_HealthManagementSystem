<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/login4.css"%>
</style>
<script type="text/javascript">
var Check = function() {
	 if(document.myForm.userId.value == ""){
			if(alert("Id cannot be blank")){ 
				 document.myForm.userId.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}

var secretwordCheck = function() {
    var rg = new RegExp("^(?=.[A-Za-z])(?=.\\d)(?=.[@$!%#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
    if(!document.form.secretword.value.match(rg)){
        if(alert("secretword must begin with letter and contain atleast one number and must have atleast 8 characters")){
            document.form.secretword.focus();
        }
        else
            document.activeElement.blur();
    }
    else{
        return false;
    }
}




</script>
</head>
<body>
	<br>
	<h1 id="cont">Patient Login</h1>
	<br>
	<div id="root" class="box">
		<div id="form">

			<form:form action="checkpatientlogin" method="post"
				modelAttribute="patient" name="myForm">

				<div>
						<label for="patientName">First Name</label>

						<div>
							<form:input path="patientName" style="width: 300px;height: 25px;"
								title="Name can't be empty And Patient Name must be in String"
								required="true" placeholder="Enter Name" onblur="patientNameCheck();"  name="patientName" id="patientName"/>
						</div>

						<form:errors path="patientName" cssClass="text-danger" />
					</div>
					
					<div>
						<label for="password">PassWord</label>
						<div>
							<form:input path="password" onblur="passwordCheck();" name="password" id="password" type="password"
								title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
								pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
								required="true" placeholder="Enter PassWord" style="width: 300px;height: 25px;"/>
						</div>
						<form:errors path="password" cssClass="text-danger" />
					</div>

				
				<br>
				<div class="err">${result}</div>
				<div>
				<form:button id="log">Login</form:button>
				</div>
			</form:form>
		</div>
	</div>
	        <div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				<div>
				  <a href="/login/home"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
				
</body>
</html>