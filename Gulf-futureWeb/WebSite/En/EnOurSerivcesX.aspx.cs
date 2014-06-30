using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.EN
{
    public partial class EnOurSerivcesX : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        public string ServiceName;
        public string ServiceDescription;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            db = new dbContext();
            Ourservice = db.OurServices.ToList();
            var id = Request.QueryString["SID"];
            if (id != null)
            {
                var sid = int.Parse(id);
                var q = db.OurServices.Where(p => p.Id == sid).SingleOrDefault();
                if (q != null)
                {
                    ServiceName = q.EnOurService;
                    ServiceDescription = q.EnDescription;
                }
                else
                {
                    ServiceName = "Error";
                    ServiceDescription = "Sorry This Service Not Available now";
                }
            }
            else
            {
                ServiceName = "Is not chosen service";
                ServiceDescription = "Is not chosen service ";
            }
        }
    }
}
