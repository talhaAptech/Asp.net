using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Email_asp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
    
	           try
		        {
			        MailMessage mail = new MailMessage();
			        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

			        mail.From = new MailAddress("syncmaster.hassan99@gmail.com");
			        mail.To.Add(to_txt.Text );
			        mail.Subject = subject_txt.Text ;
			        mail.Body = message_txt.Text ;

			        SmtpServer.Port = 587;
			        SmtpServer.Credentials = new System.Net.NetworkCredential("syncmaster.hassan99@gmail.com", "**********");
			        SmtpServer.EnableSsl = true;

			        SmtpServer.Send(mail);
			        Label4.Text = "Email successfully sent.";
		        }
		        catch (Exception ex)
		        {
			        Label4.Text = "Email Failed." + ex.Message;
		        }
	
        }
    }
}