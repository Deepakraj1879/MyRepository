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
	<%
	try {
		String std_name = request.getParameter("sname");

		double hindi_marks = Double.parseDouble(request.getParameter("num1"));
		double telugu_marks = Double.parseDouble(request.getParameter("num2"));
		double english_marks = Double.parseDouble(request.getParameter("num3"));
		double maths_marks = Double.parseDouble(request.getParameter("num4"));
		double science_marks = Double.parseDouble(request.getParameter("num5"));
		double social_marks = Double.parseDouble(request.getParameter("num6"));
		double total_marks = hindi_marks + telugu_marks + english_marks + maths_marks + science_marks + social_marks;
		double percentage = (total_marks / 600.0) * 100;
		
		String roll_no = request.getParameter("rollno");
		int rollno = Integer.parseInt(roll_no);

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Deepak", "7989");
		PreparedStatement ps = conn.prepareStatement(
		"update student_detail set std_name=?,hindi_marks=?,telugu_marks=?,english_marks=?,maths_marks=?,science_marks=?,social_marks=?,total_marks=?,percentage=? where rollno=?");
		ps.setString(1, std_name);
		ps.setDouble(2, hindi_marks);
		ps.setDouble(3, telugu_marks);
		ps.setDouble(4, english_marks);
		ps.setDouble(5, maths_marks);
		ps.setDouble(6, science_marks);
		ps.setDouble(7, social_marks);
		ps.setDouble(8, total_marks);
		ps.setDouble(9, percentage);
		ps.setInt(10, rollno);
		
		
		int i = ps.executeUpdate();
		out.print(i + " Record has been updated ");

		conn.close();
	} catch (Exception e) {
		out.print(e);
	}
	%>

</body>
</html>