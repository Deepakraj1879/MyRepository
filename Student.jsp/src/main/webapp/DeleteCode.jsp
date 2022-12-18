<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String std_name=request.getParameter("sname");

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Deepak","7989");
	PreparedStatement ps=conn.prepareStatement("delete from student_detail where std_name=?");
	ps.setString(1,std_name);
	
	int i=ps.executeUpdate();
	out.println(i+ " One Record Has Been Deleted ");
	
	conn.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>

</body>
</html>