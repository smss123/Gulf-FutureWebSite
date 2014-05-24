﻿using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class DefualtLanguge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Visible = false;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            dbContext db = new dbContext();
            try
            {
                var q = db.WebSiteInfoes.ToList()[0];
                if (q != null)
                {
                    q.DefaultLanguge  = DropDownList1.Text ;
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
                    DefaultLanguge = DropDownList1.Text,
                    WebSitDescription = "[New-Description]",
                    WebsiteTags = "[new-tags]"
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
    }
}
