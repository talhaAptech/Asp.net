<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="griddd.aspx.cs" Inherits="WebApplication2.griddd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" DataKeyNames="instructorId" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="instructorId" HeaderText="ID" />
                <asp:BoundField DataField="LastName" HeaderText="Name" />

                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />

            </Columns>
        </asp:GridView>                                 
    </div>
    </form>
</body>
</html>
