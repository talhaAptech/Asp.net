<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Repeater ID="ProductList" runat="server">
    <ItemTemplate>
        <%# Eval("Name") %> for only <%# Eval("Price", "{0:c}") %>
        <br />
        <a href='<%# Eval("ProductID", "details.asp?id={0}") %>'>See Details</a>
        <br />
        <br />
    </ItemTemplate>
</asp:Repeater>
    </div>
    </form>
</body>
</html>