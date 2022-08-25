<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>PatientPrescription</title>
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/listpatpres.css"%>
</style>
<body>
     <h3>Filter</h3>
    <br>
    <div class="box">
    <form action="patientId" method="get" style="margin: 0;">
        <label>Enter PatientId</label> <input type="number" required="true" placeholder="patientId"
            name="patientId" >
             <input type='submit' id="log" value="Get" name="submit"  style="width: 42px;height: 25px;">
    </form>
     </div>
     <br>
     <br>
     <br>
     <div class="box">
    <form action="staffId" method="get" style="margin: 0;">
        <label>Enter StaffId</label> <input type="number" required="true" placeholder="staffId"
            name="staffId">
             <input type='submit' id="log" value="Get" name="submit"  style="width: 42px;height: 25px;">
    </form>
    </div>
</body>
</html>