<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax_AsyncFileUpload_Control.aspx.cs" Inherits="Ajax.Ajax_AsyncFileUpload_Control" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Untitled Page</title>
	<script type="text/javascript">
	    function clientMessage()
	    {
	        document.getElementById("Label1").innerHTML = "File Uploaded Completed ";
	    }
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:ScriptManager ID="sm1" runat="server" />
		<cc1:AsyncFileUpload ID="AsyncFileUpload1" runat="server"
		UploadingBackColor="#82CAFA" CompleteBackColor = "#FFFFFF"
        OnUploadedComplete="doUpload" OnClientUploadComplete="clientMessage" ThrobberID="Throbber"/>
		<asp:Image ID="Throbber" runat="server"
		ImageUrl = "Gif/RHIGF.gif" />
		<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		<br />
	</div>
    </form>
</body>
</html>
