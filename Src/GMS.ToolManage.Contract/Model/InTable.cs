﻿//------------------------------------------------------------------------------
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

    [Table("InTable")]
    public partial class InTable : ModelBase
    {
        [Required(ErrorMessage ="夹具代码不能为空")]
        public string Code { get; set; }
        [Required(ErrorMessage = "夹具系列号不能为空")]
        public Nullable<int> SeqID { get; set; }
        public int ProductID { get; set; }
        public int LineID { get; set; }
        public int ShiftTime { get; set; }
        public DateTime WarehousingDate { get; set; }
        public string BufferZone { get; set; }
        public Nullable<DateTime> BufferZDate { get; set; }
        public string Location { get; set; }
        public int Bin { get; set; }
        public Nullable<int> Handler1ID { get; set; }
        public Nullable<int> Recorder1ID { get; set; }
        public Nullable<int> Handler2ID { get; set; }
        public Nullable<int> Recorder2ID { get; set; }
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public int Workcell { get; set; }
    }
}
