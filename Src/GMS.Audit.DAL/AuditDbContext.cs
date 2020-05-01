using System;
using GMS.Framework.DAL;
using GMS.Core.Config;
using System.Data.Entity.Infrastructure;
using System.Data.Entity;
using GMS.Audit.Contract;
using GMS.Core.Log;

namespace GMS.Audit.DAL
{
    public class AuditDbContext : DbContextBase
    {
        public AuditDbContext()
            : base(CachedConfigContext.Current.DaoConfig.Audit, new LogDbContext())
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<AuditDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Warehouse> Warehouses { get; set; }
        public DbSet<Scrap> Scraps { get; set; }
    }
}