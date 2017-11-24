<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>learn session jsp</title>
</head>
<body>
	<%
		Date createTime = new Date(session.getCreationTime());
		Date lastAccessTime = new Date(session.getLastAccessedTime());

		String title = "Welcome Back";
		Integer visitCount = new Integer(0);
		String visitCountKey = "visitCount";
		String userIDKey = new String("userID");
		String userID = new String("Java2s_ID");

		if (session.isNew()) {
			title = "Welcome";
			session.setAttribute(userIDKey, userID);
			session.setAttribute(visitCountKey, visitCount);
		}
		visitCount = (Integer) session.getAttribute(visitCountKey);
		visitCount = visitCount + 1;
		userID = (String) session.getAttribute(userIDKey);
		session.setAttribute(visitCountKey, visitCount);
	%>
	<%-- <%
	//method to delete an entire session.
	session.invalidate();
%> --%>
	<%-- <%
	//method to set the timeout for a session individually
	session.setMaxInactiveInterval(15);
%> --%>

	id:<%
		//getId(); returns a string containing the unique identifier for this session
		out.print(session.getId());
	%><br /> Creation Time:<%
		out.print(createTime);
	%><br /> Time of Last Access:<%
		out.print(lastAccessTime);
	%><br /> User ID:<%
		out.print(userID);
	%>
	Number of visits:<%
		out.print(visitCount);
	%><br />
</body>
</html>