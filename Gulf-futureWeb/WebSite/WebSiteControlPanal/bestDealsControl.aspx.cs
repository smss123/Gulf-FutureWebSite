using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using DataController;
using System.Threading.Tasks;

namespace WebSite.WebSiteControlPanal
{
    public partial class bestDealsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLocation.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var db = new dbContext();
            try
            {
                var con = new Contury()
                { ArContryName = txtArCountryName.Text,
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
        }

        private void ReBind()
        {
            CountryDataSource.DataBind();
            CityDataSource.DataBind();
            LocalizeDataSource.DataBind();
            EntityDataSource1.DataBind();
            FormView1.DataBind();
            FormView2.DataBind();
            GrdCountry.DataBind();
            GrdCities.DataBind();
            GridView1.DataBind();
            RealStateDataSource.DataBind();
            GridViewRealState.DataBind();
        }

        protected void FormView1_ItemInserted(object sender, System.Web.UI.WebControls.FormViewInsertedEventArgs e)
        {
            lblmsg.Text = "<div class='alert alert-success'>" +
                                "<button class='close data-dismiss=alert'>&times;</button>" +
                                "<strong>Success!</strong> Your City Has Been Saved" +
                                "</div>";
            ReBind();
        }

        protected void BtnSaveLocaltion_Click(object sender, EventArgs e)
        {
            try
            {
                string firstPath;
                firstPath = @"../Resources/Uploads/Images/";
                var t = Task.Factory.StartNew(() => img1.PostedFile.SaveAs(Server.MapPath(firstPath + img1.PostedFile.FileName)));
                t.Wait();
                var t1 = Task.Factory.StartNew(() => img2.PostedFile.SaveAs(Server.MapPath(firstPath + img2.PostedFile.FileName)));
                t1.Wait();
                var t2 = Task.Factory.StartNew(() => img3.PostedFile.SaveAs(Server.MapPath(firstPath + img3.PostedFile.FileName)));
                t2.Wait();
                var t3 = Task.Factory.StartNew(() => img4.PostedFile.SaveAs(Server.MapPath(firstPath + img4.PostedFile.FileName)));
                t3.Wait();
                var db = new dbContext();
                var rl = new RealStatProfile()
                { ArTitle = txtArTitle.Text,
                    ArDescription = txtArDescription.Text,
                    EnTitle = txtEnTitle.Text,
                    EnDescription = txtEnDescription.Text,
                    price = txtPrice.Text,
                    EstatType = txtEstatType.Text,
                    status = txtStatus.Text,
                    isInMasterPage = txtisInMasterPage.Checked.ToString(),
                    LocationId = int.Parse(txtLocation.SelectedValue),
                  image1 = firstPath + img1.PostedFile.FileName,
                  image2 = firstPath + img2.PostedFile.FileName,
                  image3 = firstPath + img3.PostedFile.FileName,
                  Image4 = firstPath + img4.PostedFile.FileName

                };
                db.RealStatProfiles.Add(rl);
                db.SaveChanges();
                lblmsg.Text = "<div class='alert alert-success'>" +
                                    "<button class='close data-dismiss=alert'>&times;</button>" +
                                    "<strong>Success!</strong> Your Real State Has Been Saved" +
                                    "</div>";
                ReBind();
            }
            catch (Exception ex)
            {
                lblmsg.Text = "<div class='alert alert-error'>" +
                                   "<button class='close data-dismiss=alert'>&times;</button>" +
                                   "<strong>Error!</strong> " + ex.Message +
                                   "</div>";
            }
        }

        protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
        }

        protected void FormView2_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            ReBind();
        }
    }
}
