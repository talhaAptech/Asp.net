
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FIle_upload.aspx.cs" Inherits="WebApplication1.FIle_upload" %>

<%
  
    if (FileUploadControl.HasFile)
    {
        try
        {
            string filename = System.IO.Path.GetFileName(FileUploadControl.FileName);
            FileUploadControl.SaveAs(Server.MapPath("~/image") + filename);
        
            StatusLabel.Text = "Upload status: File uploaded!";
        }
        catch (Exception ex)
        {
           
            StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
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
    <asp:FileUpload id="FileUploadControl" runat="server" />
    <asp:Button runat="server" id="UploadButton" text="Upload" />
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
     
</form>
</body>
</html>
