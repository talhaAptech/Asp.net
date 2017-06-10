using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            grid_binding();
        }

    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["crudConnectionString"].ConnectionString);
    
    public void grid_binding()
    {
        SqlCommand cmd = new SqlCommand("aptech");
        cmd.Parameters.AddWithValue("@Event", "select");
        
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlCommand cmd = new SqlCommand("aptech");
        cmd.Parameters.AddWithValue("@Event", "delete");
        cmd.Parameters.AddWithValue("@Id", 5);
        
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
}