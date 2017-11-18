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
    public partial class Confirmation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            dataload1();
            dataload2();
            dataload3();
        }

        public void dataload1()
        {
            con.Open();
            string passnger = "Select * From tblPassengers Where PassengerID=@pid";
            SqlCommand comm1 = new SqlCommand(passnger, con);
            comm1.Parameters.AddWithValue("@pid", Session["PID"].ToString());
            SqlDataReader reader = comm1.ExecuteReader();
            if (reader.Read())
            {
                userid.Text = Convert.ToString(reader.GetValue(9));
                pid.Text = Convert.ToString(reader.GetValue(0));
                string fname = Convert.ToString(reader.GetString(1));
                string lname = Convert.ToString(reader.GetString(2));
                pname.Text = fname + lname;
                passnumber.Text = Convert.ToString(reader.GetString(6));
            }
            reader.Close();
            con.Close();
        }

        public void dataload2()
        {
            con.Open();
            string booking = "Select * From tblBooking Where PID=@pid";
            SqlCommand comm2 = new SqlCommand(booking, con);
            comm2.Parameters.AddWithValue("@pid", Session["PID"].ToString());
            SqlDataReader reader1 = comm2.ExecuteReader();
            if (reader1.Read())
            {
                bid.Text = Convert.ToString(reader1.GetValue(0));
                bcode.Text = Convert.ToString(reader1.GetString(1));
                fnumber.Text = Convert.ToString(reader1.GetString(4));
            }
            reader1.Close();
            con.Close();
        }

        public void dataload3()
        {
            con.Open();
            string seatnum = "Select * From tblSeat Where PID=@pid";
            SqlCommand comm3 = new SqlCommand(seatnum, con);
            comm3.Parameters.AddWithValue("@pid", Session["PID"].ToString());
            SqlDataReader reader2 = comm3.ExecuteReader();
            if (reader2.Read())
            {
                seat.Text = Convert.ToString(reader2.GetString(2));
            }
            reader2.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string upt = "Update tblBooking Set Confirmation=1 where PID=@pid";
            SqlCommand comm4 = new SqlCommand(upt, con);
            comm4.Parameters.AddWithValue("@pid", Session["PID"].ToString());
            comm4.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Details confirmed.');</script>");
            con.Close();
        }
    }
}