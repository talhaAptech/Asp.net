<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax_with_code.aspx.cs" Inherits="ajaxx.ajax_with_code" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
 </script>
    <script>
       
        $(document).ready(function ()
        {

        $("#myButton").on("click", function (e) {
       /* The event.preventDefault() method stops the default action of an element from happening.
            For example: Prevent a submit button from submitting a form
            */
            e.preventDefault();
            var aData = [];
            aData[0] = $("#ddlSelectYear").val();           
            $("#contentHolder").empty();
            var jsonData = JSON.stringify({ aData: aData });
            $.ajax({
                type: "POST",
                //getListOfCars is my webmethod   
                url: "WebService1.asmx/getListOfCars",
                data: jsonData,
                contentType: "application/json; charset=utf-8",
                dataType: "json", // dataType is json format
                success: OnSuccess,
                error: OnErrorCall
            });

            function OnSuccess(response) {
                console.log(response.d)
                document.write(response.d[0]["carRating"]);
               /* var items = response.d;
                var fragment = "<ul>"
                $.each(items, function (index, val) {

                    var carName = val.carName;
                    var carRating = val.carRating;
                    var carYear = val.carYear;
                    fragment += "<li> " + carName + " :: " + carRating + " - " + carYear + "</li>";
                });
                $("#contentHolder").append(fragment);*/
            }

            function OnErrorCall(response) {
               
               
            }
        });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <select id="ddlSelectYear">
    <option>1</option>
    <option>2</option>
  </select> 
  <button id="myButton">Get Car Lists</button> 
  <div id="contentHolder"></div>
</div> 
    </form>
</body>
</html>
