using System;
using System.Collections.Generic;
using GMS.Framework.Contract;

namespace GMS.ToolManage.Contract
{
    public class InTableRequest : Request
    {
        public new int ID { get; set; }
        public new DateTime CreateTime { get; set; }
        public string Name { get; set; }
    }

    public class InManageRequest : Request
    {
        public int ID { get; set; }
        public DateTime CreateTime { get; set; }
        public string Name { get; set; }
        public string Proposer { get; set; }
        public string Checker { get; set; }

        public InManageRequest(string RequestChecker)
        {
            Checker = RequestChecker;
        }
        public InManageRequest()
        {
            Checker = "";
        }
    }

    public class TongsEntityRequest : Request
    {
        public string Code { get; set; }
        public int SeqID { get; set; }
        public string Model { get; set; }
        public string PartNo { get; set; }
        public string BillNo { get; set; }
        public DateTime RegDate { get; set; }
        public string Location { get; set; }
        public int Bin { get; set; }
        public string State { get; set; }
        public string Photo { get; set; }
        public int UsedCount { get; set; }
        public string ErrProbability { get; set; }
    }
}
