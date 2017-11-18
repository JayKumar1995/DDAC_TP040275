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
    public partial class passengers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = true;
            bindcountry();
        }

        public void bindcountry()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("country.xml"));
            DataView dv = ds.Tables[0].DefaultView;

            ddlNationality.DataTextField = "name";
            ddlNationality.DataValueField = "code";
            ddlNationality.DataSource = dv;
            ddlNationality.DataBind();

            ddlIssueState.DataTextField = "name";
            ddlIssueState.DataValueField = "code";
            ddlIssueState.DataSource = dv;
            ddlIssueState.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataInsert();
            Response.Redirect("Confirmation.aspx");
        }

        public void DataInsert()
        {
            con.Open();
            string inspassenger = "INSERT INTO tblPassengers (FirstName, LastName, Gender, DateofBirth, Nationality, PassportNumber, ExpirationDate, IssueState, UserID) VALUES (@FirstName, @LastName, @Gender, @DateofBirth, @Nationality, @PassportNumber, @ExpirationDate, @IssueState, @UserID)";
            SqlCommand comm = new SqlCommand(inspassenger, con);
            comm.Parameters.AddWithValue("@FirstName", txtFname.Text.Trim());
            comm.Parameters.AddWithValue("@LastName", txtLname.Text.Trim());
            comm.Parameters.AddWithValue("@Gender", ddlGender.SelectedItem.Text);
            comm.Parameters.AddWithValue("@DateofBirth", txtDOB.Text.Trim());
            comm.Parameters.AddWithValue("@Nationality", ddlNationality.SelectedItem.Text);
            comm.Parameters.AddWithValue("@PassportNumber", txtPnumber.Text.Trim());
            comm.Parameters.AddWithValue("@ExpirationDate", txtEDate.Text.Trim());
            comm.Parameters.AddWithValue("@IssueState", ddlIssueState.SelectedItem.Text);
            comm.Parameters.AddWithValue("@UserID", Session["userid"].ToString());
            comm.ExecuteNonQuery();

            //select recently added passenger
            string slctpassnger = "Select top 1 * From tblPassengers Where UserID=@UserID order by PassengerID desc";
            SqlCommand comm1 = new SqlCommand(slctpassnger, con);
            comm1.Parameters.AddWithValue("@UserID", Session["userid"].ToString());
            SqlDataReader reader = comm1.ExecuteReader();
            if (reader.Read())
            {
                Session["PID"] = Convert.ToString(reader.GetValue(0));
            }
            reader.Close();

            //adding seat
            string saveseat = "INSERT INTO tblSeat (PID, UID, SeatNumber, FlightNumber) VALUES (@PID, @UID, @SeatNumber, @FlightNumber)";
            SqlCommand comm2 = new SqlCommand(saveseat, con);
            comm2.Parameters.AddWithValue("@PID", Session["PID"].ToString());
            comm2.Parameters.AddWithValue("@UID", Session["userid"].ToString());
            comm2.Parameters.AddWithValue("@SeatNumber", Session["saveseat"].ToString());
            comm2.Parameters.AddWithValue("@FlightNumber", Session["flightNumber"].ToString());
            comm2.ExecuteNonQuery();


            //booking
            string book = "INSERT INTO tblBooking (BookingCode, BookingDate, PID, FlightNumber, UID, Confirmation) VALUES (@BookingCode, @BookingDate, @PID, @FlightNumber, @UID, @Confirmation)";
            SqlCommand comm3 = new SqlCommand(book, con);
            comm3.Parameters.AddWithValue("@BookingCode", Session["flightNumber"].ToString() + "-" + Session["PID"].ToString());
            comm3.Parameters.AddWithValue("@BookingDate", DateTime.Now);
            comm3.Parameters.AddWithValue("@PID", Session["PID"].ToString());
            comm3.Parameters.AddWithValue("@FlightNumber", Session["flightNumber"].ToString());
            comm3.Parameters.AddWithValue("@UID", Session["userid"].ToString());
            comm3.Parameters.AddWithValue("@Confirmation", 0);
            comm3.ExecuteNonQuery();

            con.Close();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["saveseat"] = DropDownList1.SelectedValue.ToString();
        }
    }
}