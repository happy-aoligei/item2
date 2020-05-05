//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------
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
    using System;
    using System.Collections.Generic;
    
    [Table("OutTable")]
    public partial class OutTable : ModelBase
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string Location { get; set; }
        public Nullable<int> Bin { get; set; }
        public string GoWhere { get; set; }
        public Nullable<int> LineID { get; set; }
        public Nullable<int> ProductID { get; set; }
        public Nullable<System.DateTime> OutstorageDate { get; set; }
        public Nullable<int> HandlerID { get; set; }
        public Nullable<int> RecorderID { get; set; }
        public Nullable<int> ShiftTime { get; set; }
        public string Remark { get; set; }
        public int ID { get; set; }
        public System.DateTime CreateTime { get; set; }
    }
}