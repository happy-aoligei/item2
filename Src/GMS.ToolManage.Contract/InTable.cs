using System;
using System.Linq;
using GMS.Framework.Contract;
using System.Collections.Generic;
using GMS.Framework.Utility;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GMS.ToolManage.Contract
{
    [Table("InTable")]
    public partial class InTable : ModelBase
    {
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public string Name { get; set; }
    }
}
