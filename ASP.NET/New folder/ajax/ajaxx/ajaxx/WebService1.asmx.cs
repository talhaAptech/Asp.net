using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ajaxx
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

       /* [WebMethod]
       public int converttodaysweb(int day, int month, int year)
        {
            DateTime dt = new DateTime(year, month, day);
            int datetodays = DateTime.Now.Subtract(dt).Days;
            return datetodays;

        } */

        [WebMethod]
        public  List<Cars> getListOfCars(List<string> aData)
        {
            SqlDataReader dr;
            List<Cars> carList = new List<Cars>();

           /* using ( SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["crudConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "info_stored";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@Event", "s1");
                    cmd.Parameters.AddWithValue("@id", aData[0]);
                    con.Open();
                    dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    if (dr.HasRows)
                    {
                        
                        while (dr.Read())
                        {
                            //string carname = dr["id"].ToString();
                            string carrating = dr["name"].ToString();
                            string makingyear = dr["email"].ToString();

                            carList.Add(new Cars
                            {
                                //carName = carname,
                                carRating = carrating,
                                carYear = makingyear
                            });
                        }
                    }
                }
            }*/
            carList.Add(new Cars
            {
                //carName = carname,
                carRating = "testing",
                carYear = aData[0],
            });
            carList.Add(new Cars
            {
                //carName = carname,
                carRating = "testing123",
                carYear = aData[0]+25,
            });
            return carList;
           // return "testing12345";
        }

        [WebMethod]
        public string[] getdata(string[] aData)
        {

            //string merge = aData[0] +" "+ aData[1];

            return aData;
           
        }
    }
}
