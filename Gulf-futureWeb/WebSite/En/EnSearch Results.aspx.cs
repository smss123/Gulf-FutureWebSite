using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataController;

namespace WebSite.EN
{
    public partial class EnSearch_Results : System.Web.UI.Page
    {
        public List<RealStatProfile> RealStatProfileList = new List<RealStatProfile>();
        private dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
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

        void Page_Init(object sender, EventArgs e)
        {
            Ourservice = db.OurServices.ToList();
            RealStatProfileList = db.RealStatProfiles.Where(p => p.isInMasterPage == "True").Take(5).ToList();
        }
    }
}