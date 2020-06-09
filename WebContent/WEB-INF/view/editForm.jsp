<%@ page import="entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div style="margin-left: 10%">
	<h1>Edit Student</h1>
		<%
		Student student = (Student) request.getAttribute("data");
		%>
		<form class="form-group"  action="<%=request.getContextPath()%>/edit" method="POST" style="width: 50%" >
			<input class="form-control" type="hidden" name="id" value="<%=student.getId()%>"> <br>
			Name: <input class="form-control" type="text" name="name" value="<%=student.getName()%>"> <br>
			Age: <input class="form-control" type="text" name="age" value="<%=student.getAge()%>"><br>
			License Car Number: <input class="form-control" type="text" name="license_number" value="<%=student.getLicense_car_number()%>"> <br>
			<input class="btn btn-success" type="submit" value="edit" style="margin-top: 30px; width: 100%">
		</form>
	</div>
</body>
</html>