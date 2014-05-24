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
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            dbContext db = new dbContext();
            try
            {
                var q = db.WebSiteInfoes.ToList()[0];
                if (q!=null)
                {
                    q.WebsiteTags = txtTags.Text;
                    db.SaveChanges();
                    BtnSave.Text = "Saved";
                    
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
                BtnSave.Text = " Saved";
            }
 
        }

        protected override void OnInit(EventArgs e)
        {

            try
            {
                dbContext db = new dbContext();
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
