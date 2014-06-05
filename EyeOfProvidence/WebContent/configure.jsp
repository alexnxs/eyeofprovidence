<%@page import="connect.User"
import = "java.io.*"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Configure</title>
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
				<div id="options" class="welcomeDiv padded-divs rounded-corners rounded-borders clear">
					<h3>Configuration Options</h3>
					<br/>
					<form>	
					<ul>
					<li><input type="button" id="changePassword" class="formbutton" value="Change Password" /></li>
					<li><input type="button" id="addCam" class="formbutton" value="Add Camera" /></li>
					</ul>
					</form>
				</div>
			</div>
			<div id="contentPage" class="page">
			
			<div id="changePassDiv" class='contentDiv innerDiv padded-divs rounded-corners rounded-borders clear'>
				<div class="left-container">
					<div class="left-div">
						<h3>Change Password</h3><br />
						<form>
						<p class="centeredText">
							<label>Old Password: </label><input type="text" name="oldPassword" id="oldPassword" size=50/><br /><br />
							<label>New Password: </label><input type="text" name="newPassword" id="newPassword" size=50/><br /><br />
							<label>Confirm New Password: </label><input type="text" name="confirmPassword" id="confirmPassword" size=50/><br /><br />
						</p>
						</form>
					</div>
				</div>
				<div class="right-container">
					<div class="right-div">
					<form>
						<br><br><br><br><br><br><br><br><br><br><br>
						<input type="button" id="changePassOK" class="formbutton" value="OK" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" id="changePassCancel" class="formbutton" value="Cancel" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</form>
					</div>
				</div>
			</div>
			
			<div id="addCamDiv" class='contentDiv innerDiv padded-divs rounded-corners rounded-borders clear'>
				<div class="left-container">
					<div class="left-div">
						<h3>Add Camera</h3><br>
						<form id="addCamForm">
						<p class="centeredText">
							<label>Name: </label><input type="text" name="camName" id="camName" size=50/><br /><br />
							<label>IP: </label><input type="text" name="camIP" id="camIP" size=50/><br /><br />
							<label>Port: </label><input type="text" name="camPort" id="camPort" size=50/><br /><br />
							<label>Description: </label><input type="text" name="camDesc" id="camDesc" size=50/><br /><br />
							<label>Protocol: </label><br>
								<input type="radio" name="camProto" id="camProtocolRTSP" value="rtsp" checked/><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RTSP</label><br /><br />
							<label>Type: </label><br>
								<input type="radio" name="camType" id="camTypeRGB" value="rgb" checked/><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RGB</label><br />
								<input type="radio" name="camType" id="camTypeDepth" value="depth" /><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Depth</label><br />
						</p>
						</form>
					</div>
				</div>
				<div class="right-container">
					<div class="right-div">
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
						<form>
							<input type="button" id="addCamOK" class="formbutton" value="OK" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" id="addCamCancel" class="formbutton" value="Cancel" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</form>
					</div>
				</div>
			</div>
			
								<%
				File uPath = (File) request.getSession().getAttribute("File");
				
				File[] files = uPath.listFiles();
       	 		for(int i = 0 ; i < files.length ; i++)
       	 		{
            		String name = files[i].getName();
            		String paths = files[i].getPath();
            		
            		
				%>
								<div class="contentDiv padded-divs rounded-corners rounded-borders clear">
									<div class="left-container">
										<div class="left-div">
											<h3><%=name%></h3>
											<br />
											<p>
											<label class=cName>Name: Test Camera 1</label><br />
											IP: 111.111.111.111<br/>
											Port:1234<br/>
											Description: I'm watching you.
											</p>
										</div>
									</div>
								
									<div class="right-container">
										<div class="right-div">
										<form><br><br><br><br><br>
											<input type="button" class="removeCam formbutton" value="Remove Camera" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</form>
										</div>
									</div>
								</div>
											
     			<%
        		}
				%>
			</div>
		</div>
	</div>
</body>
<script>
$("document").ready(function(){
	$("#changePassword").click(function(){
		$("#changePassDiv").slideToggle("slow").css("display", "inline-block");;
		$("#changePassword").prop('disabled', true).trigger("change");
	});	
	
	$("#addCam").click(function(){
		$("#addCamDiv").slideToggle("slow").css("display", "inline-block");;
		$("#addCam").prop('disabled', true).trigger("change");
	});	
	
	$("#changePassCancel").click(function(){
		$("#changePassDiv").slideToggle("slow");
		$("#changePassword").prop('disabled', false).trigger("change");
	});
	
	$("#addCamCancel").click(function(){
		$("#addCamDiv").slideToggle("slow");
		$("#addCam").prop('disabled', false).trigger("change");
	});
	
	$("#changePassOK").click(function(){
		$("#changePassDiv").slideToggle("slow");
		$("#changePassword").prop('disabled', false).trigger("change");
	});
	
	$("#addCamOK").click(function(){
		var addCamera = new Array();
		
		var name = $("#camName").val();
		var ip = $("#camIP").val();
		var port = $("#camPort").val();
		var desc = $("#camDesc").val();
		var proto = $("input:radio[name=camProto]:checked", "#addCamForm" ).val();
		var type = $("input:radio[name=camType]:checked", "#addCamForm").val();
		
		addCamera.push(name, ip, port, desc, proto, type);
		
		$("#addCamDiv").slideToggle("slow");
		$('#addCamForm').trigger("reset");
		$("#addCam").prop('disabled', false).trigger("change");
		location.reload();
		$.ajax({
			url:"ConfigurationServlet",
			type:"GET",
			dataType:"json",
			data: {addCamera:addCamera},
			success:function(data)
			{
			},
		});
		location.reload();
	});
	
	$(".removeCam").click(function(){
		var removeCamera = new Array();
		
		$.ajax({
			url:"ConfigurationServlet",
			type:"GET",
			dataType:"json",
			data: {removeCamera:removeCamera},
			success:function(data)
			{
			},
		});
		
		
		$(this).closest(".contentDiv").remove();
		
		});
});
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