namespace DataController
{
    using System;
    using System.Collections.Generic;

    public partial class Location
    {
        public Location()
        {
            RealStatProfiles = new HashSet<RealStatProfile>();
        }
        public int Id { get; set; }
        public string ArLocationName { get; set; }
        public string ArLocationDescrition { get; set; }
        public int CityId { get; set; }
        public string EnLocationName { get; set; }
        public string EnDescription { get; set; }
        public virtual City City { get; set; }
        public virtual ICollection<RealStatProfile> RealStatProfiles { get; set; }
    }
}
