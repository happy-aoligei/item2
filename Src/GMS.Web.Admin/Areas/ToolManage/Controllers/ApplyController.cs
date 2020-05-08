using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GMS.Web.Admin.Common;
using GMS.ToolManage.Contract;
using GMS.Account.Contract;
using GMS.Framework.Utility;
using GMS.Framework.Contract;

namespace GMS.Web.Admin.Areas.ToolManage.Controllers
{
    [Permission(EnumBusinessPermission.ToolManage_Apply)]
    public class ApplyController : AdminControllerBase
    {
        //
        // GET: /ToolManage/Apply/

        public ActionResult Out(OutTableRequest request)//出库
        {
            var result = this.ToolManageService.GetOutTableList(request);
            return View(result);
        }
        [HttpPost]
        public ActionResult Out_Create(OutTable Data)
        {
            Data.OutstorageDate = DateTime.Now;
            ToolManageService.SaveOutTable(Data);
            return RedirectToAction("Out");
        }
        public ActionResult In(InTableRequest request)//入库管理
        {
            var result = this.ToolManageService.GetInTableList(request);
            return View(result);
        }
        [HttpPost]
        public ActionResult In_Create(InTable Data)
        {
            Data.WarehousingDate = DateTime.Now;
            ToolManageService.SaveInTable(Data);
            return RedirectToAction("In");
        }

        public ActionResult Repair(RepairTableRequest request)//报修
        {
            var model = this.ToolManageService.GetRepairTableList(request);
            return View(model);
        }
        [HttpPost]
        public ActionResult Repair_Create(RepairTable Data)
        {
            Data.CreateTime = DateTime.Now;
            Data.MaintainDate = DateTime.Now;
            ToolManageService.SaveRepairTable(Data);
            return RedirectToAction("Repair");
        }
    }
}
