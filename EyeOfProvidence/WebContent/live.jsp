<%@page import="connect.User"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch Live Stream</title>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="js/home.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/styles.css" />
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
	<div class="pagewidth">
		<div class="pagewrap">
			<div class="page centeredText" id="welcomePage">
			<div class="welcomeDiv padded-divs rounded-corners rounded-borders clear">
				<h3>Watch Live Video Streams</h3>
				<br/>
				<p>This section would display any errors received by the system for different camera nodes. Below is where live stream footage can be viewed.</p>		
			</div>
				<div class="left-container">
					<div class='padded-divs rounded-corners rounded-borders clear'>
						<iframe width="357" height="293"
						src="//www.youtube.com/embed/dQw4w9WgXcQ?feature=player_detailpage">
						</iframe>
					</div>
				</div>
				<div class="right-container">
					<div class='padded-divs rounded-corners rounded-borders clear'>
						<iframe width="357" height="293"
						src="//www.youtube.com/embed/dQw4w9WgXcQ?feature=player_detailpage">
						</iframe>
					</div>
				</div>
				<div class="left-container">
					<div class='padded-divs rounded-corners rounded-borders clear'>
						<iframe width="357" height="293"
						src="//www.youtube.com/embed/dQw4w9WgXcQ?feature=player_detailpage">
						</iframe>
					</div>
				</div>
				<div class="right-container">
					<div class='padded-divs rounded-corners rounded-borders clear'>
						<iframe width="357" height="293"
						src="//www.youtube.com/embed/dQw4w9WgXcQ?feature=player_detailpage">
						</iframe>
					</div>
				</div>
				<div class="left-container">
					<div class='padded-divs rounded-corners rounded-borders clear'>
						<iframe width="357" height="293"
						src="//www.youtube.com/embed/dQw4w9WgXcQ?feature=player_detailpage">
						</iframe>
					</div>
				</div>
				<div class="right-container">
					<div class='padded-divs rounded-corners rounded-borders clear'>
						<iframe width="357" height="293"
						src="//www.youtube.com/embed/dQw4w9WgXcQ?feature=player_detailpage">
						</iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
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