<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>learn action jsp</title>
</head>
<body>
	<%--
	page:The relative URL of the page to be included. 
	flush: 
	--%>
	<jsp:include page="form.jsp" flush="true"></jsp:include>
	<%-- --%>
	<jsp:useBean id="test" class="action.TestBean" />
	<jsp:setProperty name="test" property="message"
		value="Hello Action JSP..." />
	<div align="center">
		<jsp:getProperty name="test" property="message" />
	</div>
	<%-- --%>
	<%-- <jsp:forward page="jquery.jsp" /> --%>

	<%--**************************************************************************** --%>
	<div align="center">
		<jsp:element name="xmlElement">
    <jsp:attribute name="xmlElementAttr">
       Value
    </jsp:attribute>
    <jsp:body>
       Body
    </jsp:body>
    </jsp:element>
	</div>
</body>
</html>