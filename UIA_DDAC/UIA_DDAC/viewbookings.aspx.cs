using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace UIA_DDAC
{
    public partial class viewbookings : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Dataload();
        }

        public void Dataload()
        {
            con.Open();
            string booking = "select tblBooking.[UID], tblBooking.PID, tblBooking.FlightNumber, tblPassengers.FirstName, tblPassengers.LastName, tblFlightSchedule.Origin, tblFlightSchedule.Destination, tblFlightSchedule.DeptDate, tblFlightSchedule.DeptTime, tblFlightSchedule.ArrDate, tblFlightSchedule.ArrTime from tblBooking inner join tblPassengers on tblPassengers.PassengerID = tblBooking.PID inner join tblFlightSchedule on tblBooking.FlightNumber = tblFlightSchedule.FlightNumber where[UID] = @uid";
            SqlDataAdapter da = new SqlDataAdapter(booking, con);
            da.SelectCommand.Parameters.AddWithValue("@uid", Session["userid"].ToString());
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}