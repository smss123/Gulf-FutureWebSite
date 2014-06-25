using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.EN
{
    public partial class EnPhoto_Gallery : System.Web.UI.Page
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
