using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class NewsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var db = new dbContext();
            try
            {
                upld.PostedFile.SaveAs(Server.MapPath(@"../Resources/Uploads/Images/" + upld.PostedFile.FileName));
                var news = new OurNews()
                { ArCaption = txtArCaption.Text,
                    ArDetails = txtArDetails.Text
                ,
                    ArSummary = txtArSummary.Text,
                    DateOf = txtDate.SelectedDate.ToString(),
                    EnCaption = txtEnCaption.Text
                ,
                    EnDetails = txtEnDetails.Text,
                    EnSummary = txtEnSummary.Text ,
                    Photo = @"../Resources/Uploads/Images/" + upld.PostedFile.FileName
                };
                db.OurNews.Add(news);
                db.SaveChanges();

                lblmsg.Text = "<div class='alert alert-success'>" +
                                   "<button class='close data-dismiss=alert'>&times;</button>" +
                                   "<strong>Success!</strong> Your Data Has Been Saved" +
                                   "</div>";
            }
            catch (Exception ex)
            {
                lblmsg.Text = "<div class='alert alert-error'>" +
                                   "<button class='close data-dismiss=alert'>&times;</button>" +
                                   "<strong>Error!</strong> " + ex.Message +
                                   "</div>";
            }
            NewsSource.DataBind();
            GridView1.DataBind();
        }
    }
}
