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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqlinsert = "INSERT INTO tblUser (username, password, email, dateRegistered) VALUES (@username, @password, @email, @dateRegistered)";
            SqlCommand cmd = new SqlCommand(sqlinsert, con);
            cmd.Parameters.AddWithValue("@username", username.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", password.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@dateRegistered", DateTime.Now);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "!**** Profile Created ****!";
        }
    }
}