<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
{
text-align:center;
background-image:url("https://thumbs.dreamstime.com/b/hospital-building-modern-parking-lot-59693686.jpg");
background-attachment:fixed;
font-weight:bold;
}
</style>
</head>
<body>
<h1>Users</h1>
<div><a href="/users/adduserform">UsersLogin</a></div>
<div><h1>Patient</h1></div>
<div><a href="/patient/patientlist">List For Patient</a></div>
<div><a href="/patient/addpatientform">AddForm For Patient</a></div>
<div><a href="/patient/updatepatientform?patientId=">UpdateForm For Patient</a></div>
<div><a href="/patient/findpatientid?patientId=">FindById</a></div>
<div><a href="/patient/deletepatient?patientId=">Delete Patient</a></div>
<div><a href="/patient/getpatientfeedback?id="></a></div>
<div></div>
<div><h1>Staffs</h1></div>
<div><a href="/staffs/staffslist">List For Staffs</a></div>
<div><a href="/staffs/addstaffsform">AddForm For Staffs</a></div>
<div><a href="/staffs/updatestaffsform?staffsId=">UpateForm For Staffs</a></div>
<div><a href="/staffs/deletestaff?staffsId=">Delete Staffs</a></div>
<div><a href="/staffs/findstaffsid?staffsId=">Find Staffs</a></div>
<div><a href="/staffs/getstaffsfeedback?id=">Find Staffs FeedBack</a></div>
<div></div>
<div><h1>FeedBack</h1></div>
<div><a href="/feedback/feedbacklist">FeedBack List</a></div>
<div><a href="/feedback/addfeedbackform">Add FeedBack</a></div>
<div><a href="/feedback/updatefeedbackform?feedbackId=">Update FeedBack</a></div>
<div><a href="/feedback/findfeedbackid?feedbackId=">FInd FeedBack</a></div>
<div><a href="/feedback/deletefeedback?feedbackId=">Delete Feedback</a></div>
<div></div>
</body>
</html>