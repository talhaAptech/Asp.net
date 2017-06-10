<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="C_control.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="115px"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/calendar.jpg" onclick="ImageButton1_Click" />
    <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender" 
        onselectionchanged="Calendar1_SelectionChanged" Height="157px" Width="182px"></asp:Calendar> 
    </div>
    </form>
</body>
</html>
