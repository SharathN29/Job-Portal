<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*,java.lang.*, java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*, java.sql.PreparedStatement" %>
    
    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply</title>
</head>
<body>
		<%
			int jobid = Integer.parseInt(request.getQueryString());
			int uid = (int)session.getAttribute("uid");
			String url = "jdbc:mysql://localhost:3306/jobportal?useTimeZone=true&serverTimezone=UTC";
			String username = "root";
			String password = "Typewriter";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = null;
			PreparedStatement ps = null;
			
			try {
				
				con = DriverManager.getConnection(url, username, password);
				ps = con.prepareStatement("insert into candidatejob values(?, ?)");
 				ps.setInt(1,uid);
				ps.setInt(2,jobid); 
				ps.executeUpdate();
				response.sendRedirect("CandFindJobs.jsp");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		%>

</body>
</html>