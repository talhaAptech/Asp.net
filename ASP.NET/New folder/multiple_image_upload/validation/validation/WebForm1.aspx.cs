using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        static List<Class1> obj = new List<Class1>();
        protected void Button1_Click(object sender, EventArgs e)
        {
            
             HttpFileCollection imgcoll = Request.Files;
            
            for (int i = 0; i < imgcoll.Count; i++)
            {
                //HttpPostedFile upload_image = imgcoll[i];
                Response.Write(imgcoll[i].FileName);
                imgcoll[i].SaveAs(Server.MapPath("~/images/" + imgcoll[i].FileName));
                error.Text = (i+1)+" File uploaded";
                obj.Add(new Class1() { image_name = imgcoll[i].FileName});                
            }

            DataList1.DataSource = obj;
            DataList1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            foreach (Class1 aPart in obj)
            {
                Response.Write(aPart.image_name + "<br/>");
            }

            File.Delete(MapPath("~/images/" + e.CommandArgument.ToString()));
           // Response.Write(obj[0].image_name);

            obj.RemoveAll(i => i.image_name == e.CommandArgument.ToString());
          
           
            DataList1.DataSource = obj;
             DataList1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            obj.Add(new Class1() { image_name = "testing"});
            obj.Add(new Class1() { image_name = "outing" });

            foreach (Class1 aPart in obj)
            {
                Response.Write(aPart.image_name + "<br/>");
            }

            Response.Write("<br/> After remove <br/>");

           //obj.Remove(new Class1() { image_name = "testing" });
            //obj.RemoveAll(i => i.image_name == "testing");
            //obj.RemoveAll(new Class1(){ image_name = "testing" });

            var item = obj.First(x => x.image_name == "outing");           
            
            obj.Remove(item);
            foreach (Class1 aPart in obj)
            {
                Response.Write(aPart.image_name + "<br/>");
            }

        }
       
       
    }
}