<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Email_asp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
		<asp:Label ID="Label1" runat="server" Text="To : "></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="to_txt" runat="server" Width="200px"></asp:TextBox>
		<br /><br />
		<asp:Label ID="Label2" runat="server" Text="Subject :"></asp:Label>
		&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="subject_txt" runat="server" Width="200px"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label3" runat="server" Text="Message :"></asp:Label>
		<br />
		<asp:TextBox ID="message_txt" runat="server" Height="117px"
		TextMode="MultiLine" Width="279px"></asp:TextBox>
		<br />
		<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Button ID="Button1" runat="server" onclick="Button1_Click"
		Text="Send Mail" />
		<br />
		<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
	</div>
    </form>
</body>
</html>
