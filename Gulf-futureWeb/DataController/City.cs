namespace DataController
{
    using System;
    using System.Collections.Generic;

    public partial class City
    {
        public City()
        {
            Locations = new HashSet<Location>();
        }
        public int Id { get; set; }
        public string ArCityName { get; set; }
        public string ArDecription { get; set; }
        public int ConturyId { get; set; }
        public string EnCityName { get; set; }
        public string EnDescription { get; set; }
        public virtual ICollection<Location> Locations { get; set; }
        public virtual Contury Contury { get; set; }
    }
}
