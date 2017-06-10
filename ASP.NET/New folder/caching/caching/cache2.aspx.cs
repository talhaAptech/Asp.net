using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cache2 : System.Web.UI.Page
{
   
        SqlConnection con = new SqlConnection("Data Source=AZEEM-PC;Initial Catalog=crud;User ID=sa;Password=aptech");
    
    protected void Page_Load(object sender, EventArgs e)
    {

        //<%@ OutputCache Duration="60" VaryByParam="DropDownList1" %>
        /*
                               
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(60));
        Response.Cache.VaryByParams["none"] = true;
        Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
        Cache["ProdData"] = dt;
        * */

        SqlCommand cmd = new SqlCommand("data");       

        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        sda.SelectCommand = cmd;

        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label1.Text = DateTime.Now.ToString();    
    }
}