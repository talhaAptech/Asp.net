using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ajax
{
    public partial class Ajax_AsyncFileUpload_Control : System.Web.UI.Page
    {
        protected void doUpload(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            System.Threading.Thread.Sleep(4000);
            if (AsyncFileUpload1.HasFile)
            {
                AsyncFileUpload1.SaveAs(Server.MapPath("~/Upload/"+AsyncFileUpload1.FileName));
            }
        }
    }
}