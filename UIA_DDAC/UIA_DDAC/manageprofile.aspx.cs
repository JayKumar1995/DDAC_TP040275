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
    public partial class manageprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNotification.Text = "";
            LoadData();
        }

        public void LoadData()
        {
            if (!Page.IsPostBack)
            {
                con.Open();
                string load = "Select * from tblUser where id=@id";
                SqlCommand cmd = new SqlCommand(load, con);
                cmd.Parameters.AddWithValue("@id", Session["userid"].ToString());

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    id.Text = Session["userid"].ToString();
                    username.Text = Session["username"].ToString();
                    password.Text = reader.GetString(2);
                    email.Text = reader.GetString(3);
                }
                reader.Close();
                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            string update = "Update tblUser SET password=@password, email=@email where id=@id";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.Parameters.AddWithValue("@id", Session["userid"].ToString());
            cmd.Parameters.AddWithValue("@password", password.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.ExecuteNonQuery();
            lblNotification.Text = "Profile Upadted ..... !";
            con.Close();
        }
    }
}