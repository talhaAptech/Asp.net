﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/WebForm2.aspx");
        }

        public string Name
        {
            get
            {
                return txtName.Text;
            }
        }

        public string Email
        {
            get
            {
                return txtEmail.Text;
            }
        }
    }
}