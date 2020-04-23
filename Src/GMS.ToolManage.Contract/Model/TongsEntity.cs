using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GMS.Framework.Contract;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GMS.ToolManage.Contract
{
    [Table("tongs_entity")]
    public class TongsEntity : ModelBase
    {
        [StringLength(45)]
        [Required]
        public string Code { get; set; }
        [Required]
        public int SeqID { get; set; }
        [StringLength(45)]
        [Required]
        public string Model { get; set; }
        [StringLength(45)]
        [Required]
        public string PartNo { get; set; }
        [StringLength(45)]
        [Required]
        public string BillNo { get; set; }
        [Required]
        public DateTime RegDate { get; set; }
        [StringLength(45)]
        [Required]
        public string Location { get; set; }
        [Required]
        public int Bin { get; set; }
        [StringLength(45)]
        [Required]
        public string State { get; set; }
        [StringLength(45)]
        [Required]
        public string Photo { get; set; }
        [Required]
        public int UsedCount { get; set; }
        [StringLength(45)]
        [Required]
        public string ErrProbability { get; set; }
    }
}
