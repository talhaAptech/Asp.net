using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        byte[] encoded = System.Text.Encoding.UTF8.GetBytes("123");
        ///return Convert.ToBase64String(encoded);
        Response.Write( Convert.ToBase64String(encoded));

        /*byte[] encoded1 = Convert.FromBase64String(decodeMe);
         System.Text.Encoding.UTF8.GetString(encoded);
         * */

                                 
    }

    public void btn_data(object sender, EventArgs e)
    {
        Button btn =(Button) sender;
        Response.Redirect("Default.aspx?id="+btn.Text);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Write(DropDownList1.SelectedValue.ToString());
    }
}