using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataController;
namespace WebSite
{
    public partial class About_Us : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
     public   string DbAboutUs;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void Page_Init(object sender, EventArgs e)
        {
            db = new dbContext();
            DbAboutUs = db.AboutUs.ToList()[0].ArAboutUs;
        }
    }
}