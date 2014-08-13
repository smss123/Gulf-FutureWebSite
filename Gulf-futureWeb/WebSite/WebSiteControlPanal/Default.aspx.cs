using System;
using System.Collections.Generic;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class Default : System.Web.UI.Page
    {
        private dbContext db = new dbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            var q = (from i in db.Users
                     where i.UserName == txtUserName.Text && i.Password == txtPassword.Text
                     select i).ToList();
            if (q.Count !=0)
            {
                Response.Redirect("WebSiteName.aspx");
            }
            else
            {
                lblmsg.Text = "<div class='alert alert-info'> " +
                     "<button class='close' data-dismiss='alert'>&times;</button>" +
                     "<strong>Success!</strong> Please Enter Correct Login info" +
                     "</div>";
            }
        }
    }
}
