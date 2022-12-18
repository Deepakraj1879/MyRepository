<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<table border="1">
		<%
		try {
			String std_name = request.getParameter("sname");

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Deepak", "7989");
			PreparedStatement ps = conn.prepareStatement("select * from student_detail where std_name=?");
			ps.setString(1, std_name);

			ResultSet rs = ps.executeQuery();
			ResultSetMetaData rss = rs.getMetaData();
			//ResultSetMetaData rss=rs.getMetaData();
			int n = rss.getColumnCount();
			for (int i = 1; i <= n; i++)
				out.println("<td> <font color=blue size=3" + "<br>" + rss.getColumnName(i));
			out.println("<tr>");

			while (rs.next()) {
				for (int i = 1; i <= n; i++)
			out.println("<td><br>" + rs.getString(i));
				out.println("<tr>");
			}
			out.println("</table></body></html>");

			conn.close();
		} catch (Exception ex) {
			out.println(ex);
		}
		%>

