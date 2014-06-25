using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.EN
{
    public partial class EnAbout_Us : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
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
                DbAboutUs = db.AboutUs.ToList()[0].EnAboutUs;
            }
            catch (Exception ex)
            {
                DbAboutUs = "<div> <b> No Any Item To Show Here </b></div>";
            }
        }
    }
}
