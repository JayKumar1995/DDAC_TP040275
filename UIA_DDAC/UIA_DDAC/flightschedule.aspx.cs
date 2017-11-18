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
    public partial class flightschedule : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ddlorigin_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string origin = "Select * from tblFlightSchedule where Origin=@Origin";
            SqlDataAdapter da = new SqlDataAdapter(origin, con);
            da.SelectCommand.Parameters.AddWithValue("@Origin", ddlorigin.SelectedItem.Text);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["flightNumber"] = GridView1.SelectedRow.Cells[2].Text;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (ddl_NOP.SelectedIndex.Equals(0))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please select number of passengers.');</script>");
            }
            else
            {
                Session["numberofpassengers"] = ddl_NOP.SelectedItem.Text;
                Response.Redirect("Passengers.aspx");
            }
        }
    }
}