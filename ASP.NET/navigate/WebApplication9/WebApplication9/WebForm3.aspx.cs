using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication9
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private string connstring = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {











        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            insert_record();

        }//btn end





        public void insert_record()
        {
            SqlConnection conn = new SqlConnection(connstring);
            try
            {
                SqlCommand cmd = new SqlCommand("spinsertdata", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id",SqlDbType.Int).Value = TextBox1.Text;
                cmd.Parameters.Add("@name ", SqlDbType.NVarChar, 20).Value = TextBox2.Text;
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


        } //method end...........














    }
}