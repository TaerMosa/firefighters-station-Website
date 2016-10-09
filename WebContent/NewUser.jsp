<%@ page language="java" contentType="text/html; charset=windows-1255"
	pageEncoding="windows-1255"%>
<%@page import=" connection.*,java.sql.*, java.util.*,java.io.*"%>

<!DOCTYPE html >

<html>
<head>
<title>Registration</title>
<script type="text/javascript">
	function validateNewUser() {
		var userName = document.getElementById("userName").value;
		var userPass = document.getElementById("userPass").value;
		var FirstName = document.getElementById("privateName").value;
		var LastName = document.getElementById("familyName").value;
		var address = document.getElementById("address").value;
		var Tel = document.getElementById("Tel").value;
		var email = document.getElementById("eMail").value;
		var option = document.getElementById("option").value;

		if (userName == "" || userPass == "" || FirstName == ""
				|| LastName == "" || address == "" || Tel == "" || email == "") {
			alert("there is an empty data !!Check your details again ")
		} else {
			if (userName.length<6||userName.length>8) {
				alert("wrong input User Name Must be 6-8 characters");
			} else {
				if (userPass.length<6||userPass.length>8) {
					alert("Wrong input! Password Must be 6-8 characters");
				} else {
					if (FirstName.length > 10 || LastName.length > 10) {
						alert("wrong input ! First Name Or Last Name Must be Up to 10 characters");
					}
				}
			}
		}

	}
</script>

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	-webkit-font-smoothing: antialiased;
	background: black;
}

h6 {
	color: white;
}

td {
	color: red;
	font-size: 20px;
}

input {
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 200px;
	height: 20px;
	border: 3px solid;
	border-color: blue;
	border-radius: 30px;
	font-size: 15px;
}

input[name=signUp] {
	float: right;
	margin-right: 10px;
	margin-top: 20px;
	width: 80px;
	height: 30px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	border: 1px solid;
	background-color: purple;
}

table {
	margin-left: px;
}

img[name=firegate] {
	width: 500px;
	height: 500px;
	margin-left: 650px;
	margin-top: -600px;
}

h1 {
	color: highlight;
	margin-left: 200px;
}

select {
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 27px;
	width: 200px;
	height: 30px;
	border: 3px solid;
	border-color: blue;
	font-size: 20px;
}

a {
	color: black;
}
</style>

</head>
<body>
	<h1>Create Account</h1>
	<form method="post" action="AddUser.jsp"  >
	<table>
	<tr>
			<td>User ID:</td>
			<td><input id="userID" type="text" name="userID" /></td>
			<td><h6>(6-8characters when the name starts with that
					letter)</h6></td>
		</tr>
	<tr>
			<td>User Name:</td>
			<td><input id="userName" type="text" name="userName" /></td>
			<td><h6>(6-8characters when the name starts with that
					letter)</h6></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input id="userPass" type="password" name="userPass" /></td>
			<td><h6>(6-8characters)</h6></td>
		</tr>
		<tr>
			<td>UserType:</td>
			<td><select id="option" name="option">
					<option value="fighter">fighter</option>
					<option value="responsible">responsible</option>
					<option value="manager">manager</option>
			</select></td>
			<td><h6>(Choose user type)</h6></td>
		</tr>
		<tr>
			<td>First Name:</td>
			<td><input id="privateName" type="text" name="privateName" /></td>
			<td><h6>(Up to 10 characters)</h6></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input id="familyName" type="text" name="familyName" /></td>
			<td><h6>(Up to 10 characters)</h6></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input id="address" type="text" name="address"
				value="City,Street,Number" /></td>
			<td><h6>(City,Street,Number)</h6></td>
		</tr>
		<tr>
			<td>Telephone:</td>
			<td><input id="Tel" type="tel" name="Tel" value="Xxx-xxxxxxx" /></td>
			<td><h6>(Xxx-xxxxxxx format)</h6></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input id="eMail" type="email" name="eMail" value="x@x.x" /></td>
			<td><h6>(Format:x@x.x)</h6></td>
		</tr>
		
		<tr>
		<tr>
			<td colspan="2"><input name="signUp" type="submit" 
				value="Sign up" onclick="validateNewUser()"  /></td>
		</tr>

	</table>
</form>
	<a href="Login.html"> <img width="100" height="50"
		src="pic/back.jpg"></a>
	<img name="firegate" src="pic/5.gif">



</body>
</html>