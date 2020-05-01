using System;
using System.Linq;
using GMS.Framework.Contract;
using System.Collections.Generic;
using GMS.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace GMS.Audit.Contract
{
    [Table("Warehouse")]
    public partial class Warehouse : ModelBase
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string buyoff { get; set; }
        public DateTime jbuyoff { get; set; }
        public string Owner { get; set; }
        public string Family { get; set; }
        public string Model { get; set; }
        public string AuditState { get; set; }
        public string Remark1 { get; set; }
        public string Remark2 { get; set; }
        public Nullable<int> Operator2 { get; set; }
        public Nullable<int> Supervisor { get; set; }
        public Nullable<int> Manager { get; set; }
        public string Location { get; set; }
        public Nullable<int> bin { get; set; }
        public int ID { get; set; }
        public System.DateTime CreateTime { get; set; }
    }
}
