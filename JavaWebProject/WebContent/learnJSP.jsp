<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--Page directive import --%>


<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!int day = 3;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>learn jsp</title>
<style type="text/css">
#container {
	font-family: sans-serif;
	width: 50%;
	padding: 20px;
	margin: 0 auto;
	border-style: solid;
	border-width: 10px;
	border-image:
		url(https://freetuts.net/upload/tut_post/images/2015/10/23/477/border.png)
		10 round;
	-webkit-border-image:
		url(https://freetuts.net/upload/tut_post/images/2015/10/23/477/border.png)
		10 round;
	-moz-border-image:
		url(https://freetuts.net/upload/tut_post/images/2015/10/23/477/border.png)
		10 round;
	-o-border-image:
		url(https://freetuts.net/upload/tut_post/images/2015/10/23/477/border.png)
		10 round;
	border-image:
		url(https://freetuts.net/upload/tut_post/images/2015/10/23/477/border.png)
		10 round;
	width: 50%;
}
</style>
</head>
<body>

	<div id="container">
		<h1>
			<%="welcome to jsp"%>
		</h1>

		<%
			// out: this is PrintWriter object use to sent output to Client
			// request: this is HttpServletRequest link to Request
			out.println("Your IP address is " + request.getRemoteAddr());
		%>
		<%!int i = 1000;%>
		<%
			out.println(" <br /> value i = " + i);
		%>
		<p>
			Today's date:
			<%-- call expression \" --%>
			<%=(new java.util.Date()).toLocaleString()%>

			<%
				Date dNow = new Date();
				SimpleDateFormat ft = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
				out.print("<div ><h2 align=\"center\" style=\" color:red \"  >" + ft.format(dNow) + "</h2></div>");
			%>
		</p>

		<%-- 
		control follow: if...else
		--%>
		<%
			if (day == 1 | day == 7) {
		%>
		<div>Today is weekend</div>
		<%
			} else {
		%>
		<div>Today is not weekend</div>
		<%
			}
		%>
		<%-- control follow : switch..case  --%>
		<%
			switch (day) {
			case 0:
				out.println("It\'s Sunday.");
				break;
			case 1:
				out.println("It\'s Monday.");
				break;
			case 2:
				out.println("It\'s Tuesday.");
				break;
			case 3:
				out.println("It\'s Wednesday.");
				break;
			case 4:
				out.println("It\'s Thursday.");
				break;
			case 5:
				out.println("It\'s Friday.");
				break;
			default:
				out.println("It's Saturday.");
			}
		%>
		<%-- 
		*****************************
		control follow: for loop
		*****************************
		--%>
		<%!int fontSize;%>
		<%
			for (fontSize = 0; fontSize < 20; fontSize += 10) {
		%>
		<div>
			<font color="green" size="<%=fontSize%>"> JSP Tutorial :
				follow control: for </font><br />
		</div>
		<%
			}
		%>
		<%-- ****************** control follow: while loop  ************* --%>
		<%!int fontSizeWhile = 0;%>
		<%
			while (fontSizeWhile < 3) {
		%>
		<font color="blue" size="<%=fontSizeWhile%>">JSP Tutorial :
			control follow while loop</font> <br />
		<%
			fontSizeWhile++;
		%>
		<%
			}
		%>

		<%-- ********** declearation method************** --%>
		<%!int cube(int n) {
		return n * n * n;
	}%>

		<%="Cube of 3 is:" + cube(3)%>
	</div>
</body>
</html>