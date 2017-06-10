using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Export_ASP.NET_to_Excel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.AddHeader("content-disposition", "attachment;filename=gridviewdata.xls");
                Response.Charset = "";
                Response.ContentType = "application/vnd.ms-excel";
                StringWriter sWriter = new StringWriter();
                HtmlTextWriter hWriter = new HtmlTextWriter(sWriter);
                GridView1.RenderControl(hWriter);
                Response.Output.Write(sWriter.ToString());
                Response.Flush();
                Response.End();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
        }
    }
}