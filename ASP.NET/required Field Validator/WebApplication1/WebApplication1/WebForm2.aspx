<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
    $(document).ready(function ()
    {
        $("#calbtn").click(function ()
        {
            $("#Calendar1").toggle();
    });
});
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
        <td>
            <b>Age</b>
        </td>
        <td>
            :<asp:TextBox ID="txtAge" runat="server" Width="150px">
                </asp:TextBox>
            <asp:RangeValidator ID="RangeValidatorAge" runat="server" 
                ErrorMessage="Age must be between 1 & 100"
                MinimumValue="1" MaximumValue="100"
                ControlToValidate="txtAge" Type="Integer" 
                ForeColor="Red" Display="Dynamic">
            </asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" 
            runat="server" ErrorMessage="Age is required" 
            ControlToValidate="txtAge" ForeColor="Red"
            Display="Dynamic" >
            </asp:RequiredFieldValidator>
        </td>
    </tr>


        
    <tr>
        <td>
            <b>Date Available</b>
        </td>
        <td>
            :<asp:TextBox ID="txtDateAvailable" runat="server" Width="150px">
            </asp:TextBox>
            <asp:RangeValidator ID="RangeValidatorDateAvailable" runat="server" 
                ErrorMessage="Date must be between 04/01/2017 & 4/30/2017"
                MinimumValue="4/1/2017" MaximumValue="4/30/2017"
                ControlToValidate="txtDateAvailable" Type="Date" 
                ForeColor="Red">
            </asp:RangeValidator>
        </td>
    </tr>
    <tr>
       
    </tr>
        <tr>
            <td> 
            <asp:Button ID="btnSave" runat="server" Text="Save" Width="100px" 
                onclick="btnSave_Click" />
        </td>
        </tr>
    <tr>

       
        <td colspan="2">
            <asp:Label ID="lblStatus" runat="server" Font-Bold="true">
            </asp:Label>
        </td>
    </tr>
       
          
</table> 
          <input type="button"  id="calbtn"/>
           
            <asp:Calendar ID="Calendar1" Style="display:none;" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
              
      

    </div>
    </form>
</body>
</html>
