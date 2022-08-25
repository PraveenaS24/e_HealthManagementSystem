<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/listpatpres.css"%>
</style>
<body>
 <h3>Filter</h3>
    <br>
    <div class="box">
    <form action="contactNo" method="get" style="margin: 0;">
        <label>Enter ContactNo</label> <input type="number" placeholder="Contact No"
            name="contactNo" >
             <input type='submit' id="log" value="Get" name="submit"  style="width: 42px;height: 25px;">
    </form>
     </div>
     
     <div class="box">
    <form action="/prescriptiondetails/patientId" method="get" style="margin: 0;">
        <label>Enter PatientId</label> <input type="number" placeholder=" Patient Id"
            name="patientId" >
             <input type='submit' id="log" value="Get" name="submit"  style="width: 42px;height: 25px;">
    </form>
     </div>
</body>
</html>