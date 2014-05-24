﻿using System;
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
            dbContext db = new dbContext();
            try
            {
                var q = db.WebSiteInfoes.ToList()[0];
                if (q != null)
                {
                    q.WebSitDescription = txtDescription.Text;
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
                    WebSitDescription = txtDescription.Text,
                    WebsiteTags = "New-Tags"
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
