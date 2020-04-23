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

        public DbSet<InTable> InTables { get; set; }
        public DbSet<InManage> InManages { get; set; }
        public DbSet<TongsEntity> TongsEntitys { get; set; }
    }
}
