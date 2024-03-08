using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace SR_Tyer_and_Puncture_Service
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SH0D20M\SQLEXPRESS;Initial Catalog=sr;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string nm = name.Text;
            string em = email.Text;
            string msg = message.Text;

            SqlCommand cmd = new SqlCommand("INSERT INTO [contact] (name, email, message) VALUES (@Name, @Email, @Message)", con);

            cmd.Parameters.AddWithValue("@Name", nm);
            cmd.Parameters.AddWithValue("@Email", em);
            cmd.Parameters.AddWithValue("@Message", msg);

            try
            {
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

            Response.Write("<script>alert('Message Sent Successfully..')</script>");
            Response.Redirect("default.aspx");
        }
    }
}
