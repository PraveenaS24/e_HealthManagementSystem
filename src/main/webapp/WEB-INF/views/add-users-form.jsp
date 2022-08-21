<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Users</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/adduser.css"%>
</style>
<script type="text/javascript">
var userTypeCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.userType.value.match(nameRegex)){
			if(alert("UserType can't be empty or must contain only alphabets")){ 
				 document.myForm.userType.focus();
		    }
			else
				document.activeElement.blur();
		}
  else{
      return false;
  } 
 
}

var userIdCheck = function() {
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
<body>
	<h1>ADD USER</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="adduser" method="post" modelAttribute="addusers" name="myForm">
				<div>
						<label for="userId">User ID</label>
						<div>
							<form:input path="userId" onblur="userIdCheck();" id="userId" name="userId" required="true" placeholder="Enter UserId" style="width: 250px;height: 30px;"/>
						</div>
						<form:errors path="userId" cssClass="text-danger" />
					</div>
					<div>
						<label for="userType">User Type</label>
						<div>
							<form:select path="userType" onblur="userTypeCheck();" id="userType" name="userType" required="true" style="width: 250px;height: 30px;">
								<form:option value="nurse">Nurse</form:option>
								<form:option value="murse">Murse</form:option>
							</form:select>
						</div>
						<form:errors path="userType" cssClass="text-danger" />
					</div>
					<div>
						<label for="secretword">Secret Word</label>
						<div>
							<form:input path="secretword" onblur="secretwordCheck();" name="secretword" id="secretword" type="password"
								title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
								pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
								required="true" placeholder="Enter SecretWord" style="width: 250px;height: 30px;"/>
						</div>
						<form:errors path="secretword" cssClass="text-danger" />
					</div>
					<div>
						<label for="register">Register Date</label>
						<div>
							<form:input path="register" type="date" required="true" style="width: 250px;height: 30px;"/>
						</div>
						<form:errors path="register" cssClass="text-danger" />
					</div>
					<div>
					<br>
						<form:button id="log">Click</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	   <div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				
				<div>
				  <a href="/admin/adminlogin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>
</body>
</html>