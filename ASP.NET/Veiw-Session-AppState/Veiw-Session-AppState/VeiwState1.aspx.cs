﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Veiw_Session_AppState
{
    public partial class VeiwState1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (ViewState["Clicks"] == null)
                {
                    ViewState["Clicks"] = 0;
                }
                TextBox1.Text = ViewState["Clicks"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ClicksCount = (int)ViewState["Clicks"] + 1;
            TextBox1.Text = ClicksCount.ToString();
            ViewState["Clicks"] = ClicksCount;
        }
    }
}