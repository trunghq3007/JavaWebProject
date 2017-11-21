<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<frameset rows="100,*">
	<frame src="bai1-html-css-menu.jsp" height="400" width="100%"></frame>
	<frameset>

	</frameset>
</frameset>
<iframe src="trangchu.jsp" height="400" width="100%"
	name="mFrame" style="border: none;"></iframe>
<p>
	<a href="table_member.jsp" target="mFrame">Table Member open in
		iframe</a>
</p>
<p>
	<a href="table_member.jsp" target="_blank">Table Member open new
		tab</a>
</p>
</body>
</html>