<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/custom.tld" prefix="m"%>
<%@ taglib uri="WEB-INF/today.tld" prefix="t"%>
<%@ taglib uri="WEB-INF/customtagbody.tld" prefix="ex"%>
<%@ taglib uri="WEB-INF/customtagattr.tld" prefix="attr"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom Tag</title>

</head>
<body>
	<h3>A custom tag is a user-defined JSP language element.We use the
		Simple Tag Handlers to write the custom tags. To create a customer
		tag, extend SimpleTagSupport class and override the doTag() method.
		Inside the doTag() method, we can add our code to generate content for
		the tag.</h3>
	<div>
		<m:My />
	</div>
	<div>
		<t:today />
	</div>
	<div>
		<ex:today>content body of custom tag today </ex:today>
	</div>
	<div>
		<attr:today message="xin chao">custom tag attribute </attr:today>
	</div>

</body>
</html>