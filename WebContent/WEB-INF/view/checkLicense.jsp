<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>

	<div style="margin-left: 10%; width: 50%">
		<h1>Check License Car</h1>

		<p>Do you have a license car?</p>

		<input type="radio" id="yes" name="check" value="yes"> <label
			for="yes">Yes</label><br> <input type="radio" id="no"
			name="check" value="no"> <label for="no">No</label><br>
		<br>

		<div class="license_input" style="display: none">
			<p id="error">Your license is numbers</p>

			<label>My license car is: </label> <input class="form-control"
				type="text" id="license_number" name="license_number"> <input
				class="btn btn-success" type="submit" value="Save"
				style="margin-top: 30px; width: 100%" onclick="myFunction()">
		</div>

		<div id="log"></div>
	</div>
</body>
</html>