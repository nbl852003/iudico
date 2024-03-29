<%-- Copyright (c) Microsoft Corporation. All rights reserved. --%>
<%@ Assembly Name="IUDICO.TestingSystem" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hidden.aspx.cs" Inherits="Microsoft.LearningComponents.Frameset.Frameset_Hidden" ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<!-- MICROSOFT PROVIDES SAMPLE CODE "AS IS" AND WITH ALL FAULTS, AND WITHOUT ANY WARRANTY WHATSOEVER.  
     MICROSOFT EXPRESSLY DISCLAIMS ALL WARRANTIES WITH RESPECT TO THE SOURCE CODE, INCLUDING BUT NOT 
     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THERE IS 
     NO WARRANTY OF TITLE OR NONINFRINGEMENT FOR THE SOURCE CODE. -->
     
<head runat="server">
    <script type="text/javascript" src="./Include/FramesetMgr.js"></script>
	
<script type="text/javascript">

function OnLoad(e)
{
    // Get frameset manager
    frameMgr = API_GetFramesetManager();
    
    // Set data on frameset manager
    <%  WriteFrameMgrInit();  %>
     
    // Register with framemanager that loading is complete
	frameMgr.RegisterFrameLoad(HIDDEN_FRAME); 	
}

</script>
</head>
<body onload="OnLoad(event)">
    <form id="form1" runat="server">
    <div>
    <% WriteHiddenControls(); %>
    </div>
    </form>
</body>
</html>
