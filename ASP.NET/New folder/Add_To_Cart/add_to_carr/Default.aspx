<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
    <div>
    
        <asp:Button ID="Button1" runat="server"  Text="Add To Cart" OnClick="Button1_Click" />
    
       
        <asp:GridView ID="GridView1" DataKeyNames="id" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="Id" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" Width="50px" runat="server" AutoPostBack="true" OnTextChanged="txtQty_TextChanged" Text='<%# Eval("Quantity") %>' ToolTip="Press Enter after Quanity Add"></asp:TextBox>                        
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Total Price">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Total_Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
 
        <br />
    


      

    </div>
    </form>
</body>
</html>
