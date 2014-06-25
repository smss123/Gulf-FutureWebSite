using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class DescriptionControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var db = new dbContext();
            try
            {
                var q = db.WebSiteInfoes.ToList()[0];
                if (q != null)
                {
                    q.WebSitDescription = txtDescription.Text;
                    db.SaveChanges();
                    lblmsg.Text = "<div class='alert alert-success'>" +
                                        "<button class='close data-dismiss=alert'>&times;</button>" +
                                        "<strong>Success!</strong> Your Data Has Been Saved" +
                                        "</div>";
                }
            }
            catch (Exception)
            {
                var x = new WebSiteInfo()
                {
                    ArWebSiteName = "[New-Arabic]",
                    EnWebSiteName = "[New-English]"
                    ,
                    DefaultLanguge = "en",
                    WebSitDescription = txtDescription.Text,
                    WebsiteTags = "New-Tags"
                };
                db.WebSiteInfoes.Add(x);
                db.SaveChanges();
                lblmsg.Text = "<div class='alert alert-success'>" +
                                      "<button class='close data-dismiss=alert'>&times;</button>" +
                                      "<strong>Success!</strong> Your Data Has Been Saved" +
                                      "</div>";
            }
        }

        protected override void OnInit(EventArgs e)
        {
            try
            {
                var db = new dbContext();
                var q = db.WebSiteInfoes.ToList()[0];
                if (q != null)
                {
                    txtDescription.Text = q.WebSitDescription;
                }
            }
            catch (System.ArgumentOutOfRangeException ex)
            {
                return;
            }
            base.OnInit(e);
        }
    }
}
