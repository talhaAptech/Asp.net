using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Create DataTable
            DataTable dt = new DataTable();
            dt.Columns.Add("Sno");
            dt.Columns.Add("Price");
            DataRow dr;
            dr = dt.NewRow();  // Add New Row In DataTable
            dr["Sno"] = "1";
            dr["Price"] = "104";
            dt.Rows.Add(dr);
            dr = dt.NewRow();  // Add New Row In DataTable
            dr["Sno"] = "2";
            dr["Price"] = "600";
            dt.Rows.Add(dr);
            // Bind Your GridView
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
        
        TextBox txt = (TextBox)sender;
        GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;        
        Label lblRs = (Label)gvRow.FindControl("lblRs");
        Label lblTotalRs = (Label)gvRow.FindControl("lblTotalRs");
        try
        {
            lblTotalRs.Text = ((Convert.ToInt32(txt.Text)) * (Convert.ToInt32(lblRs.Text))).ToString();
        }
        catch { lblTotalRs.Text = "0"; txt.Text = "0"; }
    }
}