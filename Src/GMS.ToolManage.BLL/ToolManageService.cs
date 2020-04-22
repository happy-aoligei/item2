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

                if (!string.IsNullOrEmpty(request.Name))
                    InTables = InTables.Where(u => u.Name.Contains(request.Name));
               

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
    }
}