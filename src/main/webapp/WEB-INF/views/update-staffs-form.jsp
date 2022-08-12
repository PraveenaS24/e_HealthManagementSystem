<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Update Staffs</title>
</head>
<style>
#cont {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-right: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}
</style>
<body>
	<div class="skewed-bg">
		<h1 align="center">UPDATE LIST</h1>
		<div id="root">
			<div id="form" align="center">
				<table border="" width="50%" cellpadding="10">
					<form:form action="updatestaff" method="post"
						modelAttribute="updatestaffs">
						<tr>
							<div>
								<td><label for="staffId">Staffs Id</label></td>
								<td>
									<div>
										<form:input path="staffId" style="width: 500px;height: 25px;" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="firstName">First Name</label></td>
								<td>
									<div>
										<form:input path="firstName"
											style="width: 500px;height: 25px;"
											title="Name can't be empty And First Name must be in String"
											required="true" placeholder="Enter FirstName" />
									</div>
								</td>
								<form:errors path="firstName" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="lastName">Last Name</label></td>
								<td>
									<div>
										<form:input path="lastName" style="width: 500px;height: 25px;"
											title="Name can't be empty And Last Name must be in String"
											required="true" placeholder="Enter LastName" />
									</div>
								</td>
								<form:errors path="lastName" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="gender">Gender</label></td>
								<td>Male: <form:radiobutton path="gender" value="Male" />
									Female: <form:radiobutton path="gender" value="Female" />
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="contactNo">Contact No</label></td>
								<td>
									<div>
										<form:select path="countryCode">
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
											required="true" />
									</div>
								</td>
								<form:errors path="contactNo" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="dob">DOB</label></td>
								<td>
									<div>
										<form:input path="dob" type="date"
											style="width: 500px;height: 25px;" Placeholder="Enter Date"
											required="true" />
									</div>
								</td>
								<form:errors path="dob" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="email">Email</label></td>
								<td>
									<div>
										<form:input path="email" style="width: 500px;height: 25px;"
											title="Mail Id is not in correct formet"
											pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
											placeholder="Enter Email" />
									</div>
								</td>
								<form:errors path="email" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div class="const">
								<td><label for="role">Role</label></td>
								<td>Perform diagnostic tests : <form:radiobutton
										path="role" value="Perform diagnostic tests" /> Assess the
									patient : <form:radiobutton path="role"
										value="Assess the patient" /> Management of illness : <form:radiobutton
										path="role" value="Management of illness" />
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="qualification">Qualification</label></td>
								<td>
									<div>
										<form:input path="qualification"
											style="width: 500px;height: 25px;"
											placeholder="Enter Qualification" required="true" />
									</div>
								</td>
								<form:errors path="qualification" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="speciality">Speciality</label></td>
								<td>Pediatrics : <form:radiobutton path="speciality"
										value="Pediatrics" /> Geriatrics : <form:radiobutton
										path="speciality" value="Geriatrics" /> Pain care : <form:radiobutton
										path="speciality" value="Pain care" /> Wound care : <form:radiobutton
										path="speciality" value=" Wound care" /> Mental health : <form:radiobutton
										path="speciality" value="Mental health" /> Specific disease:
									<form:radiobutton path="speciality" value="Specific disease" />
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="intime">Intime</label></td>
								<td><div>
										<form:input path="intime" type="time"
											style="width: 500px;height: 25px;" placeholder="Enter Time"
											required="true" />
									</div></td>
								<form:errors path="intime" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="outtime">Outtime</label></td>
								<td>
									<div>
										<form:input path="outtime" type="time"
											style="width: 500px;height: 25px;" placeholder="Enter Time"
											required="true" />
									</div>
								</td>
								<form:errors path="outtime" cssClass="text-danger" />
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
	</div>
</body>
</html>