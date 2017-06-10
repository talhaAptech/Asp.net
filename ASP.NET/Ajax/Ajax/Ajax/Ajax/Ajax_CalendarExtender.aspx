<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax_CalendarExtender.aspx.cs" Inherits="Ajax.Ajax_CalendarExtender" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
        <asp:Label ID="Label1" runat="server" Text="Click Select Date Button to view Calendar"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
	    <asp:Button ID="Button1" runat="server" Text="Select Date" />
        <asp:CalendarExtender ID="CalendarExtender1" runat="server"
        TargetControlID="TextBox1" PopupButtonID="Button1"/>
	    <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Click inside textbox to view Calendar"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender2" runat="server"
        TargetControlID="TextBox2" PopupButtonID="TextBox2"/>	   
	</div>
    </form>
</body>
</html>
