using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using DataController;

namespace WebSite
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        public dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        public string Mycontact;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            Ourservice = db.OurServices.ToList();
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
            var Msg = new MailMessage("noreplay@gulf-future.com", "info@gulf-future.com");
            Msg.Subject = txtSubject.Text;

            Msg.Body = txtMsg.Text + "\n Email from " + txtEmail.Text;
            Msg.Subject = "New Message from " + txtName.Text;


            var smtp = new SmtpClient();
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
