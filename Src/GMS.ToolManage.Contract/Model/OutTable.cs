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
        [Required(ErrorMessage = "夹具代码不能为空")]
        public string Code { get; set; }
        [Required(ErrorMessage = "夹具系列号不能为空")]
        [RegularExpression(@"[0-9]+", ErrorMessage = "夹具系列号无效")]
        public Nullable<int> SeqID { get; set; }
        [RegularExpression(@".+\-.+\-.+$", ErrorMessage ="出库库位格式不正确，正确示例：1-A1-1")]
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
        public int Workcell { get; set; }
    }
}
