<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div >
		<div id="form">
			<form action="getpatientfeedback">
				<div>
					<label for="patientId">Enter Patient Id</label>
					
					<div>
						<input type = "text" id ="patientId" name = "patientId" />
					</div>
				</div>
				
				
				<input type="submit" value = "get"/>
			</form>
			
		</div>
	</div>
</body>
</html>