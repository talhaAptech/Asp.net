<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50px;
        }
     
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div style="height: 249px; width: 734px;">

    <table style="height: 58px; width: 631px">
        <tr>
        <% 
            int col = 3;                      
            for (int j = 2; j < 8; j++)
            {
                if (col == 3)
                {
                    Response.Write("<tr>");
                    col = 1;
                }
                else
                    col++;
             %>        
            <td>
        <table style="width: 98%; height: 40px;border-collapse:collapse; border-color:blue; text-align:center; vertical-align:central" border="1" >
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
                </td>            
    <%
                if (col == 3)
                    Response.Write("</tr>");
    }
         %>
        
        </table>
    </div>
    </form>
</body>
</html>
