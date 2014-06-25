using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.EN
{
    public partial class EnDefault : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public List<SlideConfig> Slides = new List<SlideConfig>();
        public List<OurNews> Ournews = new List<OurNews>();
        public string AdminWork;
        public List<OurService> Ourservice = new List<OurService>();
        public List<RealStatProfile> realstate = new List<RealStatProfile>();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            db = new dbContext();
            Slides = db.SlideConfigs.ToList();
            Ournews = db.OurNews.ToList();
            Ourservice = db.OurServices.ToList();
            realstate = new List<RealStatProfile>();
            realstate = db.RealStatProfiles.ToList();
            try
            {
                AdminWork = db.WebSiteInfoes.ToList()[0].EnAdminTalk;
            }
            catch (Exception)
            {
                AdminWork = "No any item To Show";
            }
        }

   

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //from=1000&to=3000&locID=1&statusX=Sale&type=Buildings
            string from,to, locid, statusx, type;
            from = txtfrom.Text;
            to = txtTo.Text;
            locid = txtLoc.SelectedValue;
            type = txtEstatType.Text;
            statusx = txtStatus.Text;
            Response.Redirect("Search Results.aspx?from="+from+"&to="+to +"&locID="+locid+"&statusX="+statusx+"&type="+type);

        }
    }
}
