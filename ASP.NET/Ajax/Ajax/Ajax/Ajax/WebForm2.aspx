<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Ajax.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:ScriptManager ID="ScriptManager1" runat="server">
		</asp:ScriptManager>
		<asp:UpdateProgress ID="UpdateProgress1" runat="server">
			 <ProgressTemplate>
				<img alt="ajax-progress" src="Gif/loader.gif"></img>
			</ProgressTemplate>
	   </asp:UpdateProgress>
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<ContentTemplate>
			   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
			   <br />
			   <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
			</ContentTemplate>
		</asp:UpdatePanel>
	</div>
    </form>
</body>
</html>
