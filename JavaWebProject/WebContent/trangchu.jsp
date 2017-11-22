<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hoc html css</title>
<meta name="author" content="hqtrung" />
<meta name="description" content="day la bai hoc ve html css" />
<meta name="keyword" content="html,css">
<link rel="stylesheet" type="text/css" href="css/trangchu.css">
<script language="javascript">
	function swap(file) {
		document.globe.src = file;
	}
</script>
</head>
<body>
	<div id="container">
		<div id="menu">
			<ul>
				<li><a href="#">HTML & CSS</a>

					<ul class="sub-menu">
						<li><a href="table_member.jsp">Table</a></li>
						<li><a href="frame.jsp">Frame</a></li>
						<li><a href="form.jsp">Form</a></li>
					</ul></li>
				<li><a href="validateform.jsp">Java Script</a>
				<li><a href="jquery.jsp">JQuerry</a></li>
				<li><a href="learnJSP.jsp">JSP</a>
					<ul class="sub-menu">
						<li><a href="#">JSP Directive</a></li>
						<li><a href="#">JSP Action</a></li>
						<li><a href="#">JSP Implicit Objects</a></li>
						<li><a href="#">JSP Client Request</a></li>
						<li><a href="#">JSP Server Response</a></li>
						<li><a href="#">JSP Form Processing</a></li>
					</ul></li>
				</li>
				<li><a href="#">Servlet</a>
					<ul class="sub-menu">
						<li><a href="#">Item 1</a></li>
						<li><a href="#">Item 2</a></li>
						<li><a href="#">Item 3</a></li>
					</ul></li>
				<li><a href="#">Spring</a>
				<li><a href="#">Hibernate</a> <!-- <li><a href="#">MVC & JSP Models</a></li> -->

					<!-- <li><a href="#">Unit Testing</a></li> -->
			</ul>
		</div>
		<!--END #menu-->
		<div id="menu-vertical">
			<ul>
				<li><a href="#">HTML & CSS</a></li>
				<li><a href="validateform.jsp">Java Script</a>
				<li><a href="cookies.jsp">Java Script - Cookie</a>
				<li><a href="jquery.jsp">JQuerry</a>
				<li><a href="ajax.jsp">Ajax</a>
				<li><a href="learnJSP.jsp">JSP</a></li>
				<li><a href="#">Servlet</a></li>
				<li><a href="#">MVC & JSP Models</a></li>
				<li><a href="#">Struts 2.0</a></li>
				<li><a href="#">Unit Testing</a></li>
			</ul>
		</div>
		<!--END #menu-vertical-->

		<div id="header">
			<div id="logo">
				<img src="img/logocmc.jpg" name="globe"
					onMouseOver="swap('img/imgcmc1.png');"
					onMouseOut="swap('img/logocmc.jpg');" />
			</div>
			<div id="slogan">
				<h3>Champ Global Developer Passport</h3>
			</div>
		</div>
		<!--end #header-->
		<div class="row">
			<div id="box1" class="col">
				<h2>Lorem ipsum dolor sit amet</h2>
				<img src="img/logocmc.jpg" alt="CSS" />
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					non dui sodales, faucibus libero ut, posuere felis. Donec imperdiet
					suscipit accumsan. Aenean consequat condimentum velit ut tempor.
					Nam porta massa in metus bibendum congue. Pellentesque ultrices
					vestibulum mattis. Aliquam egestas nunc at ullamcorper ultricies.
					Donec feugiat velit nulla, vel sodales est ullamcorper id.</p>
			</div>
			<div id="box2" class="col">
				<h2>Lorem ipsum dolor sit amet</h2>
				<img src="img/logocmc.jpg" alt="URL" />
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					non dui sodales, faucibus libero ut, posuere felis. Donec imperdiet
					suscipit accumsan. Aenean consequat condimentum velit ut tempor.
					Nam porta massa in metus bibendum congue. Pellentesque ultrices
					vestibulum mattis. Aliquam egestas nunc at ullamcorper ultricies.
					Donec feugiat velit nulla, vel sodales est ullamcorper id.</p>
			</div>
			<div id="box3" class="col">
				<h2>Lorem ipsum dolor sit amet</h2>
				<img src="img/logocmc.jpg" alt="HTML" />
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					non dui sodales, faucibus libero ut, posuere felis. Donec imperdiet
					suscipit accumsan. Aenean consequat condimentum velit ut tempor.
					Nam porta massa in metus bibendum congue. Pellentesque ultrices
					vestibulum mattis. Aliquam egestas nunc at ullamcorper ultricies.
					Donec feugiat velit nulla, vel sodales est ullamcorper id.</p>
			</div>
		</div>
		<!-- end row -->
		<div id="footer">
			<p>Copyright &copy; 2017 - Learn HTML & CSS at CMC</p>
		</div>
		<!--#footer-->
	</div>
	<!-- end container -->


</body>
</html>