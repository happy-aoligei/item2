using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GMS.Framework.Contract;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GMS.ToolManage.Contract
{
    [Table("InManage")]
    public class InManage : ModelBase
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string Proposer { get; set; }
        [Required]
        public string Checker { get; set; }
    }
}
