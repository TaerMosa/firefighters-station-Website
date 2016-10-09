<%@page import="connection.*, java.sql.*, java.util.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="windows-1255"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add USERS</title>
</head>
<body>
		<%
	try {
		Connection c = mySqlConnection.connect();
		Statement stmt = c.createStatement();
		String id = request.getParameter("userID");
		String username = request.getParameter("userName");
		String password = request.getParameter("userPass");
		String usertype = request.getParameter("option");
		String firstname = request.getParameter("privateName");
		String lastname = request.getParameter("familyName");
		String address = request.getParameter("address");
		String phone = request.getParameter("Tel");
		String email = request.getParameter("eMail");
	
		stmt.executeUpdate("INSERT INTO usertbl VALUES ('"+username+"', '"+password+"', '"+usertype+"', '"+firstname+"', '"+lastname+"', '"+address+"', '"+phone+"', '"+email+"', '"+id+"')");
		session.setAttribute("userName", request.getParameter("userName"));
		session.setAttribute("password", request.getParameter("password"));
		session.setAttribute("myType", request.getParameter("userType"));
		session.setAttribute("fname", request.getParameter("firstname"));
		response.sendRedirect("HomePage.jsp");
		mySqlConnection.close(c);
	}
	catch (com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException ex) {
		session.setAttribute("Error","1");
		response.sendRedirect("NewUser.jsp");
	}
	
	%>
</body>
</html>