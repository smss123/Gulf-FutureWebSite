using System;
using System.Collections.Generic;
using System.Linq;
using DataController;
using System.Threading.Tasks;
using System.Net.Mail;

namespace WebSite.EN
{
    public partial class EnAdd_a_Listing : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public List<OurService> Ourservice = new List<OurService>();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void Page_Init(object sender, EventArgs e)
        {
            Ourservice = db.OurServices.ToList();

            //txtCountry.DataSource = db.Conturies.ToList();
            //txtCountry.DataTextField = "EnContryName";
            //txtCountry.DataValueField = "Id";
            //txtCountry.DataBind();

            //txtCity.DataSource = db.Cities.ToList();
            //txtCity.DataTextField = "EnCityName";
            //txtCity.DataValueField = "Id";
            //txtCity.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                var ImagePath = "~/Resources/Uploads/Images/";
                LinkedResource attachimg1;
                LinkedResource attachimg2  ;
                LinkedResource attachimg3 ;
                LinkedResource attachimg4 ;
                LinkedResource attachimg5;


                var mailbody = "<label>  Fullname : </label>  " + txtFullname.Text + "<br /><hr />" +
                  "<label>email :</label>" + txtEmail.Text + "<br /><hr />" +
                  "<label>phone :</label>" + txtPhone.Text + " <br />  <hr />" +
                  "<label>Type :</label>" + txtEstatType.Text + "  <br /> <hr />" +
                  "<label> invesment:</label>" + txtinvsementType.Text + "<br /> <hr />" +
                  " <label>price :</label>" + txtPrice.Text + "<br /> <hr />" +
                  "<label>country:</label>" + txtCountry.Text + "<br /> <hr />" +
                  "<label>City :</label>" + txtCity.Text + "<br /> <hr />" +
                  "<label>location:</label>" + txtLocation.Text + "<br /> <hr />" +
                  "<label>decription:</label>" + txtDecription.Text + "<br /> <hr />" +
                  "<label>image 1</label> <img src=cid:img1>" + "<br /> <hr />" +
                  "<label>image 2</label><img src=cid:img2>" + "<br /> <hr />" +
                  "<label>image 3</label><img src=cid:img3>" + "<br /> <hr />" +
                  "<label>image 4</label><img src=cid:cid:img4>" + "<br /> <hr />" +
                  "<label>image 5</label><img src=cid:img5>" + "<br /> <hr />";
                var htmlMail = AlternateView.CreateAlternateViewFromString(mailbody, null, "text/html");
                htmlMail.LinkedResources.Clear();
                if (img1.HasFile)
                {
                    img1.PostedFile.SaveAs(Server.MapPath(ImagePath + img1.PostedFile.FileName));
                    var fnameimg1 = Server.MapPath(ImagePath + img1.PostedFile.FileName);
                    attachimg1 = new LinkedResource(fnameimg1);
                    attachimg1.ContentId = "img1";
                    htmlMail.LinkedResources.Add(attachimg1);
                }

                if (img2.HasFile)
                {
                    img2.PostedFile.SaveAs(Server.MapPath(ImagePath + img2.PostedFile.FileName));

                    var fnameimg2 = Server.MapPath(ImagePath + img2.PostedFile.FileName);
                    attachimg2 = new LinkedResource(fnameimg2);
                    attachimg2.ContentId = "img2";
                    htmlMail.LinkedResources.Add(attachimg2);
                }

                if (img3.HasFile)
                {
                    img3.PostedFile.SaveAs(Server.MapPath(ImagePath + img3.PostedFile.FileName));
                    var fnameimg3 = Server.MapPath(ImagePath + img3.PostedFile.FileName);
                    attachimg3 = new LinkedResource(fnameimg3);
                    attachimg3.ContentId = "img3";
                    htmlMail.LinkedResources.Add(attachimg3);
                }

                if (img4.HasFile)
                {
                    img4.PostedFile.SaveAs(Server.MapPath(ImagePath + img4.PostedFile.FileName));
                    var fnameimg4 = Server.MapPath(ImagePath + img4.PostedFile.FileName);
                    attachimg4 = new LinkedResource(fnameimg4);
                    attachimg4.ContentId = "img4";
                    htmlMail.LinkedResources.Add(attachimg4);
                }
                if (img5.HasFile)
                {
                    var t4 = Task.Factory.StartNew(() => img5.PostedFile.SaveAs(Server.MapPath(ImagePath + img5.PostedFile.FileName)));
                    t4.Wait();
                    var fnameimg1 = Server.MapPath(ImagePath + img1.PostedFile.FileName);
                    attachimg5 = new LinkedResource(fnameimg1);
                    attachimg5.ContentId = "img5";
                    htmlMail.LinkedResources.Add(attachimg5);
                }


                var Msg = new MailMessage("noreplay@gulf-future.com", "info@gulf-future.com");
                Msg.AlternateViews.Add(htmlMail);
                Msg.Subject = "New Order " + DateTime.Now.ToString();


                var smtp = new SmtpClient();
                smtp.Host = "smtp.gulf-future.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("noreplay@gulf-future.com", "123456");
                smtp.EnableSsl = false;
                smtp.Send(Msg);
                Msg = null;
                Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
