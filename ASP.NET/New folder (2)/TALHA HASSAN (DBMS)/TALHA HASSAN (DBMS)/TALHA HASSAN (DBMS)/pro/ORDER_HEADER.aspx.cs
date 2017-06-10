using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class ORDER_HEADER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into ORDER_HEADER (ORDER_NUMBER,ORDER_DATE,CUSTOMER_CODE,SHIP_DATE) VALUES ('"+TextBox2.Text +"','"+TextBox3.Text +"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update ORDER_HEADER set ORDER_NUMBER = '" + TextBox2.Text + "', ORDER_DATE = '" + TextBox3.Text + "', CUSTOMER_CODE = '" + TextBox4.Text + "', SHIP_DATE =  '" + TextBox5.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete ORDER_HEADER WHERE ORDER_NUMBER = '" + TextBox2.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}