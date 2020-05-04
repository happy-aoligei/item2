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
            return View();
        }
        public ActionResult Repair()//报修
        {
            return View();
        }
        public ActionResult Create()//报修
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection)//新增
        {

            return this.RefreshParent();
        }
        [HttpPost]
        public ActionResult Delete(List<int> ids)
        {
            return RedirectToAction("In");
        }

        public ActionResult Edit(int id)
        {
            return View("Create");
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            return this.RefreshParent();
        }
    }
}
