using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                List<UserDetails> userinfo = new List<UserDetails>();
                UserDetails user = new UserDetails();
                user.userid = 1;
                user.username = "Junaid";
                user.education = "Engineer";
                user.location = "Hyderabad";
                userinfo.Add(user);
                user = new UserDetails();
                user.userid = 2;
                user.username = "Waqas";
                user.education = "Engineer";
                user.location = "Karachi";
                userinfo.Add(user);
                user = new UserDetails();
                user.userid = 3;
                user.username = "Abdullah";
                user.education = "B.Tech";
                user.location = "Karachi";
                userinfo.Add(user);
                user = new UserDetails();
                user.userid = 4;
                user.username = "Ali";
                user.education = "MBA";
                user.location = "Karachi";
                userinfo.Add(user);
                BindGridview(userinfo);
                }
        }
    public void BindGridview(List<UserDetails> user)
        {
            gvDetails.DataSource = user;
            gvDetails.DataBind();
        }
    }

    public class UserDetails
    {
        public int userid { get; set; }
        public string username { get; set; }
        public string education { get; set; }
        public string location { get; set; }

        }
    }