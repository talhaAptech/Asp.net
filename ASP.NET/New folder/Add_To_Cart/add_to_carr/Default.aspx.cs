using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
                dt = new DataTable();
                dt.Columns.Add("id", typeof(int));
                dt.Columns.Add("Product", typeof(string));
                dt.Columns.Add("Quantity", typeof(int));
                dt.Columns.Add("Price", typeof(int));
                dt.Columns.Add("Total_Price", typeof(int));
                Session["cart"] = dt;
            }
            else
            {
                dt = (DataTable)Session["cart"];
            }
            if (Request.QueryString["id"] != null && Request.QueryString["id"] != "0" && Request.QueryString["id"] != "")
            {
                id = Convert.ToInt16(Request.QueryString["id"]);
            }
            if (!IsPostBack)
            {
                bind();                    
            }           
    }


    public void bind()
    {
        if (id>0)                            
        if (addquantity() == false)
        {
           // dt.Rows.Add(id, "LCD", 2, 1000,(2*1000));                     
            SqlConnection connection = new SqlConnection("Data Source=azeem-PC;Initial Catalog=crud;User ID=sa;Password=aptech");
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand("select * from product where id=" + id + "", connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    dt.Rows.Add(dataReader.GetValue(0), dataReader.GetValue(1), 1, dataReader.GetValue(2), dataReader.GetValue(2));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
               
            }

        }

        GridView1.DataSource = dt;
        GridView1.DataBind();       
             
    }

    public bool addquantity()
    {      
        for (int i = 0; i < dt.Rows.Count; i++)
            {                
                if (Convert.ToInt16(dt.Rows[i][0])==id)
                    {
                        dt.Rows[i][2]=Convert.ToInt16(dt.Rows[i][2])+1;
                        return true;                     
                    }                
             }
        return false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //dt.Rows.Add(id, "LCD", 2, 1000);
       // bind();
        Response.Redirect("Default3.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int prod_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        
        for (int i = 0; i < dt.Rows.Count; i++)
        {            
            if (Convert.ToInt16(dt.Rows[i][0]) == prod_id)
            {
                //DataRow dr = dt.Rows[i].Delete;
                //dr.Delete();
                Response.Write(prod_id);
                dt.Rows[i].Delete();                
            }
        }
        Response.Redirect("Default.aspx");
    }

    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
        TextBox txt = (TextBox)sender;
        GridViewRow gvRow = (GridViewRow)txt.Parent.Parent;
        Label lblRs = (Label)gvRow.FindControl("Label3");
        Label Total = (Label)gvRow.FindControl("Label4");
        //Label lblTotalRs = (Label)gvRow.FindControl("lblTotalRs");
        try
        {
            Total.Text = ((Convert.ToInt32(txt.Text)) * (Convert.ToInt32(lblRs.Text))).ToString();
        }
        catch
        {
            //lblRs.Text = "0"; //txt.Text = "0"; }

            Response.Write(lblRs.Text);
        }

    }
}
