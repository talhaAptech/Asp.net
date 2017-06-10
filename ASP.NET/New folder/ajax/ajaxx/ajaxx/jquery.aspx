<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jquery.aspx.cs" Inherits="ajaxx.jquery" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
 </script>
     <script>
         $(document).ready(function()
         {
             $("#Button1").on("click", function ()
             {
                
             });             
          });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>