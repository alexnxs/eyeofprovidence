<%@page import="connect.User"
import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch Recorded Video</title>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="js/home.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/styles.css"  />
</head>
<header>
	<% User user = (User) session.getAttribute("User"); %>
	<div class="headerwrap">
	<div class="header">
	<img src="images/xbox2.jpg" class="logo" alt="xbox" title="xbox" style="height:100px; width:182px">
		<h1>Eye of Providence</h1>
		<h3>Always Watching</h3>
		<form action="Logout" method="post">
		<p class="logoutP">
			Welcome <%=user.getName() %>!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" class="formbutton" value="Logout" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		</form>
	</div>
	</div>
	<div class="nav-wrapper-outside">
	<div class="nav pagewidth">
	<div class="nav-wrapper">
	<div class="nav">
		<nav class="clear">
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="live.jsp">Watch Live</a></li>
				<li><a href="record.jsp">Watch Recorded</a></li>
				<li><a href="configure.jsp">Configure</a></li>
			</ul>
		</nav>
	</div>
	</div>
	</div>
	</div>
</header>
<body>
	<div id="calendar" class="fc-calendar-container"></div>
</body>
<script>
$( '#calendar' ).calendario();
</script>
<footer>
<div class="footer-wrapper-outside">
	<div class="footer pagewidth">
		<div class="footer-wrapper">
			<div class="footer">
				<p>This webpage layout was created by Alexander Harris at Central Washington University.</p>
			</div>
		</div>
	</div>	
</div>
</footer>
</html>