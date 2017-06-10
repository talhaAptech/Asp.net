<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication22.WebForm1" %>
<!--<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>-->
<%@ Register TagPrefix="cc1" Namespace="GoogleReCaptcha" Assembly="GoogleReCaptcha" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial">
    <h3>User Registration</h3>
    <table style="border: 1px solid black">
        <tr>
            <td>
                <b>Name </b>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="230px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <b>Email </b>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="230px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <b>Password </b>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server"
                    PublicKey="6LfVDgMTAAAAAJnH9GV0i7r_Pl3FfC_hyfh2Cgnq"
                    PrivateKey="6LfVDgMTAAAAAPfTlH1n7z72CvS46c2C_qkTmFsZ" />
            </td>
            <%--<cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" PublicKey="6LeOVQITAAAAABSAVaUC7h_O9xCWapVbOXYH2fJG" PrivateKey="6LeOVQITAAAAABwoLc1SQ3mP_HdnjJsy_dq9V25L" />--%>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Register"
                            OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</div>
    
    </form>
</body>
</html>
