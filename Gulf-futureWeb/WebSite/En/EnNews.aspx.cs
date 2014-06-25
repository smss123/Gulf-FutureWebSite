using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.EN
{
    public partial class EnNews : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        public  List<RealStatProfile> RealStatProfileList;
        public void btnSearch_Click(object sender, EventArgs e)
        {
            //from=1000&to=3000&locID=1&statusX=Sale&type=Buildings
            string from, to, locid, statusx, type;
            from = txtfrom.Text;
            to = txtTo.Text;
            locid = txtLoc.SelectedValue;
            type = txtEstatType.Text;
            statusx = txtStatus.Text;
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
