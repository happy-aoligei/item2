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

        public ActionResult Out()//出库
        {
            return View();
        }
        public ActionResult In(InTableRequest request)//入库
        {
            var result = this.ToolManageService.GetInTableList(request);
            return View(result);
        }
        public ActionResult Repair()//报修
        {
            return View();
        }
        public ActionResult Create()//报修
        {
            var model = new InTable();
            return View(model);
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection)//新增
        {
            var model = new InTable();
            this.TryUpdateModel<InTable>(model);

            this.ToolManageService.SaveInTable(model);

            return this.RefreshParent();
        }
        [HttpPost]
        public ActionResult Delete(List<int> ids)
        {
            this.ToolManageService.DeleteInTable(ids);
            return RedirectToAction("In");
        }

        public ActionResult Edit(int id)
        {
            var model = this.ToolManageService.GetInTable(id);
            return View("Create", model);
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var model = this.ToolManageService.GetInTable(id);
            this.TryUpdateModel<InTable>(model);

            this.ToolManageService.SaveInTable(model);

            return this.RefreshParent();
        }
    }
}
