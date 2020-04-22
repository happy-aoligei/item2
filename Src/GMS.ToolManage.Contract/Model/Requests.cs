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
}
