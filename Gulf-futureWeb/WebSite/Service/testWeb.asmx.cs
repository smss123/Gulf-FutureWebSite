using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Script.Services;
using System.Web.Services;
using DataController;

namespace WebSite.Service
{
    /// <summary>
    /// Summary description for testWeb
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class testWeb : System.Web.Services.WebService
    {
        private dbContext db = new dbContext();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        [ScriptMethod( ResponseFormat = ResponseFormat.Json)]
        public List<Contury> GetAll()
        {
            db.Configuration.LazyLoadingEnabled = false;
            db.Configuration.ProxyCreationEnabled = false;
            return  db.Conturies.ToList();
        }
    }
}
