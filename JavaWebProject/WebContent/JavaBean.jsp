<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java Bean JSP</title>

</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" />
	<p>
		The date/time is
		<%=date%>
	</p>
	
	<jsp:useBean id="students" class="action.StudentsBean">
		<jsp:setProperty name="students" property="firstName" value="Jack" />
		<jsp:setProperty name="students" property="lastName" value="Smith" />
		<jsp:setProperty name="students" property="age" value="24" />
	</jsp:useBean>

	<p>
		Student First Name:
		<jsp:getProperty name="students" property="firstName" />
	</p>
	<p>
		Student Last Name:
		<jsp:getProperty name="students" property="lastName" />
	</p>
	<p>
		Student Age:
		<jsp:getProperty name="students" property="age" />
	</p>
</body>
</html>