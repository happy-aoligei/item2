using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GMS.Audit.Contract;
using GMS.Audit.DAL;
using GMS.Framework.Utility;
using System.Data.Objects;
using GMS.Framework.Contract;
using EntityFramework.Extensions;
using GMS.Core.Cache;
using GMS.Core.Config;

namespace GMS.Audit.BLL
{
    public class AuditService : IAuditService
    {
        //搜索功能
        public IEnumerable<Warehouse> GetWarehouseList(WarehouseRequest request = null)
        {
            request = request ?? new WarehouseRequest();
            using (var dbContext = new AuditDbContext())
            {
                IQueryable<Warehouse> Warehouses = dbContext.Warehouses;
                if (request != null)
                {
                    if (!string.IsNullOrEmpty(request.buyoff))
                        Warehouses = Warehouses.Where(u => u.buyoff.Contains(request.buyoff));
                    if (!string.IsNullOrEmpty(request.Owner))
                        Warehouses = Warehouses.Where(u => u.Owner.Contains(request.Owner));
                    if (!string.IsNullOrEmpty(request.AuditState)&&request.AuditState!="全部")
                        Warehouses = Warehouses.Where(u => u.AuditState == request.AuditState);
                }
                return Warehouses.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public Warehouse GetWarehouse(int id)
        {
            using (var dbContext = new AuditDbContext())
            {
                return dbContext.Warehouses.Where(u => u.ID == id).SingleOrDefault();
            }
        }
        public void SaveWarehouse(Warehouse Data)
        {
            using (var dbContext = new AuditDbContext())
            {
                if (Data.ID > 0)
                {
                    dbContext.Update<Warehouse>(Data);
                }
                else
                {
                    dbContext.Insert<Warehouse>(Data);
                }
            }
        }
        public void DeleteWarehouse(List<int> ids)
        {
            using (var dbContext = new AuditDbContext())
            {
                dbContext.Warehouses.Where(u => ids.Contains(u.ID)).Delete();
            }
        }

        public IEnumerable<Scrap> GetScrapList(ScrapRequest request = null)
        {
            request = request ?? new ScrapRequest();
            using (var dbContext = new AuditDbContext())
            {
                IQueryable<Scrap> Scraps = dbContext.Scraps;
                if (request != null)
                {
                    if (!string.IsNullOrEmpty(request.Code))
                        Scraps = Scraps.Where(u => u.Code.Contains(request.Code));
                    if (request.SeqID != 0)
                        Scraps = Scraps.Where(u => u.SeqID == request.SeqID);
                }
                return Scraps.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public Scrap GetScrap(int id)
        {
            using (var dbContext = new AuditDbContext())
            {
                return dbContext.Scraps.Where(u => u.ID == id).SingleOrDefault();
            }
        }
        public void SaveScrap(Scrap Data)
        {
            using (var dbContext = new AuditDbContext())
            {
                if (Data.ID > 0)
                {
                    dbContext.Update<Scrap>(Data);
                }
                else
                {
                    dbContext.Insert<Scrap>(Data);
                }
            }
        }
        public void DeleteScrap(List<int> ids)
        {
            using (var dbContext = new AuditDbContext())
            {
                dbContext.Scraps.Where(u => ids.Contains(u.ID)).Delete();
            }
        }
    }
}