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
    
    public partial class Location
    {
        public Location()
        {
            this.RealStatProfiles = new List<RealStatProfile>();
        }
    
        public int Id { get; set; }
        public string LocationName { get; set; }
        public string Descrition { get; set; }
        public int CityId { get; set; }
    
        public virtual City City { get; set; }
        public virtual List<RealStatProfile> RealStatProfiles { get; set; }
    }
}
