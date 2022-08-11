<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD ADMIN</title>
</head>
<body>
   <h1 align="center">ADD ADMIN</h1>
	<div id="root">
		<div id="form">
      <table border="" width="50%" cellpadding="10">
				
					<form:form action="addadmin" method="post" modelAttribute="addadmin">
					
				<tr>
					<div>
						<td><label for="adminId">Admin Id</label></td>
						<td><div> 
								<form:input path="adminId" style="width: 300px;height: 25px;" title="Id must be number"
											pattern="^[0-9]+$" required="true"
											placeholder="Enter AdminId" />
							</div></td>
							<form:errors path="adminId" cssClass="text-danger" />
					</div>
				</tr>

				<tr>
					<div>
						<td><label for="password">Password</label></td>
						<td><div>
								<form:input path="password" type="password" title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Enter PassWord"/>
							</div></td>
							<form:errors path="password" cssClass="text-danger" />
					</div>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<div>
							<form:button>Click</form:button>
						</div>
					</td>
				</tr>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>