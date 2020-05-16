using System;
using System.Collections.Generic;
using GMS.Framework.Contract;

namespace GMS.ToolManage.Contract
{
    public class InTableRequest : Request
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public int ProductID { get; set; }
        public int LineID { get; set; }
        public int ShiftTime { get; set; }
        public DateTime WarehousingDate { get; set; }
        public string BufferZone { get; set; }
        public DateTime BufferZDate { get; set; }
        public string Location { get; set; }
        public int Bin { get; set; }
        public int Handler1ID { get; set; }
        public int Recorder1ID { get; set; }
        public int Handler2ID { get; set; }
        public int Recorder2ID { get; set; }
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public int Workcell { get; set; }
    }

    public class InManageRequest : Request
    {
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public string Name { get; set; }
        public string Proposer { get; set; }
        public string Checker { get; set; }
        public int Workcell { get; set; }
        public InManageRequest(string RequestChecker)
        {
            Checker = RequestChecker;
        }
        public InManageRequest()
        {
            Checker = "";
        }
    }

    public class tongs_entityRequest : Request
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string Model { get; set; }
        public string PartNo { get; set; }
        public string BillNo { get; set; }
        public Nullable<System.DateTime> RegDate { get; set; }
        public string Location { get; set; }
        public Nullable<int> Bin { get; set; }
        public string State { get; set; }
        public string Photo { get; set; }
        public Nullable<int> UsedCount { get; set; }
        public string ErrProbability { get; set; }
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public int Workcell { get; set; }
    }

    public class OutTableRequest : Request
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
        public int Workcell { get; set; }
    }

    public class RepairTableRequest : Request
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string ErrDescription { get; set; }
        public string ErrPhoto { get; set; }
        public Nullable<int> ApplicantID { get; set; }
        public Nullable<int> Operator2ID { get; set; }
        public string MaintainState { get; set; }
        public Nullable<System.DateTime> MaintainDate { get; set; }
        public Nullable<int> SupervisorID { get; set; }
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public int Workcell { get; set; }
    }
}
