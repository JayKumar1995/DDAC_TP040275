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
    public partial class checkin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Dataload();
        }

        public void Dataload()
        {
            con.Open();
            string booking = "Select * from tblBooking where UID=@uid";
            SqlDataAdapter da = new SqlDataAdapter(booking, con);
            da.SelectCommand.Parameters.AddWithValue("@uid", 1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["bookingcode"] = GridView1.SelectedRow.Cells[2].Text;
            Session["passengerid"] = GridView1.SelectedRow.Cells[4].Text;
        }

        public void c_in()
        {
            con.Open();
            string chkin = "INSERT INTO tblCheckin (UID, PID, BookingCode, Checkin) VALUES (@uid, @pid, @bcode, @checkin)";
            SqlCommand comm = new SqlCommand(chkin, con);
            comm.Parameters.AddWithValue("@uid", Session["userid"].ToString());
            comm.Parameters.AddWithValue("@pid", Session["passengerid"].ToString());
            comm.Parameters.AddWithValue("@bcode", Session["bookingcode"].ToString());
            comm.Parameters.AddWithValue("@checkin", "Done");
            comm.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Check-In Done.');</script>");
            con.Close();
        }

        protected void cin_Click(object sender, EventArgs e)
        {
            c_in();
        }
    }
}
