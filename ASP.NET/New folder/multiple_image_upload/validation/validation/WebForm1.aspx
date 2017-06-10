<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .imaage_div 
        {
            width:100px;
            height:100px;
            position:relative;            
        }
        .delete 
        {
            position:absolute;
            top:0;
            right:0;
        }
        .upload_image 
        {
             width:auto;
            height:auto;
           
            float:right;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" /> 
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" Width="153px" OnClick="Button1_Click" />

        <br />
        <asp:Label ID="error" runat="server" Text="Label"></asp:Label>

       
    </div>
        
         <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        
             <ItemTemplate>
        <div class="upload_image">
        <div class="imaage_div">
            <img src='images/<%#Eval("image_name") %>' width="100px" height="100px"/>
            <div class="delete">            
                <asp:ImageButton ID="ImageButton1" runat="server" style=" height: 20px; width: 20px" ImageUrl="~/images/Icon_delete.png" CommandArgument='<%# Eval("image_name") %>' OnCommand="ImageButton1_Command" />
                </div>
        </div>    
    </div>
                 </ItemTemplate>
             </asp:DataList>        
        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Delete" />
        <br />
    </form>
</body>
</html>
