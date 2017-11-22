<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>learn implicit object</title>
</head>
<body>
	<%-- <%
		response.sendError(407, "Need authentication!!!");
	%> --%>
	<%--ServletContext object associated with application context.
	 This object reoresents the JSP page through the entire lifecycle. 
	 It is created when the JSP page is initialized and will be removed when the JSP page is removed by the jspDestroy() method.
	  --%>
	<%
		Integer hitsCount = (Integer) application.getAttribute("hitCounter");

		if (hitsCount == null || hitsCount == 0) {
			out.println("first time!");
			hitsCount = 1;
		} else {
			/* return visit */
			out.println("Welcome back!");
			hitsCount += 1;
		}
		application.setAttribute("hitCounter", hitsCount);
	%>
	<p>
		Total number of visits:

		<%=hitsCount%></p>

	<%-- 
	request: 	HttpServletRequest object associated with the request.
	 Each time a client requests a page the JSP engine creates a new object to represent that request.
	  We can use the request object to get HTTP header information such as form data, cookies, HTTP methods etc
	   --%>

	<table width="100%" border="1" align="center"
		style="border-collapse: collapse;">
		<tr bgcolor="#949494">
			<th>Header Name</th>
			<th>Header Value(s)</th>
		</tr>
		<%
			Enumeration headerNames = request.getHeaderNames();
			while (headerNames.hasMoreElements()) {
				String paramName = (String) headerNames.nextElement();
				out.print("<tr><td>" + paramName + "</td>\n");
				String paramValue = request.getHeader(paramName);
				out.println("<td> " + paramValue + "</td></tr>\n");
			}
		%>
	</table>
	<%--	
	response: HttpServletResponse object associated with the response to the client. 
	JSP engine creates an object to represent the response to the client.
	 We can use this object to add new cookies or date stamps, HTTP status codes etc to the response.
	 
	 out: PrintWriter object used to send output to the client
	  --%>
	<center>
		<%
			// Set refresh, autoload time as 5 seconds
			response.setIntHeader("Refresh", 5);
			// Get current time
			Calendar calendar = new GregorianCalendar();
			String am_pm;
			int hour = calendar.get(Calendar.HOUR);
			int minute = calendar.get(Calendar.MINUTE);
			int second = calendar.get(Calendar.SECOND);
			if (calendar.get(Calendar.AM_PM) == 0)
				am_pm = "AM";
			else
				am_pm = "PM";
			String CT = hour + ":" + minute + ":" + second + " " + am_pm;
			out.println("Current Time is: " + CT + "\n");
		%>
	</center>
	
</body>
</html>