<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<%
try 
{
			String t_name = request.getParameter("sname");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Deepak", "7989");

			Statement stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery("select * from " + t_name);
			ResultSetMetaData rss = rs.getMetaData();
			int n = rss.getColumnCount();
			for (int i = 1; i <= n; i++) 
				
				out.println("<td><font color=blue size=3" + "<br>" + rss.getColumnName(i));
				out.println("<tr>");
				
			
            while (rs.next())
            {
            	
            	
				for (int i = 1; i <= n; i++)
					
			    out.println("<td><br>" + rs.getString(i));
			    out.println("<tr>");
				

			}
			out.println("</table></body></html>");
} catch (Exception ex) {
		out.print(ex);
}
%>
	
</body>
</html>