using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class CAR_VEHICLE_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into [CAR(VEHICLE)] (PRODUCT_DESCRIPTION,MAKE,MODEL,VEHICLE_TYPE_ID) VALUES ('" + TextBox2.Text + "','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete [CAR(VEHICLE)] where PRODUCT_CODE = '" + DropDownList1.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from [CAR(VEHICLE)] where PRODUCT_CODE= " + DropDownList1.Text + "";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr["PRODUCT_DESCRIPTION"].ToString();
            TextBox3.Text = dr["MAKE"].ToString();
            TextBox4.Text = dr["MODEL"].ToString();
            TextBox5.Text = dr["VEHICLE_TYPE_ID"].ToString();
            
            dr.Close();
        }
    }
}