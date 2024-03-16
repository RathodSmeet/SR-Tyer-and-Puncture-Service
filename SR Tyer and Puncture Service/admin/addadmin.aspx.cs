using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;

namespace SR_Tyer_and_Puncture_Service.admin
{
    public partial class addadmin : System.Web.UI.Page
    {
        string nm, em, pass, cpass, db;

       

        int activationgcode;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-SH0D20M\SQLEXPRESS;Initial Catalog=sr;Integrated Security=True");
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            nm = name.Text;
            em = email.Text;
            pass = password.Text;
            cpass = cpassword.Text;
            db = dob.Text;
            long mo = long.Parse(mobile.Text);

            Random random = new Random();
            activationgcode = random.Next(100000, 1000000);

            sendcode();

            string targetUrl = $"verify.aspx?n={nm}&e={em}&p={pass}&cp={cpass}&d={db}&rNo={activationgcode}&m={mo}";

            Response.Redirect(targetUrl);
        }

        private void sendcode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("tankharsh1431@gmail.com", "cjor sflf otja bzjz");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "activation code to verify email address";
            msg.Body = "Your code is : " + activationgcode;
            string toaddress = email.Text;
            msg.To.Add(toaddress);
            string fromaddress = "sr-tyre-puncture-service : <tankharsh1431@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch (Exception e)
            {
                //throw;
                Console.Write(e);
            }
        }
    }
}