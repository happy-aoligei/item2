using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GMS.Framework.Contract;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GMS.ToolManage.Contract
{
    [Table("InTable")]
    public class InTable : ModelBase
    {

        [StringLength(255)]
        [Required]
        public string Name { get; set; }
    }
}