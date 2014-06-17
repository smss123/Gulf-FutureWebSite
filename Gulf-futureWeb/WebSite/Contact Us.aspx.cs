using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataController;
namespace WebSite
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public string Mycontact;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        void Page_Init(object sender, EventArgs e)
        {
            try
            {
                db = new dbContext();
                Mycontact = db.Contacts.ToList()[0].ArContact;
            }
            catch (Exception)
            {

                Mycontact = "لا يوجد شئ لعرضه";
            }

        }

        protected void BtnSendMail_Click(object sender, EventArgs e)
        {

            MailMessage Msg = new MailMessage("noreplay@gulf-future.com", "info@gulf-future.com");
            Msg.Subject = txtSubject.Text;

            Msg.Body = txtMsg.Text+"\n Email from "+ txtEmail.Text;
            Msg.Subject = "New Message from " + txtName.Text;


            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gulf-future.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplay@gulf-future.com", "123456");
            smtp.EnableSsl = false;
            smtp.Send(Msg);
            Msg = null;
            Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');</script>");
        }
    }
}