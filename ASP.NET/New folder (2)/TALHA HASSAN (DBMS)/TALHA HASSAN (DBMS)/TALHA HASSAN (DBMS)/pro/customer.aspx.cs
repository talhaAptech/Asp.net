using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class CUSTOMER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into CUSTOMER (CUSTOMER_CODE,CUSTOMER_NAME,CUSTOMER_ADDRESS_LINE_1,CUSTOMER_ADDRESS_LINE_2,CITY_CODE,[CAR(VEHICLE)_ID],VEHICLE_TYPE) VALUES ('"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update CUSTOMER set CUSTOMER_CODE = '" + TextBox2.Text + "',CUSTOMER_NAME = '" + TextBox3.Text + "',CUSTOMER_ADDRESS_LINE_1 = '" + TextBox4.Text + "',CUSTOMER_ADDRESS_LINE_2 = '" + TextBox5.Text + "',CITY_CODE = '" + TextBox6.Text + "',[CAR(VEHICLE)_ID] = '" + TextBox7.Text + "',VEHICLE_TYPE = '" + TextBox8.Text + "' ";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete CUSTOMER WHERE CUSTOMER_CODE = '" + TextBox2.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}