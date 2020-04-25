using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GMS.ToolManage.Contract;
using GMS.ToolManage.DAL;
using GMS.Framework.Utility;
using System.Data.Objects;
using GMS.Framework.Contract;
using EntityFramework.Extensions;
using GMS.Core.Cache;
using GMS.Core.Config;

namespace GMS.ToolManage.BLL
{
    public class ToolManageService : IToolManageService
    {
        
        public IEnumerable<InTable> GetInTableList(InTableRequest request = null)
        {
            request = request ?? new InTableRequest();
            using (var dbContext = new ToolManageDbContext())
            {
                IQueryable<InTable> InTables = dbContext.InTables;
                if (request != null)
                {
                    if (!string.IsNullOrEmpty(request.Name))
                        InTables = InTables.Where(u => u.Name.Contains(request.Name));
                }
                return InTables.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public void SaveInTable(InTable intable)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                if (intable.ID > 0)
                {
                    dbContext.Update<InTable>(intable);
                }
                else
                {
                    dbContext.Insert<InTable>(intable);
                }

            }
        }
        public IEnumerable<InManage> GetInManageList(InManageRequest request = null)
        {
            request = request ?? new InManageRequest();
            using (var dbContext = new ToolManageDbContext())
            {
                IQueryable<InManage> InManages = dbContext.InManages;

                if (!string.IsNullOrEmpty(request.Checker))
                    InManages = InManages.Where(u => u.Checker.Contains(request.Checker));


                return InManages.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public void DeleteInTable(List<int> ids)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                dbContext.InTables.Where(u => ids.Contains(u.ID)).Delete();
            }
        }
        public InTable GetInTable(int id)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                return dbContext.Find<InTable>(id);
            }
        }

        public IEnumerable<tongs_entity> Gettongs_entityList(tongs_entityRequest request = null)
        {
            request = request ?? new tongs_entityRequest();
            using (var dbContext = new ToolManageDbContext())
            {
                IQueryable<tongs_entity> tongs_entitys = dbContext.tongs_entitys;
                if (request != null)
                {
                    if (!string.IsNullOrEmpty(request.Code))
                        tongs_entitys = tongs_entitys.Where(u => u.Code.Contains(request.Code));
                    if (request.SeqID != 0)
                        tongs_entitys = tongs_entitys.Where(u => u.SeqID == request.SeqID);
                    if (!string.IsNullOrEmpty(request.State))
                        tongs_entitys = tongs_entitys.Where(u => u.State.Contains(request.State));
                }
                return tongs_entitys.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public tongs_entity Gettongs_entity(int id)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                return dbContext.tongs_entitys.Where(u => u.ID == id).SingleOrDefault();
            }
        }
        public void Savetongs_entity(tongs_entity Data)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                if (Data.ID > 0)
                {
                    dbContext.Update<tongs_entity>(Data);
                }
                else
                {
                    dbContext.Insert<tongs_entity>(Data);
                }
            }
        }
        public void Deletetongs_entity(List<int> ids)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                dbContext.tongs_entitys.Where(u => ids.Contains(u.ID)).Delete();
            }
        }

        public IEnumerable<outstorage> GetoutstorageList(outstorageRequest request = null)
        {
            request = request ?? new outstorageRequest();
            using (var dbContext = new ToolManageDbContext())
            {
                IQueryable<outstorage> outstorages = dbContext.outstorages;
                if (!string.IsNullOrEmpty(request.Code))
                    outstorages = outstorages.Where(u => u.Code.Contains(request.Code));
                if (request.SeqID != 0)
                    outstorages = outstorages.Where(u => u.SeqID == request.SeqID);
                if (request.LineID != 0)
                    outstorages = outstorages.Where(u => u.LineID == request.LineID);
                return outstorages.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public outstorage Getoutstorage(int id)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                return dbContext.outstorages.Where(u => u.ID == id).SingleOrDefault();
            }
        }
        public void Saveoutstorage(outstorage Data)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                if (Data.ID > 0)
                {
                    dbContext.Update<outstorage>(Data);
                }
                else
                {
                    dbContext.Insert<outstorage>(Data);
                }
            }
        }
        public void Deleteoutstorage(List<int> ids)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                dbContext.outstorages.Where(u => ids.Contains(u.ID)).Delete();
            }
        }
    }
}