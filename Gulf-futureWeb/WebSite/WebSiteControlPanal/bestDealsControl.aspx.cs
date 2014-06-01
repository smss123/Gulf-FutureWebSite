using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using DataController;
namespace WebSite.WebSiteControlPanal
{
    public partial class bestDealsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            dbContext db = new dbContext();
            try
            {
                Contury con = new Contury()
                {
                    ArContryName = txtArCountryName.Text,
                    ArDecription = txtArCountryDescription.Text,
                    EnContryName = txtEnCountryName.Text,
                    EnDescription = txtEnCountryDescription.Text
                };
                db.Conturies.Add(con);
                db.SaveChanges();
                lblmsg.Text = "<div class='alert alert-success'>" +
                                 "<button class='close data-dismiss=alert'>&times;</button>" +
                                 "<strong>Success!</strong> Your Country Has Been Saved" +
                                 "</div>";
                CountryDataSource.DataBind();
                GrdCountry.DataBind();
            }
            catch (Exception ex)
            {

                lblmsg.Text = "<div class='alert alert-error'>" +
                                  "<button class='close data-dismiss=alert'>&times;</button>" +
                                  "<strong>Error!</strong> " + ex.Message +
                                  "</div>";
            }

            ReBind();
            //DropDownList drop = FormView1.FindControl("txtcounties") as DropDownList;
            //drop.DataSource = EntityDataSource1;
            //drop.DataBind();
           
            
            
        }

        private void ReBind()
        {
            CountryDataSource.DataBind();
            CityDataSource.DataBind();
            LocalizeDataSource.DataBind();
            EntityDataSource1.DataBind();
            FormView1.DataBind();
            FormView2.DataBind();
        }

        protected void FormView1_ItemInserted(object sender, System.Web.UI.WebControls.FormViewInsertedEventArgs e)
        {
           
            lblmsg.Text = "<div class='alert alert-success'>" +
                                "<button class='close data-dismiss=alert'>&times;</button>" +
                                "<strong>Success!</strong> Your City Has Been Saved" +
                                "</div>";
            ReBind();
        }
    }
}
