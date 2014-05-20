using System;
using System.Collections.Generic;
using System.Linq;

namespace WebSite.WebSiteControlPanal
{
    public partial class PhotoGellaryControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RadAsyncUpload1_FileUploaded(object sender, Telerik.Web.UI.FileUploadedEventArgs e)
        {
            e.File.SaveAs(Server.MapPath(String.Format(@"~/Resources/Uploads/Images/{0}", e.File.GetName())));
        }
    }
}
