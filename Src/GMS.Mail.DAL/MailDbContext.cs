using System;
using GMS.Framework.DAL;
using GMS.Core.Config;
using System.Data.Entity.Infrastructure;
using System.Data.Entity;
using GMS.Mail.Contract;
using GMS.Core.Log;

namespace GMS.Mail.DAL
{
    public class MailDbContext : DbContextBase
    {
        public MailDbContext()
            : base(CachedConfigContext.Current.DaoConfig.Mail, new LogDbContext())
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<MailDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }
    }
}