<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Users</title>
</head>
<style>
body {
    background-image: url("https://www.bigstatefinancial.com/wp-content/uploads/2019/12/3-Tips-for-Financial-Health.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}

h1 {
    color: blue;
    text-align: center;
}

label {
    color: blue;
    font-size: 1.3em;
    display: flex;
    margin: 5px;
    font-weight: bold;
    cursor: pointer;
    transition: .5s ease-in-out;
}

#userId {
    width: 250px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}

#secretword {
    width: 250px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}

#userType {
    width: 260px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}

#log {
    width: 150px;
    height: 30px;
    border: black;
    border-radius: 3px;
    padding-left: 8px; 
    color: white;
    background-color: maroon;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
}

.box {
    width: 400px;
    height: 300px;
    overflow: hidden;
    border-radius: 10px;
    box-shadow: 5px 20px 50px #000;
    margin: auto;
    padding: 30px;
    text-align: center;
    
}
#log {
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
#cont {
position: relative;
left: 100px;
}
</style>
<body>
	<h1>ADD USER</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="adduser" method="post" modelAttribute="addusers">
					<div>
						<label for="userType">User Type</label>
						<div>
							<form:select path="userType" required="true" style="width: 260px;height: 30px;">
								<form:option value="nurse">Nurse</form:option>
								<form:option value="murse">Murse</form:option>
							</form:select>
						</div>
						<form:errors path="userType" cssClass="text-danger" />
					</div>
					<div>
						<label for="secretword">Secret Word</label>
						<div>
							<form:input path="secretword" type="password"
								title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
								pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
								required="true" placeholder="Enter SecretWord" style="width: 250px;height: 25px;"/>
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
</body>
</html>