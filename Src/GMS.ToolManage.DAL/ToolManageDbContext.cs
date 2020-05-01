using System;
using GMS.Framework.DAL;
using GMS.Core.Config;
using System.Data.Entity.Infrastructure;
using System.Data.Entity;
using GMS.ToolManage.Contract;
using GMS.Core.Log;

namespace GMS.ToolManage.DAL
{
    public class ToolManageDbContext : DbContextBase
    {
        public ToolManageDbContext()
            : base(CachedConfigContext.Current.DaoConfig.ToolManage, new LogDbContext())
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<ToolManageDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }
        public DbSet<tongs_entity> tongs_entitys { get; set; }
        public DbSet<outstorage> outstorages { get; set; }
    }
}
