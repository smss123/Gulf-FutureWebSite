//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataController
{
    using System;
    using System.Collections.Generic;
    
    public partial class RealStatProfile
    {
        public int Id { get; set; }
        public string ArTitle { get; set; }
        public string ArDescription { get; set; }
        public string price { get; set; }
        public string image1 { get; set; }
        public string image2 { get; set; }
        public string image3 { get; set; }
        public int LocationId { get; set; }
        public string EnTitle { get; set; }
        public string EnDescription { get; set; }
    
        public virtual Location Location { get; set; }
    }
}
