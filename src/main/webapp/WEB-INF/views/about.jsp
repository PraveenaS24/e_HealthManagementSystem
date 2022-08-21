<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

 <!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
<%@include file="/WEB-INF/views/cssfile/about.css"%>
</style>
</head>
<body style="text-align:center">

<h2>Our Health Our Care</h2>

<div class="popup" onclick="myFunction()">Click Here!!
  <span class="popuptext" id="myPopup">Welcome</span>
</div>
<div class="box">
        <p>
            Probably one of the first specialties that comes to mind
			when you think of "healthcare management" is hospital management. Are
			you an expert at multitasking and organizing large volumes of
			information from a million different sources?</p>
			<p> The intricacies of a hospital are difficult to replicate in any other sector of healthcare
			management and are ideal for people who love to be challenged. The
			responsibilities of a hospital manager can include establishing
			protocols, identifying areas of improvement, planning projects, and
			coordinating with stakeholders. This is just the tip of the iceberg.!</p>
			</div>

<script>
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
</script>
<div class="parell">
	<div>Contact-Us : 9994723796  <br>
	Email: wellbeing@yahoo.com</div>
	
	</div>
	
	 <div>
				  <a href="/login/home"><button class="button2"><em class="fa fa-home"></em></button></a>
				</div>
				
				<div>
				  <a href="/users/userli"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
				</div>

</body>
</html>