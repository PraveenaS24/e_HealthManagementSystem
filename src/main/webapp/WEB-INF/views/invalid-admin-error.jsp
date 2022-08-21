<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
<%@include file="/WEB-INF/views/cssfile/invalidadmin.css"%>
</style>
<body>
 <h2>Invalid Admin</h2>
 <div> Check your Admin id and password</div>
 <a href="/admin/adminlogin"><button class="button1">Return to Admin login</button></a>
 
 <div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
</body>
</html>