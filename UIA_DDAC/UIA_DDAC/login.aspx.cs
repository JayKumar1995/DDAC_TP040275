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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
            string log = "Select * from tblUser where username=@username and password=@password";
            SqlCommand cmd = new SqlCommand(log, con);
            cmd.Parameters.AddWithValue("@username", txtlog_username.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtlog_pass.Text.Trim());

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                Session["userid"] = Convert.ToString(reader.GetValue(0));
                Session["username"] = Convert.ToString(reader.GetString(1));
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                Label1.Text = "Record does not exist.";
            }
            con.Close();
        }
    }
}