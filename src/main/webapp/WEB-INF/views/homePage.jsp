<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/views/cssfile/homePage.css"%>
 </style>
</head>
<body>
	<nav>
		<div Class="logo">
			<p>HEALLINEPLUS</p>
		</div>
		<ul>
			<li><a class="ex1" href="/admin/adminlogin">Admin</a></li>
			<li><a class="ex2" href="/users/userlogin">User</a></li>
			<li><a class="ex3" href="/patient/patientlogin">Patient</a></li>
			<li><a class="ex3" href="/login/about">About</a></li>
		</ul>
	</nav>
	<main>
		<div class="img"></div>
	</main>
	<div class="h1">
		<h1>WHY HEALLINE PLUS</h1>
		<h3>Without Management, the industry couldn't function effectively!!</h3>
	</div>
	<div class="container">
	<div class="con1">
    <img alt="" src="https://www.freeiconspng.com/thumbs/doctor-logo/doctors-transparent-icon-10.png"  width="45" height="45"> 
    <h2>Total Care</h2>
		<h3>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</h3>
	</div>
	<div class="con1">
		 <img alt="" src="https://www.kindpng.com/picc/m/157-1575433_medicine-medicine-icon-icon-hd-png-download.png" width="45" height="45"> 
		<h2>Bed Facility</h2>
		<h3>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</h3>
	</div>
	<div class="con1">
	 <img alt="" src="https://static.vecteezy.com/system/resources/thumbnails/002/555/549/small/coronavirus-covid-19-sick-person-in-bed-hospital-with-iv-stand-medicine-health-pictogram-silhouette-style-icon-free-vector.jpg" width="45" height="45"> 
		<h2>Expert Doctors</h2>
		<h3>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</h3>
	</div>
	<div class="con1">
		 <img alt="" src="https://www.kindpng.com/picc/m/111-1119513_hand-heart-png-hands-care-icon-png-transparent.png" width="45px" height="45p"> 
		<h2>Medicines</h2>
		<h3>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad, omnis.</h3>
	</div>
	</div>
	<div class="service">
	<div id="h2">
	<h2>SERVICES</h2>
	</div>
	<div class="s1">
	<h3>BOOMING SECTOR WORLDWIDE</h3>
	<p>         Data gathered from the US Bureau of Labor Statistics (BLS) forecasts careers in medical and health service management to 
	grow by another 23% until 2022. That's a considerably higher growth rate than most professions. Careers in healthcare could grant you access 
	to more opportunities, a greater earning potential and the chance to move up the food chain faster.</p>
	</div>
	<div class="s1">
	<h3>LIKELY TO BE HAPPIER</h3>
	<p>         According to an anonymous survey conducted in 2013 by PayScale, 44% of the 25 highest-paid professions who would describe their work as 
	'meaningful' and 'contributing to society' were working in the healthcare sector. It seems that if you believe your high-earning job to be beneficial 
	to the community, you're also more likely to be happy.</p>
	</div>
	<div class="s1">
	<h3>HEALTH SERVICE</h3>
	<p>        Digital technology is already reshaping medical services and care to make it more universal, affordable and effective. From storing medical 
	records in the cloud to making mental health services readily accessible round the clock, there are many ways digital trends will transform healthcare. 
	What this means for you is more room for growth and an incredibly exciting working environment.</p>
	</div>
	</div>
	
	
	<section class="book" id="book">

    <h1 class="heading"> <span>book</span> now </h1>    

    <div class="row">

        <div class="image">
            <img src="image/book-img.svg" alt="">
        </div>

        <form action="">
            <h3>book appointment</h3>
            <input type="text" placeholder="your name" class="box">
            <input type="number" placeholder="your number" class="box">
            <input type="email" placeholder="your email" class="box">
            <input type="date" class="box">
            <input type="submit" value="book now" class="btn">
        </form>

    </div>

</section>
	
<footer class="footer">
		<div class="logo">
			<p>HEALLINE PLUS</p>
		</div>
		<ul>
			<li><a > Contact us:-</a></li>
			<li><a href="https://www.facebook.com/" class="fa fa-facebook"></a></li>
			<li><a href="https://twitter.com/" class="fa fa-twitter"></a></li>
			<li><a href="https://www.youtube.com/" class="fa fa-youtube"></a></li>
			<li><a href="https://www.instagram.com/" class="fa fa-instagram"></a></li>
			
			
		</ul>
</footer>	
	
</body>
</html>