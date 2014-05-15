

















































































$(function ()
{
	$("#whatButton").click( function ()
	{
		$("#iWhat").slideToggle("slow");
	});
			
	$("#whereButton").click( function ()
	{
		$("#iWhere").slideToggle("slow");
	});
			
	$("#charButton").click( function ()
	{
		$("#iChar").slideToggle("slow");
	});
			
	$("#videoButton").click( function ()
	{
		$("#iVid").slideToggle("slow");
	});
			
	$("#historyButton").click( function ()
	{
		$("#iHistory").slideToggle("slow");
	});
					
	$("#architectureButton").click( function ()
	{
		$("#iArchitecture").slideToggle("slow");
	});
					
			
	$(document).keyup(function(event) 
	{
		var keycode = (event.keyCode ? event.keyCode : event.which);
			  
		$("#whatButton").blur();
		$("#whereButton").blur();
		$("#charButton").blur();
		$("#videoButton").blur();
		$("#historyButton").blur();
		$("#architectureButton").blur();
		
		if (keycode == '13') 
		{
			$("#whatButton").click();
			$("#whereButton").click();
			$("#charButton").click();
			$("#videoButton").click();
			$("#historyButton").click();
			$("#architectureButton").click();
		}
	});
});