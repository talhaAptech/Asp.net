﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                lblName.Text = cookie["Name"];
                lblEmail.Text = cookie["Email"];
            }
        }
    }
}