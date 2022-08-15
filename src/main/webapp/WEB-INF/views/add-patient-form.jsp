<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
</head>
<style type="text/css">
body {
	background-image:
		url("https://images.pexels.com/photos/612825/pexels-photo-612825.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

h1 {
	color: blue;
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: skyblue;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#log {
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
	float: center;
}

.box {
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
	font-weight: 900;
	width: 600px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>

<body>
	<h1>ADD PATIENT</h1>
	<div id="root">
		<div id="form" class="box">
			<div>
				<form:form action="addpatient" method="post"
					modelAttribute="addpatient">
					<div>
						<label for="firstName">First Name</label>

						<div>
							<form:input path="firstName" style="width: 300px;height: 25px;"
								title="Name can't be empty And First Name must be in String"
								required="true" placeholder="Enter FirstName" />
						</div>

						<form:errors path="firstName" cssClass="text-danger" />
					</div>
					<div>
						<label for="lastName">Last Name</label>

						<div>
							<form:input path="lastName" style="width: 300px;height: 25px;"
								title="Name can't be empty And Last Name must be in String"
								required="true" placeholder="Enter LastName" />
						</div>
						<form:errors path="lastName" cssClass="text-danger" />
					</div>
					<div>
						<label for="gender">Gender</label> Male:
						<form:radiobutton path="gender" value="Male" required="true" />
						Female:
						<form:radiobutton path="gender" value="Female" required="true" />

					</div>
					<label for="contactNo">Contact No</label>
					<div>
						<form:select path="countryCode" style="width: 150px;height: 30px;"
							required="true">
							<form:option value="+93">93 --- Afghanistan</form:option>
							<form:option value="+355">355 --- Albania</form:option>
							<form:option value="+213">213 --- Algeria</form:option>
							<form:option value="684">684 --- American Samoa</form:option>
							<form:option value="376">376 --- Andorra</form:option>
							<form:option value="244">244 --- Angola</form:option>
							<form:option value="809">809 --- Anguilla</form:option>
							<form:option value="268">268 --- Antigua</form:option>
							<form:option value="54">54 --- Argentina</form:option>
							<form:option value="374">374 --- Armenia</form:option>
							<form:option value="297">297 --- Aruba</form:option>
							<form:option value="247">247 --- Ascension Island</form:option>
							<form:option value="61">61 --- Australia</form:option>
							<form:option value="672">672 --- Australian External Territories</form:option>
							<form:option value="43">43 --- Austria</form:option>
							<form:option value="994">994 --- Azerbaijan</form:option>
							<form:option value="242">242 --- Bahamas</form:option>
							<form:option value="246">246 --- Barbados</form:option>
							<form:option value="973">973 --- Bahrain</form:option>
							<form:option value="880">880 --- Bangladesh</form:option>
							<form:option value="375">375 --- Belarus</form:option>
							<form:option value="32">32 --- Belgium</form:option>
							<form:option value="501">501 --- Belize</form:option>
							<form:option value="229">229 --- Benin</form:option>
							<form:option value="809">809 --- Bermuda</form:option>
							<form:option value="975">975 --- Bhutan</form:option>
							<form:option value="284">284 --- British Virgin Islands</form:option>
							<form:option value="591">591 --- Bolivia</form:option>
							<form:option value="387">387 --- Bosnia and Hercegovina</form:option>
							<form:option value="267">267 --- Botswana</form:option>
							<form:option value="55">55 --- Brazil</form:option>
							<form:option value="284">284 --- British V.I.</form:option>
							<form:option value="673">673 --- Brunei Darussalm</form:option>
							<form:option value="359">359 --- Bulgaria</form:option>
							<form:option value="226">226 --- Burkina Faso</form:option>
							<form:option value="257">257 --- Burundi</form:option>
							<form:option value="855">855 --- Cambodia</form:option>
							<form:option value="237">237 --- Cameroon</form:option>
							<form:option value="1">1 --- Canada</form:option>
							<form:option value="238">238 --- CapeVerde Islands</form:option>
							<form:option value="1">1 --- Caribbean Nations</form:option>
							<form:option value="345">345 --- Cayman Islands</form:option>
							<form:option value="238">238 --- Cape Verdi</form:option>
							<form:option value="236">236 --- Central African Republic</form:option>
							<form:option value="235">235 --- Chad</form:option>
							<form:option value="56">56 --- Chile</form:option>
							<form:option value="86">86 --- China (People's Republic)</form:option>
							<form:option value="886">886 --- China-Taiwan</form:option>
							<form:option value="57">57 --- Colombia</form:option>
							<form:option value="269">269 --- Comoros and Mayotte</form:option>
							<form:option value="242">242 --- Congo</form:option>
							<form:option value="682">682 --- Cook Islands</form:option>
							<form:option value="506">506 --- Costa Rica</form:option>
							<form:option value="385">385 --- Croatia</form:option>
							<form:option value="53">53 --- Cuba</form:option>
							<form:option value="357">357 --- Cyprus</form:option>
							<form:option value="420">420 --- Czech Republic</form:option>
							<form:option value="45">45 --- Denmark</form:option>
							<form:option value="246">246 --- Diego Garcia</form:option>
							<form:option value="767">767 --- Dominca</form:option>
							<form:option value="809">809 --- Dominican Republic</form:option>
							<form:option value="253">253 --- Djibouti</form:option>
							<form:option value="593">57 --- Colombia</form:option>
							<form:option value="20">20 --- Egypt</form:option>
							<form:option value="503">503 --- El Salvador</form:option>
							<form:option value="240">240 --- Equatorial Guinea</form:option>
							<form:option value="291">291 --- Eritrea</form:option>
							<form:option value="372">372 --- Estonia</form:option>
							<form:option value="251">251 --- Ethiopia</form:option>
							<form:option value="500">500 --- Falkland Islands</form:option>
							<form:option value="298">298 --- Faroe (Faeroe) Islands (Denmark)</form:option>
							<form:option value="679">679 --- Fiji</form:option>
							<form:option value="358">358 --- Finland</form:option>
							<form:option value="33">33 --- France</form:option>
							<form:option value="596">596 --- French Antilles</form:option>
							<form:option value="594">594 --- French Guiana</form:option>
							<form:option value="241">241 --- Gabon (Gabonese Republic)</form:option>
							<form:option value="220">220 --- Gambia</form:option>
							<form:option value="995">995 --- Georgia</form:option>
							<form:option value="49">49 --- Germany</form:option>
							<form:option value="233">233 --- Ghana</form:option>
							<form:option value="350">350 --- Gibraltar</form:option>
							<form:option value="30">30 --- Greece</form:option>
							<form:option value="299">299 --- Greenland</form:option>
							<form:option value="473">473 --- Grenada/Carricou</form:option>
							<form:option value="671">671 --- Guam</form:option>
							<form:option value="502">502 --- Guatemala</form:option>
							<form:option value="224">224 --- Guinea</form:option>
							<form:option value="245">245 --- Guinea-Bissau</form:option>
							<form:option value="592">592 --- Guyana</form:option>
							<form:option value="509">509 --- Haiti</form:option>
							<form:option value="504">504 --- Honduras</form:option>
							<form:option value="852">852 --- Hong Kong</form:option>
							<form:option value="36">36 --- Hungary</form:option>
							<form:option value="354">354 --- Iceland</form:option>
							<form:option value="91">91 --- India</form:option>
							<form:option value="62">62 --- Indonesia</form:option>
							<form:option value="98">98 --- Iran</form:option>
							<form:option value="964">964 --- Iraq</form:option>
							<form:option value="90">90 --- Turkey</form:option>
							<form:option value="598">598 --- Uruguay</form:option>
							<form:option value="1">1 --- USA</form:option>
							<form:option value="685">685 --- Western Samoa</form:option>
							<form:option value="381">381 --- Yugoslavia (discontinued)</form:option>
							<form:option value="243">243 --- Zaire</form:option>
							<form:option value="260">260 --- Zambia</form:option>
							<form:option value="263">263 --- Zimbabwe</form:option>
						</form:select>
						<form:input path="contactNo" placeholder="Enter PhoneNumber"
							style="width: 150px;height: 25px;" required="true" />
					</div>
					<form:errors path="contactNo" cssClass="text-danger" />


					<div>
						<label for="dob">DOB</label>
						<div>
							<form:input path="dob" type="date" placeholder="Enter Date"
								style="width: 300px;height: 25px;" required="true" />
						</div>
						<form:errors path="dob" cssClass="text-danger" />
					</div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" style="width: 300px;height: 25px;"
								title="Mail Id is not in correct formet"
								pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
								placeholder="Enter Email" />
						</div>
						<form:errors path="email" cssClass="text-danger" />
					</div>

					<div>
						<label for="bloodgroup">Blood Group</label>

						<div>
							<form:input path="bloodgroup" style="width: 300px;height: 25px;"
								title="BloodGroup can't be empty And BloodGroup must be in String"
								required="true" placeholder="Enter BloodGroup" />
						</div>

					</div>

					<div>
						<label for="address">Address</label>

						<div>
							<form:input path="address" style="width: 300px;height: 25px;"
								title="Address can't be empty And Address must be in String"
								required="true" placeholder="Enter Address" />
						</div>

						<form:errors path="address" cssClass="text-danger" />
					</div>

					<div>
						<label for="staffId">Staff Id</label>

						<div>
							<form:input path="staffId" style="width: 300px;height: 25px;"
								title="Id must be number" pattern="^[0-9]+$" required="true"
								placeholder="Enter Staff Id" />
						</div>

						<form:errors path="staffId" cssClass="text-danger" />
					</div>

					<div>
						<label for="observation">Observation</label>

						<div>
							<form:input path="observation" type="date"
								style="width: 300px;height: 25px;" placeholder="Enter Date"
								required="true" />
						</div>

						<form:errors path="observation" cssClass="text-danger" />
					</div>

					<div>
						<label for="report">Report</label>

						<div>
							<form:input path="report" style="width: 300px;height: 25px;"
								title="Report can't be empty And report must be in String"
								required="true" placeholder="Enter Report" />
						</div>

						<form:errors path="report" cssClass="text-danger" />
					</div>
					<div>
						<label for="prescription">Prescription</label>

						<div>
							<form:input path="prescription"
								style="width: 300px;height: 25px;"
								title="Prescription can't be empty And Prescription must be in String"
								required="true" placeholder="Enter Prescription" />
						</div>

						<form:errors path="prescription" cssClass="text-danger" />
					</div>

					<div>
						<label for="fees">Fees</label>

						<div>
							<form:input path="fees" style="width: 300px;height: 25px;"
								title="Fees must be number" pattern="^[0-9]+$"
								placeholder="Enter Fees" required="true" />
						</div>

						<form:errors path="fees" cssClass="text-danger" />
					</div>

					<div>
						<label for="foodmaintenance">FoodMaintenance</label>

						<div>
							<form:input path="foodmaintenance"
								style="width: 300px;height: 25px;"
								title="Food can't be empty And Food must be in String"
								required="true" placeholder="Enter Food" />
						</div>

						<form:errors path="foodmaintenance" cssClass="text-danger" />
					</div>

					<div>
						<label for="revisit">Revisit</label>

						<div>
							<form:input path="revisit" style="width: 300px;height: 25px;"
								title="Revisit can't be empty And Revisit must be in String"
								required="true" placeholder="Enter Revisit" />
						</div>

						<form:errors path="revisit" cssClass="text-danger" />
					</div>
					<div class="moon">
						<label for="status">Status</label> Active:
						<form:radiobutton path="status" value="Active" required="true" />
						InActive:
						<form:radiobutton path="status" value="InActive" required="true" />

					</div>

					<div>
						<br>
						<form:button id="log">
									Click</form:button>
					</div>
				</form:form>
				<div>
					<a href="/login/home"><button>logout</button></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>