<%@page import="connection.*, java.sql.*, java.util.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1255"
	pageEncoding="windows-1255"%>
<!DOCTYPE html>
<html>
<head>
<title>Users</title>
<script type="text/javascript">

	 function SomeDeleteRowFunction(o) {
	    var p=o.parentNode.parentNode;
	         p.parentNode.removeChild(p);

			
	    }
	
</script>
<style type="text/css">
th {
	color: green;
	background: red;
}
td{
background:yellow; 
}
</style>
</head>
<body bgcolor="black">
	<h4 style="color: red;">Hello Manager</h4><a href="HomePage.jsp" style="color: blue;">Back To Home Page</a><br><br>
	<form method="post" action="DeleteUser.jsp">
	<a href="NewUser.jsp"><input type="submit" value="Insert User" style="background: fuchsia;"></a>

	
	<table class="table table-hover"
		style="color: purple; margin-left: 250px;" id="Usertable">
		<thead>
			<tr>
				<th>id</th>
				<th>User name</th>
				<th>password</th>
				<th>User type</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Email</th>
				<th>marker</th>
			</tr>
		</thead>
		<tbody>
			<%
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					String connectionString = "jdbc:mysql://localhost:3306/mydb?"
							+ "user=root&password=1234";
					con = DriverManager.getConnection(connectionString);
					stmt = con.createStatement();
					rs = stmt.executeQuery("SELECT * FROM mydb.usertbl");
					
					while (rs.next()) {
						out.write("<tr>");
						out.write("<td>" + rs.getString("userID") + "</td>");
						out.write("<td>"+ rs.getString("username") + "</td>");
						out.write("<td>" + rs.getString("password") + "</td><td>"
								+ rs.getString("usertype") + "</td>");
						out.write("<td>" + rs.getString("firstname") + "</td><td>"
								+ rs.getString("lastname") + "</td>");
						out.write("<td>" + rs.getString("address") + "</td><td>"
								+ rs.getString("Tel") + "</td>");
						out.write("<td>" + rs.getString("email") + "</td>");
						out.write("<td>"+"<input type=button name=DeleteUser value=Remove onclick=SomeDeleteRowFunction(this)>" +"</td></tr>");
					}
				} catch (Exception ex) {
					out.write("<tr><td>An error occured while reading data</td></tr>");
				} finally {
					stmt.close();
					con.close();
				}
			%>
		</tbody>

	</table>
</form>
</body>
</html>