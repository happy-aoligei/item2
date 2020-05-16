using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GMS.Account.Contract;
using GMS.Web.Admin.Common;
using GMS.Framework.Utility;
using GMS.Framework.Contract;

namespace GMS.Web.Admin.Areas.Account.Controllers
{
    public class ProfileController : AdminControllerBase
    {
        public ActionResult Index()
        {
            var model = this.AccountService.GetUser(LoginInfo.LoginName, LoginInfo.Workcell);
            return View(model);
        }
        [HttpPost]
        public ActionResult Edit(FormCollection form)
        {
            var model = this.AccountService.GetUser(LoginInfo.LoginName, LoginInfo.Workcell);
            this.TryUpdateModel<User>(model);
            model.NewPassword = "NoPassword";
            try
            {
                this.AccountService.SaveUser(model);
            }
            catch (BusinessException e)
            {
                this.ModelState.AddModelError(e.Name, e.Message);
                return View(model);
            }
            return RedirectToAction("Index","Auth");
        }

    }
}
