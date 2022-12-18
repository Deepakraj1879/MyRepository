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
	try 
	{
		String std_name = request.getParameter("sname");
		String roll_no = request.getParameter("rollno");
		int rollno = Integer.parseInt(roll_no);
		double hindi_marks = Double.parseDouble(request.getParameter("num1"));
		double telugu_marks = Double.parseDouble(request.getParameter("num2"));
		double english_marks = Double.parseDouble(request.getParameter("num3"));
		double maths_marks = Double.parseDouble(request.getParameter("num4"));
		double science_marks = Double.parseDouble(request.getParameter("num5"));
		double social_marks = Double.parseDouble(request.getParameter("num6"));
        double total_marks = hindi_marks + telugu_marks + english_marks + maths_marks + science_marks + social_marks;
		double percentage = (total_marks / 600.0) * 100;

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Deepak", "7989");
		PreparedStatement ps = conn.prepareStatement("insert into student_detail values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, std_name);
		ps.setInt(2, rollno);
		ps.setDouble(3, hindi_marks);
		ps.setDouble(4, telugu_marks);
		ps.setDouble(5, english_marks);
		ps.setDouble(6, maths_marks);
		ps.setDouble(7, science_marks);
		ps.setDouble(8, social_marks);
		ps.setDouble(9, total_marks);
		ps.setDouble(10, percentage);

		int i = ps.executeUpdate();
		out.println("<h2>");
		out.println(i + "new record updated successfully <br><br>");

		out.println("STUDENT NAME:" + std_name + "<br><br>");
		out.println("ROLL-NO:" + roll_no + "<br><br>");
		out.println("HINDI MARKS:" + hindi_marks + "<br><br>");
		out.println("TELUGU MARKS:" + telugu_marks + "<br><br>");
		out.println("ENGLISH MARKS:" + english_marks + "<br><br>");
		out.println("MATHS MARKS:" + maths_marks + "<br><br>");
		out.println("SCIENCE MARKS:" + science_marks + "<br><br>");
		out.println("SOCIAL MARKS:" + social_marks + "<br><br>");
		out.println("TOTAL MARKS:" + total_marks + "<br><br>");
		out.println("PERCENTAGE:" + percentage + "<br><br>");
		out.println("</h2>");

		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>






</body>
</html>