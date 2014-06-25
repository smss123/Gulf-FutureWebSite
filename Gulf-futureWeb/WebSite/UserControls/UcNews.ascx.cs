using System;
using System.Collections.Generic;
using System.Linq;

namespace WebSite.UserControls
{
    public partial class UcNews : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            EntityDataSource2.DataBind();
            Repeater1.DataBind();
        }
    }
}
