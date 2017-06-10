using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class VEHICLE_TYPE_ID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into VEHICLE_TYPE_ID (ENGINE,CHASIS,CONDITION,MANUFACTURE,VEHICLE_TYPE_ID) VALUES ('"+TextBox1.Text+"','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+TextBox5.Text +"')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update VEHICLE_TYPE_ID set ENGINE = '"+TextBox1.Text+"' , CHASIS = '" + TextBox2.Text + "', CONDITION = '" + TextBox3.Text + "', MANUFACTURE = '" + TextBox4.Text + "', VEHICLE_TYPE_ID = '"+TextBox5.Text+"'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete VEHICLE_TYPE_ID WHERE ENGINE = '" + TextBox1.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}