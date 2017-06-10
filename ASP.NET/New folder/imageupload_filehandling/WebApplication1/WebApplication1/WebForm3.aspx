<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50px;
        }
     
    </style>
    </head>
<body>
    <form id="form1" runat="server">       
        <%   
            int col = 4;                       
            for (int j = 2; j < 8; j++)
            {
                if (col == 4)
                {
                    Response.Write("<br/>");
                    col = 1;
                }
                else
                {
                    col++;                   
                }         
             %>                  
        <table style="width: 20%; border-collapse:collapse; display:inline-block ; margin-bottom:20px; border-color:black;text-align:center; vertical-align:central" border="1" >
           <% for (int i = 0; i <= 10; i++)
              {
                  
              %>
            
             <tr>
                <td class="auto-style1">2</td>
                <td class="auto-style1">X</td>
                <td class="auto-style1">1</td>
                <td class="auto-style1">=</td>
                <td class="auto-style1">2</td>
            </tr>
            <%
            } %>
        </table>       
              </div>                         
    <% 
               
         }
         %>               
    
    </form>
</body>
</html>
