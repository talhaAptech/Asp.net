using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ajaxx
{
    public partial class service_use : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //http://currencyconverter.kowabunga.net/converter.asmx

            //http://www.webservicex.net/New/Home/ServiceDetail/10
            currency.CurrencyConvertor a = new currency.CurrencyConvertor();

           // conver.Converter b = new conver.Converter();
            

            int first = 5;
            int sec = 10;
            Response.Write(a.ConversionRate(currency.Currency.USD,currency.Currency.PKR));
        }
    }
}