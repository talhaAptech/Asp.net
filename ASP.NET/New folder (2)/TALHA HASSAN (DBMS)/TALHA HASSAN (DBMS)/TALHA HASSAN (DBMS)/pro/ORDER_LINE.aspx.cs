using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class ORDER_LINE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into ORDER_LINE (ORDER_NUMBER,ORDER_LINE_NO,PRODUCT_CODE,UNIT_SALE_PRICE,QUANTITY,SALES_VALUE,TAX) VALUES ('"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update ORDER_LINE set ORDER_NUMBER ='" + TextBox2.Text + "', ORDER_LINE_NO = '" + TextBox3.Text + "', PRODUCT_CODE = '" + TextBox4.Text + "', UNIT_SALE_PRICE = '" + TextBox5.Text + "', QUANTITY = '" + TextBox6.Text + "', SALES_VALUE = '"+TextBox7.Text+"', TAX = '"+TextBox8.Text+"'"; 
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete ORDER_LINE WHERE ORDER_NUMBER = '" + TextBox2.Text + "'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }
}