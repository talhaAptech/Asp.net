<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="json.aspx.cs" Inherits="ajaxx.json" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
 </script>
     <script>
         $(document).ready(function () {

             var aData = [];
             aData[0] = "ahmed";
             aData[1] = "ali";

             var jsonData = JSON.stringify({aData:aData});
             alert(jsonData);

             var student = [
            { 0:"ali"},
            { 1:"ahmed"},
            { 2:"asim"}
             ];

             alert(student[0][0]);
         });
                
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
