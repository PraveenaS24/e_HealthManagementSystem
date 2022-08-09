<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body {
    background-image: url("https://media.istockphoto.com/photos/stethoscope-doctor-with-red-heart-on-black-wooden-table-background-picture-id1222435595?k=20&m=1222435595&s=170667a&w=0&h=JFZJsl4-nfh3e5QWupqxEpcb9XFnRNiqjrYPWhtsCMs=");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}

h1 {
    color: blue;
}

label {
    color: blue;
    font-size: 1.3em;
    display: flex;
    margin: 5px;
    font-weight: bold;
    cursor: pointer;
    transition: .5s ease-in-out;
}

#userId {
    width: 250px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}

#secretword {
    width: 250px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}

#userType {
    width: 260px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
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
}

.box {
    width: 400px;
    height: 240px;
    overflow: hidden;
    border-radius: 10px;
    box-shadow: 5px 20px 50px #000;
    margin: auto;
    padding: 10px;
    text-align: center;
    float: left;
    
}
#log {
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
#cont {
position: relative;
left: 100px;
}
</style>
</head>
<body>
<br>
    <h1 id="cont">User Login</h1>
    <br>
    <div id="root" class="box">
        <div id="form">
            <table>
                <form:form action="checkuserlogin" method="post"
                    modelAttribute="users">
                    <tr>
                        <div>
                            <td><label for="userId">User Id</label></td>
                            <div>
                                <td><form:input path="userId" class="form-control" /></td>
                            </div>
                        </div>
                    </tr>
                    <tr>
                        <div>
                            <td><label for="secretword">Password</label></td>
                            <div>
                                <td><form:input type="password" path="secretword"
                                        class="form-control" /></td>
                            </div>
                        </div>
                        <br>
                    </tr>
                    <tr>
                        <div>
                            <td><label for="userType">UserType</label></td>
                            <div>
                                <td><form:select path="userType">
                                <form:errors path="userType" />
                                        <form:option value="nurse">Nurse</form:option>
                                        <form:option value="murse">Murse</form:option>
                                    </form:select></td>
                                    </div>
                            </div>
                        <br>
                    </tr>
                    <tr>
                        <div>
                            <td colspan="5" align="right"><br> <form:button
                                    id="log">Login</form:button></td>
                        </div>
                    </tr>
                </form:form>
            </table>
        </div>
    </div>
</body>
</html>