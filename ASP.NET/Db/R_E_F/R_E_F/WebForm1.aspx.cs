﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace R_E_F
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateExcelData("Select");
            }
        }

        protected void ddlSlno_SelectedIndexChanged(object sender, EventArgs e)
        {
            GenerateExcelData(ddlSlno.SelectedValue);
        }

        private void GenerateExcelData(string SlnoAbbreviation)
        {
            try
            {
                string path = System.IO.Path.GetFullPath(Server.MapPath("~/Files/Information.xlsx"));

                if (Path.GetExtension(path) == ".xls")
                {
                    con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"");
                }
                else if (Path.GetExtension(path) == ".xlsx")
                {
                    con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties='Excel 12.0;HDR=YES;IMEX=1;';");
                }
                con.Open();

                OleDbCommand cmd = new OleDbCommand();
                OleDbDataAdapter oleda = new OleDbDataAdapter();
                DataSet ds = new DataSet();

                // passing list to drop-down list

                // selecting distict list of Slno 
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT distinct([Slno]) FROM [Sheet1$]";
                oleda = new OleDbDataAdapter(cmd);
                oleda.Fill(ds, "dsSlno");
                ddlSlno.DataSource = ds.Tables["dsSlno"].DefaultView;
                if (!IsPostBack)
                {
                    ddlSlno.DataTextField = "Slno";
                    ddlSlno.DataValueField = "Slno";
                    ddlSlno.DataBind();
                }
                // by default we will show form data for all states but if any state is selected then show data accordingly
                if (!String.IsNullOrEmpty(SlnoAbbreviation) && SlnoAbbreviation != "Select")
                {
                    cmd.CommandText = "SELECT * FROM [Sheet1$] where [Slno]= @Slno_Abbreviation";
                    cmd.Parameters.AddWithValue("@Slno_Abbreviation", SlnoAbbreviation);
                }
                else
                {
                    cmd.CommandText = "SELECT * FROM [Sheet1$]";
                }
                oleda = new OleDbDataAdapter(cmd);
                oleda.Fill(ds);

                // binding form data with grid view
                grvData.DataSource = ds.Tables[1].DefaultView;
                grvData.DataBind();
            }
            // need to catch possible exceptions
            catch (Exception ex)
            {
                lblError.Text = ex.ToString();
            }
            finally
            {
                con.Close();
            }
        }// close of method GenerateExceLData
    }
}