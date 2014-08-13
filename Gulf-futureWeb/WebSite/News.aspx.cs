using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite
{
    public partial class News : System.Web.UI.Page
    {
        public dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        public  List<RealStatProfile> RealStatProfileList;
        public void btnSearch_Click(object sender, EventArgs e)
        {
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
                case "مبنى":
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
            string from, to, locid, statusx, type;
            from = txtfrom.Text;
            to = txtTo.Text;
            locid = txtLoc.SelectedValue;
            type = CompType;
            statusx = CompStatus;
            Response.Redirect("Search Results.aspx?from=" + from + "&to=" + to + "&locID=" + locid + "&statusX=" + statusx + "&type=" + type);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            RealStatProfileList = db.RealStatProfiles.Where(p => p.isInMasterPage == "True").Take(6).ToList();
            Ourservice = db.OurServices.ToList();
        }
    }
}
