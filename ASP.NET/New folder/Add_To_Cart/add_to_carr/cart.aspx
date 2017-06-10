<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="1" OnClick="btn_data" />
    
        <br />
    
        <asp:Button ID="Button2" runat="server" Text="2" OnClick="btn_data" />
    
        <br />
    
        <asp:Button ID="Button3" runat="server" Text="3" OnClick="btn_data" />
    
        <br />
    
        <asp:Button ID="Button4" runat="server" Text="4" OnClick="btn_data" />
    
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
           
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>