<%@page import=" java.sql.*, java.util.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE html >
<html>
<head>
<title>Events Management</title>
<script type="text/javascript">

	 function SomeDeleteRowFunction(o) {
	     
	     var p=o.parentNode.parentNode;
	         p.parentNode.removeChild(p);
	     
	    }
</script>
<style>
<style type="text/css">
input[name=Add] {
color: green;	
}

td{
color: white;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
th {
    text-align: left;}
table th	{
    background-color:red;
    color: black;
}
</style>
</head>
<body bgcolor="black">
<table style="width:100%">
<caption>Events Management</caption>
	<thead>
<tr>

    <th>Event number</th>
    <th>place</th>
    <th>fighter1</th> 
    <th>fighter2</th> 
    <th>fighter3</th>
    <th>responsible</th>   
    <th>Type</th>
    <th>Remove event</th>
   
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
					rs = stmt.executeQuery("SELECT * FROM mydb.eventstbl");
					while (rs.next()) {
						out.write("<tr>");
						
						out.write("<td>"+ rs.getString("eventnum") + "</td>");
						out.write("<td>" + rs.getString("place") + "</td><td>"
								+ rs.getString("fighter1") + "</td>");
						out.write("<td>"+ rs.getString("fighter2") + "</td>");
						out.write("<td>"+ rs.getString("fighter3") + "</td>");
						out.write("<td>"+ rs.getString("responsible") + "</td>");
						out.write("<td>"+ rs.getString("type") + "</td>");
						out.write("<td>"+"<input type=button value=Remove onclick=SomeDeleteRowFunction(this)>" +"</td></tr>");
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

<a href="Adding an event page.jsp"><input  style=" margin-bottom: -100px;color: green;" type="button" value="Add Event" name="Add"></a>


</body>
</html>