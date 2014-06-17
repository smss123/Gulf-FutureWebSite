using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite.WebSiteControlPanal
{
    public partial class ServiceMange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
        {
          lblmsg.Text=  "<div class='alert alert-success'> " +
                       "<button class='close' data-dismiss='alert'>&times;</button>" +
                       "<strong>Success!</strong> You Data Has been Saved" +
                       "</div>";
        }

        protected void EntityDataSource1_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            lblmsg.Text = "<div class='alert alert-info'> " +
                      "<button class='close' data-dismiss='alert'>&times;</button>" +
                      "<strong>Success!</strong> You Data Has been Deleted" +
                      "</div>";
        }

        protected void EntityDataSource1_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            lblmsg.Text = "<div class='alert alert-info'> " +
                      "<button class='close' data-dismiss='alert'>&times;</button>" +
                      "<strong>Success!</strong> You Data Has been Updated" +
                      "</div>";
        }
    }
}