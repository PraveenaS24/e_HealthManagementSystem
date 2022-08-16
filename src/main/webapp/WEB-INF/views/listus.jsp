<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>USERS</title>
</head>
<style>
body {
	background-image:
		url('https://t3.ftcdn.net/jpg/01/63/24/24/360_F_163242410_85lEeYR0m7yKmr1t5lLcow74I0Sd4j42.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

a:hover {
	background-color: blue;
}

.com {
	width: 550px;
	padding: 10px;
	height: 500;
	font-weight: 900;
	float: center;
	margin-left: 31%;
}

h1 {
	color: red;
	font-weight: 900;
	text-align: center;
}

li {
	list-style: none;
	display: inline;
	margin-left: 20px;
}

ul {
	padding-left: 350px;
	margin-top: 200px;
} 

h2 {
	color: white;
	text-align: center;
}

button {
	height: 30px;
}
.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

 .dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-weight: bold; 
  border: none;
  outline: none;
  color: yellow;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: blue;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: pink;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: blue;
}

.dropdown:hover .dropdown-content {
  display: block;
}


.dropdowns {
  float: left;
  overflow: hidden;
}

.dropdowns .dropbtns {
  font-weight: bold;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdowns:hover .dropbtns {
  background-color: red;
 }

.dropdown-contents {
  display: none;
  position: absolute;
  background-color: blue;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-contents a {
  float: none;
  color: green;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-contents a:hover {
  background-color: #ddd;
}

.dropdowns:hover .dropdown-contents {
  display: block;
}
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

nav {
	width: 100%;
	height: 80px;
	Line-height: 80px;
	padding: 0px 100px;
	position: fixed;
	background-image: linear-gradient(to right, pink, blue);
}

nav .logo p {
	font-size: 30px;
	font-weight: bold;
	float: left;
	margin-top: 10px;
	color: black;
	text-transform: uppercase;
	letter-spacing: 1.5px;
	cursor: pointer;
}

nav ul {
	float: right
}

nav li {
	display: inline-block;
	list-style: none;
}

nav li a {
	font-size: 18px;
	text-transform: uppercase;
	padding: 10px 30px;
	color: white;
}

nav li a:hover {
	color: rgb(255, 128, 128);
}


body {
	background-image:
		url("https://cdn.pixabay.com/photo/2015/05/28/09/08/hyacinth-787758__340.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: 100% 100%;
}
.container{
	background-color:white;
	padding:10px;
	margin:20px;
 }
.container::after{
	content:"";
	clear:both;
	display:table;
}
.container img{
	float: left;
	margin-right: 20px;
	border-radius: 50%;
	width:55px;
}

.container span{
	font-size: 15px;
	margin-right: 15px;
}
.container p{
	font-size: 15px;
	margin-right: 15px;
}
@media(max-width: 500px){
	.container{
	text-align: center;
	}
	.container img{
	margin: auto;
	float: none;
	display: block;
	}
	
}
.grid{
	 padding-top:200px;
	 margin-left: 143px;
	display:grid;
	grid-template-columns:1fr 1fr 1fr;
	}
.dept{
	padding-top:10px;

	}


</style>
<body>
	<h1>
		Delighted Welcome!<br> Happy To Have You!!
	</h1>
	<!-- <div class="com">
		<h2>
			Login Sucessfully! 
		</h2>

	</div> -->
	<nav>
	<div class="navbar">
   <div class="dropdown"> 
		<button class="dropbtn">Patient
		<i class= "fa fa-caret-down"></i>
		</button>
		<div class="dropdown-content">
				<a href="/patient/patientlist">Patient List</a>
				<a href="/patient/addpatientform">Add Patient</a>
				<a href="/patient/updatepatientform">Update Patient</a>
				<a href="/patient/getpatient">Find Patient</a>
			</div>
			<div class="dropdowns">
			<button class="dropbtns">Staffs
		<i class= "fa fa-caret-downs"></i>
		</button>
	<div class="dropdown-contents">
				<a href="/staffs/staffslist">Staff List</a>
				<a href="/staffs/addstaffsform">Add Staff</a>
				<a href="/staffs/updatestaffsform">Update Staff</a>
				<a href="/staffs/getstaff">Find Staff</a>
			</div>
		</div>
	</div>
	</div>
	</nav>
</body>
</html>