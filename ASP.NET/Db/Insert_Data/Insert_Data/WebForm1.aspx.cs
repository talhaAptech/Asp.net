using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insert_Data
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string connstring = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            insert_record();   
        }
        
        public void insert_record()
        {
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("spinsertdata", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = TextBox1.Text;
                cmd.Parameters.Add("@name", SqlDbType.NVarChar, 20).Value = TextBox2.Text;
                cmd.Parameters.Add("@class", SqlDbType.Int).Value = TextBox3.Text;


                conn.Open();
                cmd.ExecuteNonQuery();


                Response.Write("DATA record has been inserted successfully.....");

            }
            catch (Exception)
            {
                Response.Write("data is not inserted !!!");

            }

            finally
            {
                conn.Close();
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             using (SqlConnection con = new SqlConnection(connstring))
        {
            SqlCommand cmd = new SqlCommand("Select id,name from student", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DropDownList1.DataTextField = "id";
            DropDownList1.DataValueField = "name";
            DropDownList1.DataSource = rdr;
            DropDownList1.DataBind();
        
        

        }
        } //method end...........
    }
}