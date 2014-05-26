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

        protected void RadAsyncUpload1_FileUploaded(object sender, Telerik.Web.UI.FileUploadedEventArgs e)
        {
           // e.File.SaveAs(Server.MapPath(String.Format(@"~/Resources/Uploads/Images/{0}", e.File.GetName())));
            dbContext db = new dbContext();
            string path = @"../Resources/Uploads/Images/";// String.Format(@"~/Resources/Uploads/Images/{0}", Items.File.GetName())
            foreach (Telerik.Web.UI.UploadedFile item in RadAsyncUpload1.UploadedFiles)
            {
                item.SaveAs(Server.MapPath(path + item.GetName()));
                PhotoGellary ph = new PhotoGellary()
                {
                    arDescription = txtArDectiption.Text
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
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
         
            
        }

   

     
    }
}
