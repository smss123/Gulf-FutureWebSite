using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class PhotoGellaryControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            PhotoDataSource.DataBind();
            GridView1.DataBind();
        }

        protected void RadAsyncUpload1_FileUploaded(object sender, Telerik.Web.UI.FileUploadedEventArgs e)
        {
            var db = new dbContext();
            var path = @"../Resources/Uploads/Images/";
            foreach (Telerik.Web.UI.UploadedFile item in RadAsyncUpload1.UploadedFiles)
            {
                item.SaveAs(Server.MapPath(path + item.GetName()));
                var ph = new PhotoGellary()
                { arDescription = txtArDectiption.Text
                ,
                    EnDescription = txtEnDescription.Text,
                    img = path + item.GetName()
                };
                db.PhotoGellaries.Add(ph);
                db.SaveChanges();
                lblmsg.Text = "<div class='alert alert-success'>" +
                                    "<button class='close data-dismiss=alert'>&times;</button>" +
                                    "<strong>Success!</strong> Your Data Has Been Saved" +
                                    "</div>";
                PhotoDataSource.DataBind();
                GridView1.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
        }
    }
}
