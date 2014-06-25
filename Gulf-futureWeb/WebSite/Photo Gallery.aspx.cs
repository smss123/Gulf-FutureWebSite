using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite
{
    public partial class Photo_Gallery : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            Ourservice = db.OurServices.ToList();
        }
    }
}
