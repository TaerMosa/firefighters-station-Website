<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE html >
<html>
<head>
<title>Add Event</title>
<style type="text/css">
 body {
	background: black;
}

h6 {
	color: white;
}

td {
	color: red;
	font-size: 20px;
}

input  {
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 200px;
	height: 20px;
	border: 3px solid;
	border-color: blue;
	border-radius: 30px;
	font-size: 11px;
}

input[type=Submit] {
	float: right;
	margin-right: 10px;
	margin-top: 20px;
	width: 90px;
	height: 30px;
	font-size: 14px;
	font-weight: bold;
	color: white;
	border: 1px solid;
	background-color: purple;
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
select{
padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 27px;
	width:200px;
	height:30px;
	border: 3px solid;
	border-color: blue;
	font-size:20px;
}
a{
color: black;
}
</style>
</head>
<body>
	<form id="form1" name="form1" method="post" action="AddEvent.jsp">
	
		<h1>Add New Event</h1>
		<table>
		<tr>
				<td>Event number:</td>
				<td><input type="text" name="eventnum"  /></td>
				<td><h6>(1-5)</h6></td>
			</tr>
			<tr>
				<td>Place:</td>
				<td><input type="text" name="place" value="City,Street,Number" /></td>
				<td><h6>(City,Street,Number)</h6></td>
			</tr>
			<tr>
				<td>Fire Fighter 1:</td>
				<td><select name="fighter1">
						<option value="ta2er">LOLO</option>
						<option value="nisreen">BOBO</option>
						<option value="hassan">ZOZO</option>
				</select></td>
				<td><h6>(Fire Fighter list)</h6></td>
			</tr>
			<tr>
				<td>Fire Fighter 2:</td>
			<td><select name="fighter2">
						<option value="ta2er">LOLO</option>
						<option value="steven">BOBO</option>
						<option value="adham">ZOZO</option>
				</select></td>
				<td><h6>(Fire Fighter list)</h6></td>
			</tr>
			<tr>
				<td>Fire Fighter 3:</td>
				<td><select name="fighter3">
						<option value="adham">LOLO</option>
						<option value="hassan">BOBO</option>
						<option value="Calr">ZOZO</option>
				</select></td>
				<td><h6>(Fire Fighter list)</h6></td>
			</tr>
			<tr>
				<td>Fire Fighting Responsible:</td>
				<td><select name="responsible">
						<option value="All">Responsible1</option>
						<option value="Robert">Responsible2</option>
						<option value="Steven">Responsible3</option>
				</select></td>
				<td><h6>(Res Fire Fighter list)</h6></td>
			</tr>
			<tr>
				<td>Event type:</td>
			 <td><select name="type">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        </select></td>
			<td><h6>(choose Event type list)</h6></td>
			<tr>
				<td colspan="2"><input  type="Submit" value="Add Event" /></td>
			</tr>
		</table>
		<a href="Event Management page.jsp">
<img width="100" height="50" src="pic/back.jpg"></a>
		<img name="firegate" src="pic/fireleft.jpg">
	</form>
</body>
</html>