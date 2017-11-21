<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>learn cookies</title>
<link rel="stylesheet" type="text/css" href="css/form.css">
<script type="text/javascript" src="js/cookie.js"></script>
</head>
<body>
<body onload="readCookie();">
	<form name="cookieForm" onsubmit="javascript: return setCookie();"
		action="" method="post" style="padding: 2em">
		User ID: <input type="text" name="username"><br>
		Password: <input type="password" name="pwd"><br> <input
			type="checkbox" name="persist"> Remember user ID <br> <input
			type="submit" value="Submit">
	</form>

</body>
</html>