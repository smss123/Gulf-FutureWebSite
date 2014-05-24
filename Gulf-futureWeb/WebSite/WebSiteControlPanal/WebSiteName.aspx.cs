using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class WebSiteName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            dbContext db = new dbContext();
            try
            {
                
                var q = (db.WebSiteInfoes.ToList()[0]);
                if (q != null)
                {
                    q.ArWebSiteName = txtArName.Text;
                    q.EnWebSiteName = txtEnName.Text;
                    db.SaveChanges();
                    lblmsg.Visible = true;
                    lblmsg.Text = "<div class='alert alert-success'> " +
                        "<button class='close' data-dismiss='alert'>&times;</button>" +
                        "<strong>Success!</strong> You Data Has been Saved" +
                        "</div>";
                }
                else
                {
                    var x = new WebSiteInfo()
                    {
                        ArWebSiteName = txtArName.Text,
                        EnWebSiteName = txtEnName.Text
                        ,
                        DefaultLanguge = "en",
                        WebSitDescription = "[New]",
                        WebsiteTags = "[New]"
                    };
                    db.WebSiteInfoes.Add(x);
                    db.SaveChanges();
                    btnSave.Text = " you Data has Been Saved";
                }
 
            }
            catch (ArgumentOutOfRangeException)
            {

                var x = new WebSiteInfo()
                {
                    ArWebSiteName = txtArName.Text,
                    EnWebSiteName = txtEnName.Text
                    ,
                    DefaultLanguge = "en",
                    WebSitDescription = "[New]",
                    WebsiteTags = "[New]"
                };
                db.WebSiteInfoes.Add(x);
                db.SaveChanges();
                btnSave.Text = " you Data has Been Saved";
            }
           
        }
        protected override void OnInit(EventArgs e)
        {
           
            try
            {
                 dbContext db  = new dbContext();
            var q = db.WebSiteInfoes.ToList()[0];
                     if (q != null)
                      {
                txtArName.Text = q.ArWebSiteName;
                txtEnName.Text = q.EnWebSiteName;
                      }
            }
            catch ( System.ArgumentOutOfRangeException ex)
            {
                return; 
               
            }
            base.OnInit(e);
        }
    }
}
