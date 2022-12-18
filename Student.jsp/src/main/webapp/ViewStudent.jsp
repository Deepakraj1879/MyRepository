<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
	<h1 style="color: red">STUDENT DETAILS:</h1>
	<a href="Index.jsp">Index</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="AddStudent.jsp">AddStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="ViewStudent.jsp">ViewStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="UpdateStudent.jsp">UpdateStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="DeleteStudent.jsp">DeleteStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ViewAllStudent.jsp">ViewAllStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <form action="ViewCode.jsp" method="get">
<h3>DISPLAY STUDENT RECORD</h3>
	
		ENTER STUDENT NAME: <input type="text" name="sname"><br><br>
		<table align="center">
			<tr>
				<td></td>
				<td><input type="submit" value="DisplayRecord"></td>
			</tr>


		</table>

	</form>


</body>
</html>