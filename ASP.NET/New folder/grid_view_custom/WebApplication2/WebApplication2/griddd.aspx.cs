using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class griddd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FACULTY-41;Initial Catalog=college;User ID=sa;Password=aptech;");
        protected void Page_Load(object sender, EventArgs e)
        {
            select();
        }

        public void select()
        {
            SqlCommand cmd = new SqlCommand("select * from instructor", con);
            try
            {
                con.Open();

                SqlDataAdapter myCommand = new SqlDataAdapter();
                myCommand.SelectCommand = cmd;
                // Create and fill a new DataSet.
                //DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                myCommand.Fill(dt);


                // Bind MyDataGrid to the DataSet.
                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);

            }
            finally
            {
                con.Close();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Response.Write(e.RowIndex);
            string stor_id = GridView1.DataKeys[e.RowIndex].Values["instructorId"].ToString();
            //string stor_id = GridView1.DataKeys[e.RowIndex].Values.ToString();

            Response.Write(stor_id + "<br/>");
            SqlCommand cmd = new SqlCommand("delete from instructor where instructorId='" + stor_id + "'", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                select();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            GridView1.EditIndex = e.NewEditIndex;
            //select();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }
    }
}