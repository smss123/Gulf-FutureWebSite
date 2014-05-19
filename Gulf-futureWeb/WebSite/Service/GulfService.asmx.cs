using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
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
        [ScriptMethod(ResponseFormat = ResponseFormat.Json,UseHttpGet=true)]
        public void AboutUsEdit()
        {
            string Ar, en;
            try
            {
               
                AboutU u = new AboutU();
                Ar= Context.Request["ArName"];
                en= Context.Request["EnName"];
                u = db.AboutUs.ToList()[0];
                u.ArAboutUs = Ar;
                u.EnAboutUs = en;
                db.SaveChanges();
               
            }
            catch (System.ArgumentOutOfRangeException ex)
            {
                Ar = Context.Request["ArName"];
                en = Context.Request["EnName"];
                AboutU u = new AboutU() { ArAboutUs = Ar, EnAboutUs = en };
                db.AboutUs.Add(u);
                db.SaveChanges();
               
            }

        }

        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void AboutUsLoad()
        {
            AboutU u = new AboutU();
            JavaScriptSerializer serialize = new JavaScriptSerializer();
            try
            {

                u = db.AboutUs.ToList()[0];
                var json = serialize.Serialize(u);
                Context.Response.Write(json);
            }
            catch (Exception)
            {
                u.ArAboutUs = "[new]-";
                u.EnAboutUs = "[new]-";
                var json = serialize.Serialize(u);
                Context.Response.Write(json);
            }
        }
        #endregion


        //-------------------------------------------------------------------
        #region"contries"
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void CountryCreate()
        {

            int id;
            string Arname, EnName, EnDescription, ArDescription;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"]);

            Arname = Context.Request["ArName"];
            EnName = Context.Request["EnName"];
            EnDescription = Context.Request["EnDescription"];
            ArDescription = Context.Request["ArDescription"];

            Contury c = new Contury()
            {
                ArContryName = Arname,
                ArDecription = ArDescription,
                EnContryName = EnName,
                EnDescription = EnDescription
            };

            db.Conturies.Add(c);
            db.SaveChanges();
           
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void CountryEdit()
        {
            int id=0;
            string Arname, EnName, EnDescription, ArDescription;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"]);

            Arname = Context.Request["ArName"];
            EnName = Context.Request["EnName"];
            EnDescription = Context.Request["EnDescription"];
            ArDescription = Context.Request["ArDescription"];


            var q = db.Conturies.Where(p => p.Id == id).SingleOrDefault();
            q.ArContryName = Arname;
            q.ArDecription = ArDescription;
            q.EnContryName = EnName;
            q.EnDescription = EnDescription;
            db.SaveChanges();
           
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void CountryDelete()
        {
            int id=0;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"]);

            var q = db.Conturies.Where(p => p.Id == id).SingleOrDefault();
            db.Conturies.Remove(q);
            db.SaveChanges();
           
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void CountryGetById()
        {
            int id=0;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"]);
            var q = db.Conturies.Where(p => p.Id == id).SingleOrDefault();
            JavaScriptSerializer serialize = new JavaScriptSerializer();
            var json = serialize.Serialize(q);
            Context.Response.Write(json);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void CountryGetAll()
        {

            db.Configuration.LazyLoadingEnabled = false;
            db.Configuration.ProxyCreationEnabled = false;
            JavaScriptSerializer serialize = new JavaScriptSerializer();
            var json = serialize.Serialize(db.Conturies.ToList());
            Context.Response.Write(json); 
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void GetByName(string ArName)
        {
            string Name;
            if (Context.Request["Name"] != null)
                Name = Context.Request["Name"];
            var q = db.Conturies.Where(p => p.ArContryName == ArName).SingleOrDefault();
            JavaScriptSerializer serialize = new JavaScriptSerializer();
            var json = serialize.Serialize(q);
            Context.Response.Write(json); 
        }

        #endregion
        //-------------------------------------------------------------------

        //-------------------------------
        #region "User"

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void UserCreate()
        {
            //Email = "", FullName = "", UserName="", Password="" 
            string email, fullname, username, password;
            email = Context.Request["email"];
            fullname = Context.Request["fullname"];
            username = Context.Request["username"];
            password = Context.Request["password"];

            DataController.User u = new User()
            {
                Email = email,
                FullName = fullname,
                UserName = username,
                Password = password
            };
            db.Users.Add(u);
            db.SaveChanges();
           
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void UserEdit()
        {
            string username, password, email, fullname;
            int id=0;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"].ToString());
            username = Context.Request["UserName"];
            password = Context.Request["Pwd"];
            email = Context.Request["email"];
            fullname = Context.Request["fullname"];

            var q = (db.Users.Where(p => p.Id == id)).SingleOrDefault();
            q.UserName = username;
            q.Password = password;
            q.FullName = fullname;
            q.Email = email;
            db.SaveChanges();
           
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void UserDelete(){
            int id=0;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"]);
            var q = db.Users.Where(p => p.Id == id).SingleOrDefault();
            db.Users.Remove(q);
            db.SaveChanges();
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void UserGetAll()
        {
            JavaScriptSerializer ser = new JavaScriptSerializer();
            var json = ser.Serialize(db.Users.ToList());
            Context.Response.Write(json);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void UserGetById()
        {
            int id=0;
            if (Context.Request["ID"] != null)
                id = int.Parse(Context.Request["ID"]);
            var q = db.Users.Where(p => p.Id == id).SingleOrDefault();
            JavaScriptSerializer ser = new JavaScriptSerializer();
            var json = ser.Serialize(q);
            Context.Response.Write(json);

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public void UserLogin()
        {
            string username, pwd;
            username = Context.Request["UserName"];
            pwd = Context.Request["Password"];
            var q = (from i in db.Users where i.UserName == username && i.Password == pwd select i).ToList();
            if (q.Count == 0 || q.Count == -1)
                Context.Response.Write("Ok");
            else
                Context.Response.Write("notOk");
        }
        #endregion


    }
}
