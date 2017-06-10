using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string connstring = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = loginmethod(TextBox1.Text, TextBox2.Text);
          

            if (x == 1)
            {

                Response.Redirect("~/WebForm2.aspx");


            }

            else
            {

                Label1.Text = "Invalid UserName Or Password..!";
            }

        }

        public int loginmethod(string email, string password)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("Select COUNT(*) FROM detail where login_email = '" + email + "' and login_password = '" + password + "'", connstring);
            int id = 0;

            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                id = 1;

            }
            else
            {
                id = 0;
            }

            return id;
        }


    }
}