namespace DataController
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class dbContext : DbContext
    {
        public dbContext()
            : base("name=dbContext")
        {
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
        public virtual DbSet<AboutU> AboutUs { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<Contury> Conturies { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<OurService> OurServices { get; set; }
        public virtual DbSet<RealStatProfile> RealStatProfiles { get; set; }
        public virtual DbSet<SlideConfig> SlideConfigs { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<WebSiteInfo> WebSiteInfoes { get; set; }
        public virtual DbSet<Contacts> Contacts { get; set; }
        public virtual DbSet<PhotoGellary> PhotoGellaries { get; set; }
        public virtual DbSet<OurNews> OurNews { get; set; }
    }
}
