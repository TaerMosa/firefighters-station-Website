<%@page import="connection.*, java.sql.*, java.util.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="windows-1255"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Deleted</title>
</head>
<body>


<%
String id[]=new String[10];
for(int i=0;i<10;i++){

	id[i]=request.getParameter("check"+i);
	System.out.println(id[i]);
}
%>
	<% 
	
				Connection conn = null;
			
				Statement st = null;
				ResultSet rs = null;
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					String connectionString = "jdbc:mysql://localhost:3306/mydb?"
							+ "user=root&password=1234";
					conn = DriverManager.getConnection(connectionString);
					st = conn.createStatement();
					
					for(int a=0;a<10;a++){
						if(null!=id[a])
					st.executeUpdate("DELETE FROM mydb.usertbl WHERE userID="+id[a]+"");
					}
								
				
				} catch (Exception ex) {
					out.write("<tr><td>An error occured while reading data</td></tr>");
				} finally {
					st.close();
					conn.close();
				}
			%>
	Delete successfully
	
</body>
</html>