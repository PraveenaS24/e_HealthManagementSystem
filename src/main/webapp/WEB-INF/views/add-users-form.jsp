<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Users</title>
</head>
<style>
body {
	background-image:
		url('https://c8.alamy.com/zooms/9/9743bae1a97c4d8f9c25d4600d86e6b4/2hywk61.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}
h1{
position: relative;
left: 100px;
color: blue;

}
#log{
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
#log {
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
tr{
color: black;}
</style>
<body>
	<h1>ADD USER</h1>
	<div id="root" align="left">
		<div id="form">
      <table border="10" width="70%" cellpadding="20">
				<tr>
					<form:form action="adduser" method="post" modelAttribute="addusers">
						
				</tr>
				<tr>
					<div>
						<td><label for="userType">User Type</label></td>
						<td><div>
								<form:select path="userType" required="true">
									<form:option value="nurse">Nurse</form:option>
									<form:option value="murse">Murse</form:option>
								</form:select>
							</div></td>
					</div>
				</tr>

				<tr>
					<div>
						<td><label for="secretword">Secret Word</label></td>
						<td><div>
								<form:input path="secretword" type="password" title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Enter SecretWord"/>
							</div></td>
							<form:errors path="secretword" cssClass="text-danger" />
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="register">Register Date</label></td>
						<td>
							<div>
								<form:input path="register" type="date" required="true"/>
							</div>
						</td>
						<form:errors path="register" cssClass="text-danger" />
					</div>
				</tr>
				<tr><div>
					<td colspan="2" align="center">
							<form:button id="log">Click</form:button>
						
					</td>
					</div>
				</tr>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>