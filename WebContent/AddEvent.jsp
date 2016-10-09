<%@page import="connection.*, java.sql.*, java.util.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="windows-1255"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add event</title>
</head>
<body>
		<%
	try {
		Connection c = mySqlConnection.connect();
		Statement stmt = c.createStatement();
		String eventnum = request.getParameter("eventnum");
		String place = request.getParameter("place");
		String fighter1 = request.getParameter("fighter1");
		String fighter2 = request.getParameter("fighter2");
		String fighter3 = request.getParameter("fighter3");
		String responsible = request.getParameter("responsible");
		String type = request.getParameter("type");
		
	
		stmt.executeUpdate("INSERT INTO eventstbl VALUES ( '"+eventnum+"', '"+place+"', '"+fighter1+"', '"+fighter2+"', '"+fighter3+"', '"+responsible+"', '"+type+"')");
		
		response.sendRedirect("HomePage.jsp");
		mySqlConnection.close(c);
	}
	catch (com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException ex) {
	//	session.setAttribute("Error","1");
	//	response.sendRedirect("Adding an events page.jsp");
	}
	
	%>
</body>
</html>