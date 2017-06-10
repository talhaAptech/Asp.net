<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuP.aspx.cs" Inherits="myproject.signuP" %>

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
           <legend>Log-In Information</legend>
       
           <div class="form-group">
      <label for="usr">Email Id</label>
               <asp:TextBox ID="userid" runat="server" Class="form-control"></asp:TextBox>
                </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <asp:TextBox ID="password" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>
    </div>
          <div class="form-group">
      <label for="pwd">Confirm Password:</label>
    <asp:TextBox ID="confirmpassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>
    </div>

           </fieldset>
            
        <fieldset>
     <legend> Personal Information</legend>
       
                 <div class="form-group">
      <label for="usr">Name:</label>
      <asp:TextBox ID="username" runat="server" Class="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">Contact:</label>
      <asp:TextBox ID="contact" runat="server" Class="form-control"></asp:TextBox>
    </div>
          <div class="form-group">
      <label for="pwd">Email ID:</label>
       <asp:TextBox ID="emailid" runat="server" Class="form-control"></asp:TextBox>
    </div>

  <div class="form-group">
      <label for="pwd">Address:</label>
      <asp:TextBox ID="address"  Columns="25" runat="server" CLASS="form-control" TextMode="MultiLine"  ></asp:TextBox>
          </div>




  <div class="form-group">
      <label for="pwd">Date Of Birth</label>
      <asp:DropDownList ID="ddlyear" runat="server" ></asp:DropDownList>
      
      <asp:DropDownList ID="ddlmonth" runat="server" OnSelectedIndexChanged="ddlmonth_SelectedIndexChanged" ></asp:DropDownList>
      
      <asp:DropDownList ID="ddldays" runat="server" ></asp:DropDownList>

          
        </div>


            <div class="form-group">
      <label for="pwd">Gender</label>

                <asp:RadioButton ID="Male" GroupName="gender" runat="server"  />Male
                <asp:RadioButton ID="Female" GroupName="gender" runat="server" />Female

        </div>


                   <div class="form-group">
                       <asp:Button ID="Button1" runat="server" Text="Button"  Class="btn btn-success" OnClick="Button1_Click"  OnClientClick="reutrn passwordmatchfunc()"/>
             
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


    //my function
    function passwordmatchfunc() {
        var ret = true;
        var x = document.getElementById("password").value;
        var y = document.getElementById("confirmpassword").value;

        if (x == y) {
            alert('password match..');

        }

        else {
            alert('password mismatch..');
            var ret = false;
        }

        return ret;

    }






</script>
</body>
</html>
