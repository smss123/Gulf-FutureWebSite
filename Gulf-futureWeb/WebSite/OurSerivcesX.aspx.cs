﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataController;
namespace WebSite
{
    public partial class OurSerivcesX : System.Web.UI.Page
    {
        private dbContext db = new dbContext();
        public string ServiceName;
        public string ServiceDescription;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void Page_Init(object sender, EventArgs e)
        {
            db = new dbContext();
            string id = Request.QueryString["SID"];
            if (id!=null)
            {
                int sid = int.Parse(id);
                var q = db.OurServices.Where(p => p.Id == sid).SingleOrDefault();
                if (q != null)
                {
                    ServiceName = q.ArOurService;
                    ServiceDescription = q.ArDescription;
                }
                else
                {
                    ServiceName = "خطأ";
                    ServiceDescription = "للأسف لم تعد هذه الخدمة متوفرة الان";
                }
               
            }
            else
            {
                ServiceName = "لم يتم اختيار خدمة";
                ServiceDescription = "لم يتم اختيار خدمة ";
            }
        }
    }
}