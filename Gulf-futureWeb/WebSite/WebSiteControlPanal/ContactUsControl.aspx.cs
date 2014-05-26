using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using DataController;

namespace WebSite.WebSiteControlPanal
{
    public partial class ContactUsControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void Page_Init(object sender, EventArgs e)
        {
            try
            {
                var db = new  dbContext();
                var q = db.Contacts.ToList()[0];
                EnEditor.Content = q.ArContact;
                ArEdior.Content = q.EnContact;
                txtFacebook.Text = q.Fb;
                txtGooglePlus.Text = q.googleplus;
                txtinstegram.Text = q.instegram;
                txtLinkedIn.Text = q.linkedIn;
                txtTweeter.Text = q.tweeter;
                txtYouTube.Text = q.youtube;
            }
            catch (Exception)
            {

                //EnEditor.Content = "[New Ar Contact ]"
                //ArEdior.Content = "[New En Contact]";
                //txtFacebook.Text = "[FaceBook]";
                //txtGooglePlus.Text = q.googleplus;
                //txtinstegram.Text = q.instegram;
                //txtLinkedIn.Text = q.linkedIn;
                //txtTweeter.Text = q.tweeter;
                //txtYouTube.Text = q.youtube;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           dbContext db = new dbContext();
           try
           {
                  var q = db.Contacts.ToList()[0];
                  if (q != null)
                  {
                      q.ArContact = ArEdior.Content;
                      q.EnContact = EnEditor.Content;
                      q.Fb = txtFacebook.Text;
                      q.tweeter = txtTweeter.Text;
                      q.youtube = txtYouTube.Text;
                      q.googleplus = txtGooglePlus.Text;
                      q.instegram = txtinstegram.Text;
                      q.linkedIn = txtLinkedIn.Text;

                      db.Configuration.ValidateOnSaveEnabled = false;
                    

                      db.SaveChanges();
                      lblmsg.Text = "<div class='alert alert-success'> " +
                            "<button class='close' data-dismiss='alert'>&times;</button>" +
                            "<strong>Success!</strong> You Data Has been Saved" +
                            "</div>";

                  }
           }
           catch (ArgumentOutOfRangeException ex)
           {

               var con = new Contacts()
               {
                   ArContact = ArEdior.Content,
                   EnContact = EnEditor.Content,
                   Fb = txtFacebook.Text,
                   tweeter = txtTweeter.Text,
                   youtube = txtYouTube.Text,
                   googleplus = txtGooglePlus.Text,
                   instegram = txtinstegram.Text,
                   linkedIn = txtLinkedIn.Text,
               };
               
               db.Contacts.Add(con);
               //db.Configuration.ValidateOnSaveEnabled = false;
                    
               db.SaveChanges();
               lblmsg.Text = "<div class='alert alert-success'> " +
                            "<button class='close' data-dismiss='alert'>&times;</button>" +
                            "<strong>Success!</strong> You Data Has been Saved" +
                            "</div>";
           }
           catch (DbEntityValidationException dbEx)
           {
               foreach (var validationErrors in dbEx.EntityValidationErrors)
               {
                   foreach (var validationError in validationErrors.ValidationErrors)
                   {
                       lblmsg.Text = string.Format("Class: {0}, Property: {1}, Error: {2}", validationErrors.Entry.Entity.GetType().FullName,
                                     validationError.PropertyName, validationError.ErrorMessage);
                   }
               }
           }
            
        }
    }
}
