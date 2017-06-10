using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace WebApplication2
{
    public partial class insert : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=FACULTY-41;Initial Catalog=college;User ID=sa;Password=aptech;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
                DataSet ds = new DataSet();
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

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into info values(123,'testing123','test@gmail.com','123456',256,'2008-08-10')", con);
            try
            {

                con.Open();

                cmd.ExecuteNonQuery();

                Response.Redirect("insert.aspx/?msg=Data inserted successfully");

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from info", con);
            try
            {

                con.Open();

                SqlDataAdapter myCommand = new SqlDataAdapter();
                myCommand.SelectCommand = cmd;
                // Create and fill a new DataSet.
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                myCommand.Fill(dt);

                //Response.Write(ds.Tables[0].Rows[0][0]);
                Response.Write(dt.Rows[0][0]);
                
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

            string stor_id = GridView1.DataKeys[e.RowIndex].Values["instructorId"].ToString();
                       
            Response.Write(stor_id + "<br/>");

            SqlCommand cmd = new SqlCommand("delete from info where id='"+stor_id+"'", con);
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
            Response.Write(e.NewEditIndex);
            GridView1.EditIndex = e.NewEditIndex;
            select();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //Label lblID = (Label)row.FindControl("lblID");
            //TextBox txtname=(TextBox)gr.cell[].control[];
            TextBox textName = (TextBox)row.Cells[1].Controls[0];
            Response.Write(textName.Text);

            GridView1.EditIndex = -1;
            con.Open();
            //SlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);
            SqlCommand cmd = new SqlCommand("update info set name='" + textName.Text + "'where id='" + userid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            select();
        }
    }
}