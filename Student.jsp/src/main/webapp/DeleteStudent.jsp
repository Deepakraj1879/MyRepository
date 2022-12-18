<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
	<h1>DELETE STUDENT RECORD</h1>
	<h3>
		<a href="Index.jsp">Index</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="AddStudent.jsp">AddStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="ViewStudent.jsp">ViewStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="UpdateStudent.jsp">UpdateStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="DeleteStudent.jsp">DeleteStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="ViewAllStudent.jsp">ViewAllStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	</h3>
	<form action="DeleteCode.jsp" method="post">
		Enter Student Name: <input type="text" name="sname">
		<p></p>
		<table align="center">
			<tr>
				<td></td>
				<td><input type="submit" value="DeleteRecord"></td>
			</tr>
		</table>
	</form>
</body>
</html>