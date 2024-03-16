using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SR_Tyer_and_Puncture_Service.admin
{
    public partial class viewsubscriber : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-SH0D20M\SQLEXPRESS;Initial Catalog=sr;Integrated Security=True");
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            displayData();
        }
        public void displayData()
        {
            cmd = new SqlCommand("select * from subscriber", con);

            dr = cmd.ExecuteReader();
            GridView.DataSource = dr;
            GridView.DataBind();
            dr.Close();

        }
        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            string Id = e.CommandArgument.ToString();
            deleteRecord(Id);
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string Id = e.CommandArgument.ToString();
            updateRecord(Id);
        }
        public void deleteRecord(string id)
        {
            cmd = new SqlCommand("delete from subscriber where id = '" + id + "'", con);
            cmd.ExecuteNonQuery();
            displayData();
            Response.Write("<script>alert('Record Deleted...')</script>");
        }

        public void updateRecord(string id)
        {
            Response.Redirect($"updateSubscriberDetails.aspx?i={id}");
        }
    }
}