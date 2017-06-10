<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="validation.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 302px;
        }
        .auto-style3 {
            width: 151px;
            height: 27px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            width: 302px;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 68%; height: 170px;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Zip Code:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Topics</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="119px">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ControlToValidate="DropDownList1" InitialValue="Select" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="192px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ControlToValidate="RadioButtonList1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Age</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server">0</asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RangeValidator ID="RangeValidator1" ControlToValidate="TextBox4" runat="server" ErrorMessage="Age must be in between 18 to 30" MaximumValue="30" MinimumValue="18" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Amount</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server">0</asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Amount must be greater then 1000" ControlToValidate="TextBox5" Operator="GreaterThan" Type="Integer" ValueToCompare="1000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Number</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server">0</asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:CustomValidator ID="CustomValidator1" ControlToValidate="TextBox7" runat="server" ErrorMessage="Number must be even" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1"  DisplayMode="BulletList" HeaderText="Errors:" runat="server" />
                <%--<asp:ValidationSummary ID="ValidationSummary2"  ShowMessageBox="true" DisplayMode="BulletList" HeaderText="Errors:" runat="server" />--%>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
