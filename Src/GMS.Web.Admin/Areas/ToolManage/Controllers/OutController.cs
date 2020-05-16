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
    public class OutController : AdminControllerBase
    {
        //
        // GET: /ToolManage/Out/

        public ActionResult Index(OutTableRequest request)//出库
        {
            request.Workcell = LoginInfo.Workcell;
            var result = this.ToolManageService.GetOutTableList(request);
            return View(result);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(OutTable Data)
        {
            Data.OutstorageDate = DateTime.Now;
            Data.Workcell = LoginInfo.Workcell;
            ToolManageService.SaveOutTable(Data);
            return RedirectToAction("Out");
        }

    }
}
