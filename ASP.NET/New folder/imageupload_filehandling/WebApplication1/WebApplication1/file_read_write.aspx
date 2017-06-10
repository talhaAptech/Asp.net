<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="file_read_write.aspx.cs" Inherits="WebApplication1.file_read_write" %>


<%
  var result = "";
  if (IsPostBack)
  {

      //write data
     /* var userData = "ahmed" + "03335468565" + Environment.NewLine;
      var dataFile = Server.MapPath("~/image/data.txt");
      System.IO.File.WriteAllText(@dataFile, userData);
      result = "Information saved.";
      */
      
      //append data
     /* var userData = "ahmed" + "03335468565" + Environment.NewLine;
      var dataFile = Server.MapPath("~/image/data1.txt");
      System.IO.File.AppendAllText(@dataFile, userData);
      result = "Information saved.";*/
      
      
      
      //read data

    /*  //Array userData = null;
      string[] userData=null;
      //char[] delimiterChar = { ',' };

      var dataFile = Server.MapPath("~/image/data1.txt");

      if (System.IO.File.Exists(dataFile))
      {
          userData = System.IO.File.ReadAllLines(dataFile);
          if (userData == null)
          {
              // Empty file.
              result = "The file is empty.";
          }
      }
      else
      {
          // File does not exist.
          result = "The file does not exist.";
      }


      if (result == "")
      {
          foreach (string dataLine in userData)
          {
              Response.Write(dataLine+"<br/>");
                
          }
      }*/
      
      
      //

      var dataFile = Server.MapPath("~/image/data1.txt");

      if (System.IO.File.Exists(dataFile))
          {
              Response.Write("tes");
              System.IO.File.Delete(dataFile);

          }
      
  
  
  
  
  
  
  }
     %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Submit1" type="submit" value="write" />         
    </div>
    </form>
</body>
</html>
