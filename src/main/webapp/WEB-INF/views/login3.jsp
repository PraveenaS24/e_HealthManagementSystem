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
<%@include file="/WEB-INF/views/cssfile/login3.css"%>
</style>
<script type="text/javascript">
var adminIdCheck = function() {
	 if(document.myForm.adminId.value == ""){
			if(alert("Id cannot be blank")){ 
				 document.myForm.adminId.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}

var passwordCheck = function() {
    var rg = new RegExp("^(?=.[A-Za-z])(?=.\\d)(?=.[@$!%#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
    if(!document.form.password.value.match(rg)){
        if(alert("password must begin with letter and contain atleast one number and must have atleast 8 characters")){
            document.form.password.focus();
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
	<h1>ADMIN LOGIN</h1>

	<div id="root" class="box">
		<div id="form">
			<form:form action="checkadminlogin" method="post"
				modelAttribute="admin" name="myForm">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" onblur="adminIdCheck();" id="adminId" name="adminId"
							title="Id must be number" pattern="^[0-9]+$" required="true"
							placeholder="Enter AdminId" style="width: 200px;height: 25px;" />
					</div>
					<form:errors path="adminId" cssClass="text-danger" />
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input  path="password" onblur="passwordCheck();" id="password" name="password"
							title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							required="true" placeholder="Enter Password"  type="password"
							style="width: 200px;height: 25px;" />
					</div>
					<form:errors path="password" cssClass="text-danger" />
				</div>
				<br>
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
