<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cache2.aspx.cs" Inherits="cache2" %>
<%@ OutputCache Duration="60" VaryByParam="DropDownList1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Select Name:
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>samsung</asp:ListItem>
            <asp:ListItem>Nokia</asp:ListItem>
            <asp:ListItem>Sony</asp:ListItem>
        </asp:DropDownList>
        <br />
    
        <asp:GridView ID="GridView1" runat="server">
        
        </asp:GridView>    
        <br />
        Server Side Time:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Client Side Time:<script> document.write(Date());
                         </script><br />
        <br />
    
    </div>
    </form>
</body>
</html>
