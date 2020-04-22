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
    [Permission(EnumBusinessPermission.ToolManage_Manager, EnumBusinessPermission.ToolManage_Information)]
    public class ManagerController : AdminControllerBase
    {
        //
        // GET: /ToolManage/Manage/

        public ActionResult Out()//出库
        {
            return View();
        }
        public ActionResult In(InManageRequest request)//入库
        {
            request.Checker = AdminUserContext.Current.LoginInfo.LoginName;
            var result = this.ToolManageService.GetInManageList(request);
            return View(result);
        }
        public ActionResult Repair()//报修
        {
            return View();
        }
        public ActionResult Information()//信息
        {
            return View();
        }

    }
}
