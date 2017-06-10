<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup2.aspx.cs" Inherits="myproject.signup2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     
    <link rel="stylesheet" href="css/bootstrap.min.css" >
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




    <style>

        body
        {
           margin:0 auto;
           padding:0px;
        }
        #wrapper
        {
             background-image:url('photos/building6.jpg');
           background-repeat:no-repeat;           
           background-size: 1960px 960px;
          height:960px;
           

        }
        #form
        {
            margin:0 auto;
            width:auto;

        }

        #pannelid
        {
            height:800px;
        
  
        }
        #guideofsignup
        {


        }
        

        


        </style>




</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper" class="col-lg-12">
    
        






        <div id="wholepannel" class="panel panel-primary col-lg-12" >
      <div class="panel-heading" style="text-align:center;font-size:125%"> Registration Form</div>
      <div class="panel-body col-lg-12" id="pannelid" >

          <div id="form"> <%--form code--%>
       <fieldset>   
           <legend>Porfessional Information</legend>
       
           <div class="form-group">
      <label for="usr">Functional Area</label>
               <asp:DropDownList ID="ddlfunctionalarea" runat="server" Class="form-control"></asp:DropDownList>
   
                       </div>
    <div class="form-group">
      <label for="pwd">Current Salary:</label>
               <asp:DropDownList ID="ddlcurrentsalary" runat="server" Class="form-control"></asp:DropDownList>
   
         </div>
          
           <div class="form-group">
      <label for="pwd">Upload Most Recent Resume:</label>
              <asp:FileUpload ID="FileUpload1" runat="server" />

          </div>


           <div class="form-group">
      <label for="pwd">Work Experience:</label>
               <asp:DropDownList ID="ddlworkexperince" runat="server" Class="form-control"></asp:DropDownList>
              
          </div>

             <div class="form-group">
      <label for="pwd">Desired Salary:</label>
               <asp:DropDownList ID="dlldesiredsalary" runat="server" Class="form-control"></asp:DropDownList>
              
          </div>


             <div class="form-group">
      <label for="pwd">Career Level:</label>
               <asp:DropDownList ID="ddlcareerlevel" runat="server" Class="form-control"></asp:DropDownList>
              
          </div>


             <div class="form-group">
      <label for="pwd">What Sort of Job U want :</label>
               <asp:DropDownList ID="ddljobsort" runat="server" Class="form-control"></asp:DropDownList>
              
          </div>


             <div class="form-group">
      <label for="pwd">Which Area You want to work In :</label>
               <asp:DropDownList ID="ddlcitywork" runat="server" Class="form-control"></asp:DropDownList>
              
          </div>

           
                <div class="form-group">
      
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Button" OnClick="Button1_Click"  />
            
              
          </div>








           </fieldset>
            
       


          </div> <%--pannel content--%>
    


    </div>
    
    </div>  <%--form code--%>
        <div class="container">
        <div id="guideofsignup" class="jumbotron">

             <h1>Excellent opportunities for Job Seeker</h1>      
    <p>We are providing a platform for those persons who wanted to get a good job in a well recognize organization of their relative field.So what are you waiting for hurry up<b> Apply Now</b></p>

        </div>
            </div>


    </div> <%--wrapper end--%>
    </form>


    
<script type="text/javascript" src="js/jquery-3.1.1.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
<script>
    $(document).ready(function () {
        $("#wholepannel").mouseover(function () {
            $("#pannelid").show("slow");
        });
    });

    $(document).ready(function () {
        $("#wholepannel").mouseleave(function () {
            $("#pannelid").hide("slow");
        });
    });



    //2nd function
    $(document).ready(function () {
        $("#wholepannel").mouseover(function () {
            $("#guideofsignup").hide();
        });
    });

    $(document).ready(function () {
        $("#wholepannel").mouseleave(function () {
            $("#guideofsignup").show("slow");
        });
    });


</script>


</body>
</html>
