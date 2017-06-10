<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ajax.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--  Ajax button code start -->
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Ajax - Button" onclick="Button1_Click" />
        </ContentTemplate>
        </asp:UpdatePanel>
        <!--  Ajax button code end -->
        <br /><br />

        <!--  Non - Ajax button -->
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="Non - Ajax - Button" onclick="Button2_Click" />
        <!--  Non - Ajax button -->
    </div>
    </form>
</body>
</html>
