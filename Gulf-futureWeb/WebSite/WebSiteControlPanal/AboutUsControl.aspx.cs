using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace WebSite.WebSiteControlPanal
{
    public partial class AboutUsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadAsyncUpload1_FileUploaded(object sender, Telerik.Web.UI.FileUploadedEventArgs e)
        {
            
            //if (RadAsyncUpload1.UploadedFiles.Count > 0)
            //{
            //    foreach (var file in from UploadedFile file in RadAsyncUpload1.UploadedFiles select file)
            //    {
            //        var filePath = string.Format("~/Resources/Uploads/Images/{0}", file.FileName);
            //        file.SaveAs(Server.MapPath(filePath));
                   
            //    }
            //}
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //if (RadAsyncUpload1.UploadedFiles.Count > 0)
            //{
            //    foreach (var file in from UploadedFile file in RadAsyncUpload1.UploadedFiles select file)
            //    {
            //        var filePath = string.Format("~/Resources/Uploads/Images/{0}", file.FileName);
            //        file.SaveAs(Server.MapPath(filePath));
            //    }
            //}
        }
    }
}