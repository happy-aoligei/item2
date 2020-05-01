using System;
using System.Collections.Generic;
using GMS.Framework.Contract;

namespace GMS.Audit.Contract
{
    public class ScrapRequest : Request
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

    public class WarehouseRequest : Request
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string buyoff { get; set; }
        public Nullable<System.DateTime> jbuyoff { get; set; }
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
