using System;
using System.Linq;
using GMS.Framework.Contract;
using System.Collections.Generic;
using GMS.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GMS.ToolManage.Contract
{
    [Table("outstorage")]
    public class outstorage : ModelBase
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string Location { get; set; }
        public int Bin { get; set; }
        public string GoWhere { get; set; }
        public int LineID { get; set; }
        public int ProductID { get; set; }
        public DateTime OutstorageDate { get; set; }
        public int HandlerID { get; set; }
        public int RecorderID { get; set; }
        public int ShiftTime { get; set; }
        public string Remark { get; set; }
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
    }
}
