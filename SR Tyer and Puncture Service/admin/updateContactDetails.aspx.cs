using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SR_Tyer_and_Puncture_Service.admin
{
    public partial class updateContactDetails : System.Web.UI.Page
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

            int Id = Convert.ToInt32(Request.QueryString["i"]);
        }

        private void getDetails(int Id)
        {
            SqlCommand cmdSelect = new SqlCommand("select * from contact where id='" + Id + "'", con);
            dr = cmdSelect.ExecuteReader();
            if (dr.Read())
            {
                name.Text = dr["name"].ToString();
                email.Text = dr["email"].ToString();
                message.Text = dr["message"].ToString();
               
            }
            dr.Close();
            Response.Redirect("viewcontact.aspx");
        }
        protected void update_Click(object sender, EventArgs e)
        {
            con.Close();

            

            con.Open();
            int Id = Convert.ToInt32(Request.QueryString["i"]);
            SqlCommand cmd = new SqlCommand("UPDATE contact SET name ='" + name.Text + "', email = '" + email.Text + "' , message = '" + message.Text + "' WHERE id = '" + Id + "' ", con);
 
            cmd.ExecuteNonQuery();
 
            Response.Write("<script>alert('Data Update Succsesfully..')</script>");
            Response.Redirect("viewcontact.aspx");

        }
    }
}