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

        public ActionResult Index(int id, FullLifeIndex pageIndex)
        {
            var model = this.ToolManageService.GetFullLife(id, pageIndex);
            return View(model);
        }

        public ActionResult In(int id, int pageIndex = 1)
        {
            var page = new FullLifeIndex();
            page.pageIndex1 = pageIndex;
            var model = this.ToolManageService.GetFullLife(id, page);
            return View(model);
        }

        public ActionResult Out(int id, int pageIndex = 1)
        {
            var page = new FullLifeIndex();
            page.pageIndex2 = pageIndex;
            var model = this.ToolManageService.GetFullLife(id, page);
            return View(model);
        }

        public ActionResult Repair(int id, int pageIndex = 1)
        {
            var page = new FullLifeIndex();
            page.pageIndex5 = pageIndex;
            var model = this.ToolManageService.GetFullLife(id, page);
            return View(model);
        }

        public ActionResult Warehouse(int id, int pageIndex = 1)
        {
            var page = new FullLifeIndex();
            page.pageIndex3 = pageIndex;
            var model = this.ToolManageService.GetFullLife(id, page);
            return View(model);
        }

        public ActionResult Scrap(int id, int pageIndex = 1)
        {
            var page = new FullLifeIndex();
            page.pageIndex4 = pageIndex;
            var model = this.ToolManageService.GetFullLife(id, page);
            return View(model);
        }

        public ActionResult Index_old(int id, FullLifeIndex pageIndex)
        {
            var model = this.ToolManageService.GetFullLife(id, pageIndex);
            return View(model);
        }
    }
}