<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>


<%
    var totalMessage = "";
   if (IsPostBack)
    {
        var num1 = Request["text1"];
        var num2 = Request["text2"];

        Response.Write(Request.RequestType);
        if (Request.RequestType=="GET")
        if (!String.IsNullOrEmpty(num1))
        {
            var total = Convert.ToInt16(num1) + Convert.ToInt16(num2);
            totalMessage = "Total = " + total;
        }            
    }  
                  
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="get">
    <div>
           <p><label for="text1">First Number:</label><br>
<input type="text" name="text1" /></p>
<p><label for="text2">Second Number:</label><br>
<input type="text" name="text2" /></p>
<p><Input type="submit" value=" Add "  /></p>
    </div>
    </form>
    <p><% Response.Write(totalMessage); %></p>
</body>
</html>
