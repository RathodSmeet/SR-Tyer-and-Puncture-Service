using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SR_Tyer_and_Puncture_Service
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SH0D20M\SQLEXPRESS;Initial Catalog=sr;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            String em = email.Text;
            SqlCommand cmd = new SqlCommand("INSERT INTO [subscriber] (email) VALUES (@Email)", con);

            cmd.Parameters.AddWithValue("@Email", em);

            try
            {
                //con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                // Handle the exception
                Console.WriteLine(se.Message);
            }
            finally
            {
                con.Close();
            }

            Response.Write("<script>alert('Message Sent Succsesfully..')</script>");
            Response.Redirect("default.aspx");

        }
    }
}