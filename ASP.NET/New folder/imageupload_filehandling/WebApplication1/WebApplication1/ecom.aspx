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
            
            if(IsPostBack)
            {
                Response.Write(Request["img_name"]);
            }
            
            
            string[] filesindirectory = System.IO.Directory.GetFiles(Server.MapPath("/image"));
           
            //Response.Write(System.IO.Path.GetFileNameWithoutExtension(filesindirectory[0]));
           // Response.Write(Server.MapPath("~/"));     
               
           // Response.Write(filesindirectory.Count().ToString());

            int col = 3;
            for (int j = 0; j < filesindirectory.Count(); j++)
            {
                if (col == 3)
                {
                    Response.Write("<br/>");
                    col = 1;
                }
                else
                {
                    col++;                   
                }

                string image_path = "image/" + System.IO.Path.GetFileName(filesindirectory[j]);      
             %>    
                      
        <table style="width: 250px; border-collapse:collapse; display:inline-block ; margin-bottom:20px; border-color:black;" border="1" >
         
             <tr>
                <td>
                   <%-- <img alt="" src="/image/ab.jpg" width="200" height="200" />--%>

                   
                    <img alt="" src="<% Response.Write(image_path);%>" width="200" height="200"/>
                     
                   
                </td>

            </tr>  
            <tr>
                    <td>
                         <form method="get" action="ecom.aspx"> 
                        <input id="Submit1" type="submit" value="submit" name="testin" />
                              <input id="Hidden1" type="hidden" name="img_name" value="<% Response.Write(image_path); %>"/>
                             </form>  

                    </td>

            </tr>  
                      
        </table>  
                
                                     
    <%                
         }
         %>               
    
    </form>
</body>
</html>
