using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataController;
using System.Threading.Tasks;
namespace WebSite
{
    public partial class Add_a_Listing : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        void Page_Init(object sender, EventArgs e)
        {
            txtCountry.DataSource = db.Conturies.ToList();
            txtCountry.DataTextField = "ArContryName";
            txtCountry.DataValueField = "Id";
            txtCountry.DataBind();

            txtCity.DataSource = db.Cities.ToList();
            txtCity.DataTextField = "ArCityName";
            txtCity.DataValueField = "Id";
            txtCity.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string ImagePath = "~/Resources/Uploads/Images/";
                if (img1.HasFile)
                {
                    var t = Task.Factory.StartNew(() => img1.PostedFile.SaveAs(Server.MapPath(ImagePath + img1.PostedFile.FileName)));
                    t.Wait();  
                }

                if (img2.HasFile)
                {
                    var t1 = Task.Factory.StartNew(() => img2.PostedFile.SaveAs(Server.MapPath(ImagePath + img2.PostedFile.FileName)));
                    t1.Wait();
                }

                if (img3.HasFile)
                {
                    var t2 = Task.Factory.StartNew(() => img3.PostedFile.SaveAs(Server.MapPath(ImagePath + img3.PostedFile.FileName)));
                    t2.Wait();
                }

                if (img4.HasFile)
                {
                    var t3 = Task.Factory.StartNew(() => img4.PostedFile.SaveAs(Server.MapPath(ImagePath + img4.PostedFile.FileName)));
                    t3.Wait();
                }
                if (img5.HasFile)
                {
                    var t4 = Task.Factory.StartNew(() => img5.PostedFile.SaveAs(Server.MapPath(ImagePath + img5.PostedFile.FileName)));
                    t4.Wait();
                }
               


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
              
            }
        }

      
    }
}