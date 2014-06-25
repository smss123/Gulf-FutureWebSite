using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class AboutUsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            var db = new dbContext();
            try
            {
                ArEdior.Content = db.AboutUs.ToList()[0].ArAboutUs;
                EnEditor.Content = db.AboutUs.ToList()[0].EnAboutUs;
            }
            catch (Exception)
            {
            }
        }

        protected void RadAsyncUpload1_FileUploaded(object sender, Telerik.Web.UI.FileUploadedEventArgs e)
        {
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var db = new dbContext();
            try
            {
                var q = (db.AboutUs.ToList()[0]);
                if (q != null)
                {
                    q.ArAboutUs = ArEdior.Content;
                    q.EnAboutUs = EnEditor.Content;
                    db.SaveChanges();
                    lblmsg.Text = "<div class='alert alert-success'>" +
                                     "<button class='close data-dismiss=alert'>&times;</button>" +
                                     "<strong>Success!</strong> Your Data Has Been Saved" +
                                     "</div>";
                }
            }
            catch (Exception)
            {
                var about = new AboutU();
                about.ArAboutUs = ArEdior.Content;
                about.EnAboutUs = EnEditor.Content;
                db.AboutUs.Add(about);
                db.SaveChanges();
                lblmsg.Text = "<div class='alert alert-success'>" +
                                     "<button class='close data-dismiss=alert'>&times;</button>" +
                                     "<strong>Success!</strong> Your Data Has Been Saved" +
                                     "</div>";
            }
        }
    }
}
