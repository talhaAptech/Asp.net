using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt;
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] == null)
        {
            DataTable table = new DataTable();
            table.Columns.Add("id", typeof(int));
            table.Columns.Add("Product", typeof(string));
            table.Columns.Add("Quantity", typeof(int));
            table.Columns.Add("Price", typeof(int));            
            Session["cart"] = table;
            dt = (DataTable)Session["cart"];
            bind();
        }
        else
        {
            dt = (DataTable)Session["cart"];
            id=Convert.ToInt16(Request.QueryString["id"]);         
            bind();
        }       
    }

    public void bind()
    {
      /*  for (int i = 0; i < dt.Rows.Count; i++)
        {
            Response.Write(dt.Rows[i][0]+"<br/>");     
        }       */
        
        dt.Rows.Add(id, "LCD", 2, 1000);

        dt.Rows[0][2] = Convert.ToInt16(dt.Rows[0][2])+1;
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dt.Rows.Add(id, "LCD", 2, 1000);
        bind();
    }
  }