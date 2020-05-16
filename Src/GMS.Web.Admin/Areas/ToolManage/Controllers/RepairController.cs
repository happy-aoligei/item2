using System.Web;
using System.Web.Mvc;
using GMS.Web.Admin.Common;
using GMS.ToolManage.Contract;
using GMS.Account.Contract;
using GMS.Framework.Utility;
using GMS.Framework.Contract;
using System;

namespace GMS.Web.Admin.Areas.ToolManage.Controllers
{
    public class RepairController : AdminControllerBase
    {
        public ActionResult Index(RepairTableRequest request)//报修
        {
            request.Workcell = LoginInfo.Workcell;
            var model = this.ToolManageService.GetRepairTableList(request);
            return View(model);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(RepairTable Data)
        {
            Data.CreateTime = DateTime.Now;
            Data.MaintainDate = DateTime.Now;
            Data.Workcell = LoginInfo.Workcell;
            ToolManageService.SaveRepairTable(Data);
            return RedirectToAction("Index");
        }

    }
}
