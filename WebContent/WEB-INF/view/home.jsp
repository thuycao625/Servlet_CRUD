<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="entity.Student"%>
<html>
<head>
<title>Hello Servlet</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>
	<div style="margin-left: 10%">
	<h1>List Students</h1>
	<a href='add'><button class="btn btn-success" type=\"button\">Add
			Student</button></a>
	<a href='checkLicense'><button class="btn btn-danger" type=\"button\">Check license car</button></a>

	</br>
	</br>
	<table class="table table-bordered" style="width: 50%">
		<thead>
			<tr>
				<th>#</th>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>License car number</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
				int i = 1;
			List<Student> listStudent = (List) request.getAttribute("data");

			for (Student student : listStudent) {
			%>
			<tr>
				<th scope="row"><%=i++%></th>
				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getAge()%></td>
				<td><%=student.getLicense_car_number()%></td>
				<td><a href="delete?id=<%=student.getId()%>">Delete</a>&emsp;
				<a href="edit?id=<%=student.getId()%>">Edit</a></td>
			</tr>

			<%
				}
			%>
		</tbody>
	</table>
	</div>

</body>
</html>