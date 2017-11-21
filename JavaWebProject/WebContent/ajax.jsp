<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>learn ajax</title>
<script type="text/javascript" src="js/ajaxmobileshop.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<style type="text/css">
button {
	margin: 20px;
	color: #000;
	font-weight: bold;
	border: 1px solid #adadad;
	border-radius: 10px;
	height: 40px;
	font-family: sans-serif;
	background-color: #4CAF50;
	width: 80%;
	border: 1px solid #adadad;
}

h2 {
	font-family: sans-serif;
	margin: 20px;
}
</style>
</head>
<body
	onload="loadDocUseAjaxJqueryResponeText();loadDocUseAjaxJqueryResponeHTML()">
	<div id="demo">
		<h2>Let AJAX change this text</h2>
		<div style="float: left; width: 40%;">
			<div>
				<button type="button" onclick="loadDoc()">Change Content:
					asynchronous ajax responseText</button>
			</div>
			<div>
				<button type="button" onclick="loadDocResponseXML()">Change
					Content: asynchronous ajax responseXML</button>
			</div>
			<div>
				<button type="button" id="ajaxButton">Change Content:
					asynchronous ajax-jquery responseText</button>
			</div>
			<div>
				<button type="button" id="ajaxButtonResponseHTML">Change
					Content: asynchronous ajax-jquery responseHTML</button>
			</div>
		</div>
		<div id="responseDiv" style="width: 40%; overflow: auto;"></div>
	</div>
</body>
</html>