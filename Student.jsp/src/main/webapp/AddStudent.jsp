<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightgreen">
	<h2 style="color: red">ENTER DETAILS:</h2>
	<h3>
		<a href="Index.jsp">Index</a>&nbsp;&nbsp;&nbsp; <a
			href="ViewStudent.jsp">ViewStudent</a>&nbsp;&nbsp;&nbsp; <a
			href="AddStudent.jsp">AddStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="UpdateStudent.jsp">UpdateStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="DeleteStudent.jsp">DeleteStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="ViewAllStudent.jsp">ViewAllStudent</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<p></p>
	</h3>

	<form action="StudentCode.jsp" method="post">
		<table>
			<tr>
				<td>STUDENT NAME:</td>
				<td><input type="text" name="sname"
					placeholder="Enter student Name"></td>
			</tr>
			<tr>
				<td>STUDENT ROLL_NO:</td>
				<td><input type="number" name="rollno"
					placeholder="Enter Roll_No"></td>
			</tr>

			<tr>
				<td>HINDI:</td>
				<td><input type="number" name="num1"
					placeholder="Enter Hindi Marks"></td>
			</tr>
			<tr>
				<td>TELUGU:</td>
				<td><input type="number" name="num2"
					placeholder="Enter Telugu Marks"></td>
			</tr>
			<tr>
				<td>ENGLISH:</td>
				<td><input type="number" name="num3"
					placeholder="Enter English Marks"></td>
			</tr>
			<tr>
				<td>MATHS:</td>
				<td><input type="number" name="num4"
					placeholder="Enter Maths Marks"></td>
			</tr>
			<tr>
				<td>SCIENCE:</td>
				<td><input type="number" name="num5"
					placeholder="Enter Science Marks"></td>
			</tr>
			<tr>
				<td>SOCIAL:</td>
				<td><input type="text" name="num6"
					placeholder="Enter Social Marks"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>

		</table>
	</form>


</body>
</html>