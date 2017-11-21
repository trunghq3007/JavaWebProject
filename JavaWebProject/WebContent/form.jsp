<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet" style="text/css" href="css/form.css"> -->
<style type="text/css">
@import url("css/form.css");
</style>
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<form action="table_member.jsp" method="post" name="fields"
		onsubmit="return !!(checkAll() & validPhone());">
		<fieldset>
			<legend>Form dang ki hoc</legend>
			<div style="float: left; width: 50%">
				<div>First name :</div>
				<input type="text" name="fname" required><br>
				<div>Last name :</div>
				<input type="text" name="lname" required><br>

				<div>Phone number :</div>
				(<input type="text" name="area" size="3" maxlength="3"
					class="inputphone">) <input type="text" name="pre" size="3"
					maxlength="3" class="inputphone"> - <input type="text"
					name="last" size="4" maxlength="4" class="inputphone"> <br>
				<input type="radio" name="sex" value="male">Male <br> <input
					type="radio" name="sex" value="female">Female <br>
			</div>
			<div style="float: right; margin-right: 0; width: 30%">
				<input type='file' id="uploadImage" onchange="PreviewImage();"
					required /> <img id="uploadPreview" src="#"
					style="margin-top: 10px" alt="your image" width="160px"
					height="160px" /><br>
			</div>
			<!-- end area choose img -->
			<textarea rows="5" cols="50">Description</textarea>
			<br> <input type="checkbox" name="verhical" value="bike">By
			Bike <br> <input type="checkbox" name="verhical" value="car">By
			Car <br> <select name="donvi">
				<option value="U">Units</option>
				<option value="P">Pound</option>
				<option value="K">Kg</option>
				<option value="M" selected="selected">Meter</option>
			</select><br> <input type="submit" value="Submit">
		</fieldset>

	</form>
</body>
</html>