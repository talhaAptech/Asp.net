﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtEmail" runat="server" Width="150px">
</asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" 
ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email" ForeColor="Red"></asp:RegularExpressionValidator> 
    </div>
    </form>
</body>
</html>
