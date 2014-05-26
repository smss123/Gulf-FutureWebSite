﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class SildeControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                var t1 = Task.Factory.StartNew(() => UpldArImage.PostedFile.SaveAs(Server.MapPath("../Resources/Uploads/Images/"+UpldArImage.PostedFile.FileName)));
            t1.Wait();
            var t = Task.Factory.StartNew(() => UpldEnImage.PostedFile.SaveAs(Server.MapPath("../Resources/Uploads/Images/"+UpldEnImage.PostedFile.FileName)));
            t.Wait();
            var db = new dbContext();
            SlideConfig sld = new SlideConfig() { ArSlide = "../Resources/Uploads/Images/" + UpldArImage.PostedFile.FileName, EnSlide = "../Resources/Uploads/Images/" + UpldEnImage.PostedFile.FileName };
            db.SlideConfigs.Add(sld);
            db.SaveChanges();
            lblmsg.Text = "<div class='alert alert-success'>" +
                                   "<button class='close data-dismiss=alert'>&times;</button>" +
                                   "<strong>Success!</strong> Your Data Has Been Saved" +
                                   "</div>";
            SlideDataSource.DataBind();
            grdSlide.DataBind();
            }
            catch (Exception ex)
            {
                  
               lblmsg.Text = "<div class='alert alert-error'>" +
                                   "<button class='close data-dismiss=alert'>&times;</button>" +
                                   "<strong>Error!</strong> " +ex.Message +
                                   "</div>";
            }
        }
    }
}
