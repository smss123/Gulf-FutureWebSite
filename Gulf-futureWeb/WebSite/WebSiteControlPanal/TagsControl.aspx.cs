using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class TagsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Visible = true;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var db = new dbContext();
            try
            {
                var q = db.WebSiteInfoes.ToList()[0];
                if (q != null)
                {
                    q.WebsiteTags = txtTags.Text;
                    db.SaveChanges();
                    lblmsg.Visible = true;
                    lblmsg.Text = "<div class='alert alert-success'> " +
                       "<button class='close' data-dismiss='alert'>&times;</button>" +
                       "<strong>Success!</strong> You Data Has been Saved" +
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
                    WebSitDescription = "[New-Description]",
                    WebsiteTags = txtTags.Text
                };
                db.WebSiteInfoes.Add(x);
                db.SaveChanges();
                lblmsg.Visible = true;
                lblmsg.Text = "<div class='alert alert-success'> " +
                         "<button class='close' data-dismiss='alert'>&times;</button>" +
                         "<strong>Success!</strong> You Data Has been Saved" +
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
                    txtTags.Text = q.WebsiteTags;
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
