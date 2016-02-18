
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>This is Ramesh !!</title>
</head>
<body>
<table border="1">
<tr>
   <th>classname</th>
   <th>semester</th>
</tr>
<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ramesh_ssdi","root","iNDIA@7");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from ssdi_db");
while(rs.next())
{
	String classname = rs.getString(1);
	String semester = rs.getString(2); %>
<tr>
<td><% out.println(classname); %></td>
<td><% out.println(semester); %></td>
</tr>
<% }con.close(); %>
</table>
</body>
</html>