<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="json_n_ajax.aspx.cs" Inherits="ajaxx.json_n_ajax" %>

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

             var jsonData = JSON.stringify({ aData: aData });            
             $.ajax({
                 type: "POST",
                 //getListOfCars is my webmethod   
                 url: "WebService1.asmx/getdata",
                 data: jsonData,
                 contentType: "application/json; charset=utf-8",
                 dataType: "json", // dataType is json format
                 success: sucess,
                 error: erro
             })

             function sucess(response) {                
                 alert(response.d);
             }

             function erro(response) {


             }

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
