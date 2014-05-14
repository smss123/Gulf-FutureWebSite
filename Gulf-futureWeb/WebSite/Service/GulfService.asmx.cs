using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DataController;
namespace WebSite.Service
{
    /// <summary>
    /// Summary description for GulfService
    /// </summary>
    [WebService(Namespace = "http://gulf-future.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class GulfService : System.Web.Services.WebService
    {
        private dbContext db = new dbContext();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        #region"AboutUs"
        [WebMethod]
        public bool AboutUsEdit(string Ar, string en)
        {
            try
            {
                AboutU u = new AboutU();
                u = db.AboutUs.ToList()[0];
                u.ArAboutUs = Ar;
                u.EnAboutUs = en;

                //  db.AboutUs.Add(u);
                db.SaveChanges();
                return true;
            }
            catch (System.ArgumentOutOfRangeException ex)
            {

                AboutU u = new AboutU();

                u.ArAboutUs = Ar;
                u.EnAboutUs = en;

                db.AboutUs.Add(u);
                db.SaveChanges();
                return true;
            }

        }

        [WebMethod]
        public AboutU AboutUsLoad()
        {
            AboutU u = new AboutU();
            try
            {

                u = db.AboutUs.ToList()[0];
                return u;
            }
            catch (Exception)
            {

                u.ArAboutUs = "[new]";
                u.EnAboutUs = "[new]";
                return u;
            }
        }
        #endregion


        //-------------------------------------------------------------------
        #region"contries"
        [WebMethod]
        public bool ContoryCreate(string Arname, string EnName, string EnDescription, string ArDescription)
        {
            Contury c = new Contury()
            {
                ArContryName = Arname,
                ArDecription = ArDescription,
                EnContryName = EnName,
                EnDescription = EnDescription
            };

            db.Conturies.Add(c);
            db.SaveChanges();
            return true;
        }

        [WebMethod]
        public bool ControyEdit(int id, string Arname, string EnName, string EnDescription, string ArDescription)
        {
            var q = db.Conturies.Where(p => p.Id == id).SingleOrDefault();
            q.ArContryName = Arname;
            q.ArDecription = ArDescription;
            q.EnContryName = EnName;
            q.EnDescription = EnDescription;
            db.SaveChanges();
            return true;
        }
        [WebMethod]
        public bool ControyDelete(int id)
        {
            var q = db.Conturies.Where(p => p.Id == id).SingleOrDefault();
            db.Conturies.Remove(q);
            db.SaveChanges();
            return true;
        }

        [WebMethod]
        public Contury GetById(int id)
        {
            var q = db.Conturies.Where(p => p.Id == id).SingleOrDefault();
            return q;
        }
        [WebMethod]
        public List<Contury> GetAll()
        {
            return db.Conturies.ToList();
        }

        [WebMethod]
        public Contury GetByName(string ArName)
        {
            var q = db.Conturies.Where(p => p.ArContryName == ArName).SingleOrDefault();
            return q;
        }

        #endregion
        //-------------------------------------------------------------------

        //-------------------------------
        #region "User"

        public bool UserCreate()
        {
            DataController.User u = new User() { Email = "", FullName = "" };
            return true;
        }
        #endregion


    }
}
