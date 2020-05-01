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
    [Table("Scrap")]
    
    public partial class Scrap :ModelBase
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public Nullable<double> Servicelife { get; set; }
        public string Reason { get; set; }
        public string AuditState { get; set; }
        public Nullable<int> ApplicantID { get; set; }
        public Nullable<int> Auditor1 { get; set; }
        public Nullable<int> Auditor2 { get; set; }
        public int ID { get; set; }
        public System.DateTime CreateTime { get; set; }
    }
}
