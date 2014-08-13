using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite
{
    public partial class About_Us : System.Web.UI.Page
    {
        public dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        public   string DbAboutUs;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            Ourservice = db.OurServices.ToList();
            try
            {
                db = new dbContext();
                DbAboutUs = db.AboutUs.ToList()[0].ArAboutUs;
            }
            catch (Exception ex)
            {
                DbAboutUs = "<div> <b> لا يوجد شئ لعرضه </b></div>";
            }
        }
    }
}
