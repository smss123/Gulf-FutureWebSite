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
            txtLocation.DataBind();
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
            GrdCountry.DataBind();
            GrdCities.DataBind();
            GridView1.DataBind();
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
            string firstPath;
            firstPath = @"~\Resources\Uploads\Images\";
            img1.PostedFile.SaveAs(Server.MapPath(firstPath+"\\"+img1.PostedFile.FileName));
            img2.PostedFile.SaveAs(Server.MapPath(firstPath + "\\" + img2.PostedFile.FileName));
            img3.PostedFile.SaveAs(Server.MapPath(firstPath + "\\" + img3.PostedFile.FileName));
            img4.PostedFile.SaveAs(Server.MapPath(firstPath + "\\" + img4.PostedFile.FileName));
            dbContext db = new dbContext();
            RealStatProfile rl = new RealStatProfile()
            {
                ArTitle = txtArTitle.Text,
                ArDescription = txtArDescription.Text,
                EnTitle = txtEnTitle.Text,
                EnDescription = txtEnDescription.Text,
                price = txtPrice.Text,
                LocationId = int.Parse(txtLocation.SelectedValue),
                image1 = firstPath + "\\" + img1.PostedFile.FileName,
                image2 = firstPath + "\\" + img2.PostedFile.FileName,
                image3 = firstPath + "\\" + img3.PostedFile.FileName,
                Image4 = firstPath + "\\" + img4.PostedFile.FileName

            };
            db.RealStatProfiles.Add(rl);
            lblmsg.Text = "<div class='alert alert-success'>" +
                                "<button class='close data-dismiss=alert'>&times;</button>" +
                                "<strong>Success!</strong> Your Real State Has Been Saved" +
                                "</div>";
            ReBind();

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
