namespace DataController
{
    using System;
    using System.Collections.Generic;

    public partial class WebSiteInfo
    {
        public int Id { get; set; }
        public string ArWebSiteName { get; set; }
        public string WebSitDescription { get; set; }
        public string WebsiteTags { get; set; }
        public string DefaultLanguge { get; set; }
        public string EnWebSiteName { get; set; }
        public string ArAdminTalk { get; set; }
        public string EnAdminTalk { get; set; }
    }
}
