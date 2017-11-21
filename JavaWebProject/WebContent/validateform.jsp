<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>validate input</title>
</head>
<body>
	<h2>JavaScript Can Validate Input</h2>

	<p>Please input a number between 1 and 10:</p>

	<input id="numb">

	<button type="button" onclick="myFunction()">Submit</button>

	<p id="demo"></p>

	<script>
	function myFunction() {
	    var x, text;
	
	    // Get the value of the input field with id="numb"
	    x = document.getElementById("numb").value;
	
	    // If x is Not a Number or less than one or greater than 10
	    if (isNaN(x) || x < 1 || x > 10) {
	        text = "Input not valid";
	    } else {
	        text = "Input OK";
	    }
		    document.getElementById("demo").innerHTML = text;
		}
</script>
</body>
</html>