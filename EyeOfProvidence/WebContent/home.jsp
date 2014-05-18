<%@page import="connect.User"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eye of Providence</title>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="js/home.js" type="text/javascript"></script>
<link rel="stylesheet" href="styles.css" />
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
			<div class="page">
				<div class="welcomeDiv padded-divs rounded-corners rounded-borders clear">
					<h3>Example</h3>
					<br />
					<p>example example example example example example example example example example example example example example example example example example example example example</p>
				</div>
				<div id="homeLeftContainer" class="left-container">
					<div id="whatDiv" class="padded-divs rounded-corners clear">
						<form>
							<input type="button" id="whatButton" class="formbutton" value="Button1"></input>
						</form>
						<div id="iWhat" class="innerDiv">
							<br />
							<p>example example exampleexample example exampleexample example exampleexample example exampleexample example example
							example example exampleexample example exampleexample example exampleexample example exampleexample example example</p>
						</div>				
					</div>
					<div id="whereDiv" class="padded-divs rounded-corners clear">
						<form>
							<input type="button" id="whereButton" class="formbutton" value="Button2"></input>
						</form>
						<div id="iWhere" class="innerDiv">
							<br />
							<p>example example exampleexample example exampleexample example exampleexample example exampleexample example example
							example example exampleexample example exampleexample example exampleexample example exampleexample example example</p>
						</div>
					</div>
					<div id="historyDiv" class="padded-divs rounded-corners clear">
						<form>
							<input type="button" id="historyButton" class="formbutton" value="Button3"></input>
						</form>	
						<div id="iHistory"	class="innerDiv">
						<br />
							<p>example example exampleexample example exampleexample example exampleexample example exampleexample example example
							example example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example example</p>
						</div>
					</div>						
				</div>
				<div id="homeRightContainer" class="right-container">
					<div id="videoDiv" class="padded-divs rounded-corners clear">
						<form>
							<input type="button" id="videoButton" class="formbutton" value="Button4"></input>
						</form>	
						<div id="iVid" class="innerDiv">
						<br />
						<h2>Example Title</h2>
						<p>example example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example example
						example example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example example
						</p>
						</div>
				</div>	
				<div id="charsDiv" class="padded-divs rounded-corners clear">
					<form>
						<input type="button" id="charButton" class="formbutton" value="Button5"></input>
					</form>	
					<div id="iChar"	class="innerDiv">
						<br />
						<h2>Example Title</h2>
						<p>example example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example example
						example example exampleexample example exampleexample example exampleexample example exampleexample example exampleexample example example
						</p>
						</div>
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
				<p>This webpage layout was created by Alexander Harris during Web Technologies I (CS 250), Winter quarter 2014 at Central Washington University.</p>
			</div>
		</div>
	</div>	
</div>
</footer>
</html>