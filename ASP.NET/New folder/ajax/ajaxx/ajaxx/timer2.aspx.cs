﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ajaxx
{
    public partial class timer2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            DateStampLabel.Text = DateTime.Now.ToString();
        }
    }
}