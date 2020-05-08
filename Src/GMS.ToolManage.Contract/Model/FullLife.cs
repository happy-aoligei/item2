using System;
using System.Linq;
using GMS.Framework.Contract;
using System.Collections.Generic;
using GMS.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Web;
using GMS.Audit.Contract;

namespace GMS.ToolManage.Contract
{
    public class FullLifeModel : ModelBase
    {
        public tongs_entity Details { get; set; }
        public PagedList<InTable> InDetails { get; set; }
        public PagedList<OutTable> OutDetails { get; set; }
        public PagedList<Warehouse> WarehouseDetails { get; set; }
        public PagedList<Scrap> ScrapDetails { get; set; }
        public PagedList<RepairTable> RepairDetails { get; set; }
        public string GetPageUrl(int index,int pageIndex)
        {
            var res = "?pageIndex=" + pageIndex.ToString();
            return res;
        }
    }
    public class FullLifeIndex : ModelBase
    {
        public int pageIndex1 { get; set; }
        public int pageIndex2 { get; set; }
        public int pageIndex3 { get; set; }
        public int pageIndex4 { get; set; }
        public int pageIndex5 { get; set; }
    }
}
