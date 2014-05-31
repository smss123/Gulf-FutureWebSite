using System;
using System.Collections.Generic;
using System.Linq;
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
        
            EntityDataSource1.DataBind();
            CityDataSource.DataBind();
            GrdCities.DataBind();
        }

        protected void FormView1_ItemInserted(object sender, System.Web.UI.WebControls.FormViewInsertedEventArgs e)
        {
            EntityDataSource1.DataBind();
            CityDataSource.DataBind();
            GrdCities.DataBind();
            lblmsg.Text = "<div class='alert alert-success'>" +
                                "<button class='close data-dismiss=alert'>&times;</button>" +
                                "<strong>Success!</strong> Your City Has Been Saved" +
                                "</div>";
        }
    }
}
