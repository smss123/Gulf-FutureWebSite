namespace DataController
{
    using System;
    using System.Collections.Generic;

    public partial class Contury
    {
        public Contury()
        {
            Cities = new HashSet<City>();
        }
        public int Id { get; set; }
        public string EnContryName { get; set; }
        public string ArDecription { get; set; }
        public string ArContryName { get; set; }
        public string EnDescription { get; set; }
        public virtual ICollection<City> Cities { get; set; }
    }
}
