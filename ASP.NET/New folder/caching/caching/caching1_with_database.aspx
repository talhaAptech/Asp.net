<%@ Page Language="C#" AutoEventWireup="true" CodeFile="caching1_with_database.aspx.cs" Inherits="caching1_with_database" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <br />
    </div>
    </form>
</body>
</html>
