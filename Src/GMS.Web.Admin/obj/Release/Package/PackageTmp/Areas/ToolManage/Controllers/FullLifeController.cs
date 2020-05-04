using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GMS.Web.Admin.Common;
using GMS.Account.Contract;
using GMS.ToolManage.Contract;

namespace GMS.Web.Admin.Areas.ToolManage.Controllers
{
    [Permission(EnumBusinessPermission.ToolManage_Information)]
    public class FullLifeController : AdminControllerBase
    {
        //
        // GET: /ToolManage/FullLife/

        public ActionResult Index(int id)
        {
            var model = this.ToolManageService.Gettongs_entity(id);
            return View(model);
        }
        public ActionResult InAndOut(int id)
        {
            var model = this.ToolManageService.Gettongs_entity(id);
            return View(model);
        }
        public ActionResult Repair(int id)
        {
            var model = this.ToolManageService.Gettongs_entity(id);
            return View(model);
        }
    }
}
