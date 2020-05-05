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
                    tongs_entitys = tongs_entitys.Where(u => u.Workcell == request.Workcell);
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

        public IEnumerable<InTable> GetInTableList(InTableRequest request = null)
        {
            request = request ?? new InTableRequest();
            using (var dbContext = new ToolManageDbContext())
            {
                IQueryable<InTable> InTables = dbContext.InTables;
                if (request != null)
                {

                }
                return InTables.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public InTable GetInTable(int id)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                return dbContext.InTables.Where(u => u.ID == id).SingleOrDefault();
            }
        }
        public void SaveInTable(InTable Data)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                if (Data.ID > 0)
                {
                    dbContext.Update<InTable>(Data);
                }
                else
                {
                    dbContext.Insert<InTable>(Data);
                }
            }
        }
        public void DeleteInTable(List<int> ids)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                dbContext.InTables.Where(u => ids.Contains(u.ID)).Delete();
            }
        }

        public IEnumerable<OutTable> GetOutTableList(OutTableRequest request = null)
        {
            request = request ?? new OutTableRequest();
            using (var dbContext = new ToolManageDbContext())
            {
                IQueryable<OutTable> OutTables = dbContext.OutTables;
                return OutTables.OrderByDescending(u => u.ID).ToPagedList(request.PageIndex, request.PageSize);
            }
        }
        public OutTable GetOutTable(int id)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                return dbContext.OutTables.Where(u => u.ID == id).SingleOrDefault();
            }
        }
        public void SaveOutTable(OutTable Data)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                if (Data.ID > 0)
                {
                    dbContext.Update<OutTable>(Data);
                }
                else
                {
                    dbContext.Insert<OutTable>(Data);
                }
            }
        }
        public void DeleteOutTable(List<int> ids)
        {
            using (var dbContext = new ToolManageDbContext())
            {
                dbContext.OutTables.Where(u => ids.Contains(u.ID)).Delete();
            }
        }
    }
}