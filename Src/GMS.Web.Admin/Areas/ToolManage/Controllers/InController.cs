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
    public class InController : AdminControllerBase
    {
        //
        // GET: /ToolManage/In/

        public ActionResult Index(InTableRequest request)//入库
        {
            request.Workcell = LoginInfo.Workcell;
            var result = this.ToolManageService.GetInTableList(request);
            return View(result);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(FormCollection formCollection)
        {
            var Data = new InTable();
            this.TryUpdateModel(Data);
            Data.WarehousingDate = DateTime.Now;
            Data.Workcell = LoginInfo.Workcell;
            ToolManageService.SaveInTable(Data);
            return RedirectToAction("Index");
        }

    }
}
