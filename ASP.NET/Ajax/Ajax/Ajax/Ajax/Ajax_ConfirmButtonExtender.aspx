<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax_ConfirmButtonExtender.aspx.cs" Inherits="Ajax.Ajax_ConfirmButtonExtender" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="">
        </asp:Label>
        <br /><br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnConfirm" runat="server" Text="Show Server Time" OnClick="btnConfirm_Click" />
            <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server"
                TargetControlID="btnConfirm"
                ConfirmText="Do you want to see current server time ?"
                ConfirmOnFormSubmit="false">
                </asp:ConfirmButtonExtender>
            <br /><br />
            <asp:Label ID="lblMessage" runat="server">
            </asp:Label><br />
        </ContentTemplate>
        </asp:UpdatePanel>
	</div>
    </form>
</body>
</html>
