using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropdownXml
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Create a new DataSet
                DataSet DS = new DataSet();
                //Read the xml data from the XML file using ReadXml() method
                DS.ReadXml(Server.MapPath("Countries.xml"));
                DropDownList1.DataTextField = "CountryName";
                DropDownList1.DataValueField = "CountryId";
                DropDownList1.DataSource = DS;
                DropDownList1.DataBind();
                ListItem li = new ListItem("Select", "-1");
                DropDownList1.Items.Insert(0, li);
                
            }
        }
    }
}