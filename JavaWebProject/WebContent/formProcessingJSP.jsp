<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
@import url("css/form.css");
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>form processing</title>
</head>
<body>

	<form action="formProcessingJSP.jsp" method="Get">
		First Name: <input type="text" name="first_name"> <br /> Last
		Name: <input type="text" name="last_name" /> <input type="submit"
			value="Submit" />
	</form>
	<b>First Name:</b><%=request.getParameter("first_name")%><br />
	<b>Last Name:</b><%=request.getParameter("last_name")%>

	<form action="formProcessingJSP.jsp" method="POST" target="_blank">
		<input type="checkbox" name="a" /> A <input type="checkbox" name="b" />
		B <input type="checkbox" name="c" /> C <input type="submit"
			value="Select Subject" />
	</form>
	<b>A Flag:</b><%=request.getParameter("a")%>
	<b>B Flag:</b><%=request.getParameter("b")%>
	<b>C Flag:</b><%=request.getParameter("c")%>
	<div>

		<%
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String paramName = (String) paramNames.nextElement();
				out.print("<b>" + paramName + ":</b> </br>");
				String paramValue = request.getHeader(paramName);
				out.println(paramValue);
			}
		%>
	</div>
</body>
</html>