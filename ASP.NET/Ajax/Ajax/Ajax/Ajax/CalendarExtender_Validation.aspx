<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarExtender_Validation.aspx.cs" Inherits="Ajax.CalendarExtender_Validation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
    <script type="text/javascript">
        function verifyDate(sender, args)
        {
            var d = new Date();
            d.setDate(d.getDate() - 1);
            if (sender._selectedDate < d)
            {
                alert("Date should be Today or Grater than Today");
                sender._textbox.set_Value('')
            }
        }
    </script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
	    <asp:Button ID="Button1" runat="server" Text="Select Date" />
        <asp:CalendarExtender ID="CalendarExtender1" runat="server"
        TargetControlID="TextBox1" PopupButtonID="Button1"
        OnClientDateSelectionChanged="verifyDate" />
	</div>
	</form>
</body>
</html>
</html>
