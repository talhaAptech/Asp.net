using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "GTR";
        Label2.Text = "Nisan";
        Label3.Text = "$14000";

        Label4.Text = "GTR";
        Label5.Text = "Nisan";
        Label6.Text = "$14000";

        Label7.Text = "GTR";
        Label8.Text = "Nisan";
        Label9.Text = "$14000";

        Label10.Text = "GTR";
        Label11.Text = "Nisan";
        Label12.Text = "$14000";


        Label13.Text = "GTR";
        Label14.Text = "Nisan";
        Label15.Text = "$14000";

        Label16.Text = "GTR";
        Label17.Text = "Nisan";
        Label18.Text = "$14000";

        Label19.Text = "COROLLA";
        Label20.Text = "TOYOTA";
        Label21.Text = "$14000";

        Label22.Text = "COROLLA";
        Label23.Text = "TOYOTA";
        Label24.Text = "$14000";

        Label25.Text = "HILUX";
        Label26.Text = "TOYOTA";
        Label27.Text = "$14000";

        Label28.Text = "CORONA";
        Label29.Text = "TOYOTA";
        Label30.Text = "$14000";

        Label31.Text = "PRADO";
        Label32.Text = "TOYOTA";
        Label33.Text = "$14000";

        Label34.Text = "TERIOSKID";
        Label35.Text = "TOYOTA";
        Label36.Text = "$14000";

        Label37.Text = "TERIOSKID";
        Label38.Text = "TOYOTA";
        Label39.Text = "$14000";

        Label40.Text = "TORANDO";
        Label41.Text = "TOYOTA";
        Label42.Text = "$14000";

        Label43.Text = "TORANDO";
        Label44.Text = "TOYOTA";
        Label45.Text = "$14000";

        Label46.Text = "TORANDO";
        Label47.Text = "TOYOTA";
        Label48.Text = "$14000";

        Label49.Text = "TORANDO";
        Label50.Text = "TOYOTA";
        Label51.Text = "$14000";

        Label52.Text = "TORANDO";
        Label53.Text = "TOYOTA";
        Label54.Text = "$14000";

        Label55.Text = "TORANDO";
        Label56.Text = "TOYOTA";
        Label57.Text = "$14000";

        Label58.Text = "TORANDO";
        Label59.Text = "TOYOTA";
        Label60.Text = "$14000";

        Label61.Text = "TORANDO";
        Label62.Text = "TOYOTA";
        Label63.Text = "$14000";

        Label64.Text = "LUXUS";
        Label65.Text = "KARKA";
        Label66.Text = "$14000";

        Label67.Text = "GT6";
        Label68.Text = "NISSAN";
        Label69.Text = "$14000";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label1.Text;
        Session["Company"] = Label2.Text;
        Session["Price"] = Label3.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label4.Text;
        Session["Company"] = Label5.Text;
        Session["Price"] = Label6.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label7.Text;
        Session["Company"] = Label8.Text;
        Session["Price"] = Label9.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label10.Text;
        Session["Company"] = Label11.Text;
        Session["Price"] = Label12.Text;
        Response.Redirect("purchase_detail.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label13.Text;
        Session["Company"] = Label14.Text;
        Session["Price"] = Label15.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label16.Text;
        Session["Company"] = Label17.Text;
        Session["Price"] = Label18.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label19.Text;
        Session["Company"] = Label20.Text;
        Session["Price"] = Label21.Text;
        Response.Redirect("purchase_detail.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label22.Text;
        Session["Company"] = Label23.Text;
        Session["Price"] = Label24.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label25.Text;
        Session["Company"] = Label26.Text;
        Session["Price"] = Label27.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label28.Text;
        Session["Company"] = Label29.Text;
        Session["Price"] = Label30.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label31.Text;
        Session["Company"] = Label32.Text;
        Session["Price"] = Label33.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label34.Text;
        Session["Company"] = Label35.Text;
        Session["Price"] = Label36.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label37.Text;
        Session["Company"] = Label38.Text;
        Session["Price"] = Label39.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label40.Text;
        Session["Company"] = Label41.Text;
        Session["Price"] = Label42.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label43.Text;
        Session["Company"] = Label44.Text;
        Session["Price"] = Label45.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label46.Text;
        Session["Company"] = Label47.Text;
        Session["Price"] = Label48.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label49.Text;
        Session["Company"] = Label50.Text;
        Session["Price"] = Label51.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label52.Text;
        Session["Company"] = Label53.Text;
        Session["Price"] = Label54.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label55.Text;
        Session["Company"] = Label56.Text;
        Session["Price"] = Label57.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label58.Text;
        Session["Company"] = Label59.Text;
        Session["Price"] = Label60.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button21_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label61.Text;
        Session["Company"] = Label62.Text;
        Session["Price"] = Label63.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label64.Text;
        Session["Company"] = Label65.Text;
        Session["Price"] = Label66.Text;
        Response.Redirect("purchase_detail.aspx");
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        Session["Car name"] = Label67.Text;
        Session["Company"] = Label68.Text;
        Session["Price"] = Label69.Text;
        Response.Redirect("purchase_detail.aspx");
    }
}