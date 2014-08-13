using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite
{
    public partial class Default : System.Web.UI.Page
    {
        public dbContext db = new dbContext();
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
            // Distinctive  - عروض مميزة
            //Sale- للبيع
            //Rent - للايجار

            string CompType = "";
            string CompStatus = "";

            switch (txtStatus.Text)
            {
                case "عروض مميزة":
                    {
                        CompStatus = "Distinctive";
                        break;
                    }
                case "للبيع":
                    {
                        CompStatus = "Sale";
                        break;
                    }
                case "للايجار":
                    {
                        CompStatus = "Rent";
                        break;
                    }

                default:
                    break;
            }
            
            switch (txtEstatType.Text)
            {
                case "مبنى" :
                    {
                        CompType = "Buildings";
                        break;
                    }
                case "فيلا":
                    {
                        CompType = "Villas";
                        break;
                    }
                case "مكاتب":
                    {
                        CompType = "Offices";
                        break;
                    }
                case "قطعة ارض":
                    {
                        CompType = "Empty land";
                        break;
                    }
                default:
                    break;
            }
            string from,to, locid, statusx, type;
            from = txtfrom.Text;
            to = txtTo.Text;
            locid = txtLoc.SelectedValue;
            type = CompType;
            statusx = CompStatus;
            Response.Redirect("Search Results.aspx?from="+from+"&to="+to +"&locID="+locid+"&statusX="+statusx+"&type="+type);

        }
    }
}
