using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite
{
    public partial class Default : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public List<SlideConfig> Slides = new List<SlideConfig>();
        public List<OurNews> Ournews = new List<OurNews>();
        public string AdminWork;
        public List<OurService> Ourservice = new List<OurService>();
        public List<RealStatProfile> realstate = new List<RealStatProfile>();
        string lang;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        private void Page_Init(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
            //    try
            //    {
            //        string la = db.WebSiteInfoes.ToList()[0].DefaultLanguge;
            //        if (la != "arabic")
            //        {
            //            Response.AddHeader("samer", "Default.aspx?lan=en");
            //            Response.Redirect("Default.aspx?lan=en");
            //            return;
            //        }
            //        else
            //        {
            //            Response.Redirect("Default.aspx?lan=ar");
            //            return;
            //        }
            //    }
            //    catch (Exception ex)
            //    {


            //    } 
            

            db = new dbContext();
            db.Configuration.LazyLoadingEnabled = false;
            db.Configuration.ProxyCreationEnabled = false;
            Slides = db.SlideConfigs.ToList();
            Ournews = db.OurNews.ToList();
            Ourservice = db.OurServices.ToList();
            realstate = new List<RealStatProfile>();
            realstate = db.RealStatProfiles.ToList();
            try
            {
                AdminWork = db.WebSiteInfoes.ToList()[0].ArAdminTalk;
            }
            catch (Exception)
            {
                AdminWork = "لا يوجد شئ لعرضه";
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
