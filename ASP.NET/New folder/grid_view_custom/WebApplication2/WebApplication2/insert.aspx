<%@ Page Language="C#" EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="WebApplication2.insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Select" OnClick="Button2_Click" />
        <br />
        <asp:GridView ID="GridView1" DataKeyNames="id" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="id" Visible="false" HeaderText="id" SortExpression="id" ReadOnly="true"/>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                  <asp:CommandField ShowEditButton="true" />
        <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>

        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:crudConnectionString %>" SelectCommand="SELECT * FROM [info]" DeleteCommand="delete from [info] where [id]=@id" UpdateCommand="update [info] set [name]=@name where id=@id"></asp:SqlDataSource>--%>
        <br />
    </div>
    </form>
</body>
</html>
