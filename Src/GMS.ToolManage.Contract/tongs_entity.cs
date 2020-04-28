using System;
using System.Linq;
using GMS.Framework.Contract;
using System.Collections.Generic;
using GMS.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace GMS.ToolManage.Contract
{
    [Table("tongs_entity")]
    public partial class tongs_entity : ModelBase
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string Model { get; set; }
        public string PartNo { get; set; }
        public string BillNo { get; set; }
        public DateTime RegDate { get; set; }
        public string Location { get; set; }
        public Nullable<int> Bin { get; set; }
        public string State { get; set; }
        public string Photo { get; set; }
        public Nullable<int> UsedCount { get; set; }
        public string ErrProbability { get; set; }
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
    }
}
