<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>VIEW ALL STUDENT RECORD</h1>
	<h3>
	    <a href="Index.jsp">Index</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="AddStudent.jsp">AddStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="ViewStudent.jsp">ViewStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="UpdateStudent.jsp">UpdateStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="DeleteStudent.jsp">DeleteStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="ViewAllStudent.jsp">ViewAllStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</h3>
<form action="ViewAllCode.jsp" method="get">
Enter Your Table Name:
<input type="text" name="sname"><p></p>
<input type="submit" value="Display">
</form>

</body>
</html>