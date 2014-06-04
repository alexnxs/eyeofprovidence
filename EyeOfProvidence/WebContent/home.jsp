<%@page import="connect.User"
import = "java.io.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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
			<div class="page">
				<div class="welcomeDiv padded-divs rounded-corners rounded-borders clear">
					<h3>Welcome <%=user.getName() %>!</h3>
					<br />
					<p>This is the user's home page. This page will overview information of the camera nodes in the user's system.</p>
				</div>
				<%
				File uPath = (File) request.getSession().getAttribute("File");
				
				File[] files = uPath.listFiles();
       	 		for(int i = 0 ; i < files.length ; i++)
       	 		{
            		String name = files[i].getName();
            		String paths = files[i].getPath();
            		
            		
				%>
								<div class="welcomeDiv padded-divs rounded-corners rounded-borders clear">
								<h3><%=name%></h3>
								<br />
								<p>
								Name: Test Camera 1<br />
								IP: 111.111.111.111<br/>
								Port:1234<br/>
								Description: I'm watching you.
								</p>
								</div>			
     			<%
        		}
				%>
				
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