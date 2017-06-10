using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace myproject
{
    public partial class signup2 : System.Web.UI.Page
    {
        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["functtionalarea"] = ddlfunctionalarea.SelectedItem.ToString();
            Session["currentsalary"] = ddlcurrentsalary.SelectedItem.ToString();
            Session["workexperience"] = ddlworkexperince.SelectedItem.ToString();
            Session["desiredsalary"] = dlldesiredsalary.SelectedItem.ToString();
            Session["careerlevel"] = ddlcareerlevel.SelectedItem.ToString();
            Session["jobsort"] = ddljobsort.SelectedItem.ToString();
            Session["workcity"] = ddlcitywork.SelectedItem.ToString();
//method calling for file uploaad..................................................................
            fileuploadmethod(FileUpload1, Session["userid"].ToString());
//...................................................................................................
//database code......................................................................................


            
            
            
            
            
            
            
            
            
            
            
            
 
           


 //database code......................................................................................








        }//btn event end..............................................................................





        public string fileuploadmethod(FileUpload fileupload1, string id)
        {
            string s = "";
            // If the user has selected a file
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".doc" && fileExtension.ToLower() != ".docx" && fileExtension.ToLower() != ".rtf")
                {
                    //  lblMessage.ForeColor = System.Drawing.Color.Red;
                    s = "Only files with .doc and .docx extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                     s = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + id + FileUpload1.FileName));
                        s = "File uploaded successfully";
                    }
                }
            }
            else
            {
               
                s = "Please select a file";
            }

            return s;
        } //method end.///////


    }
}