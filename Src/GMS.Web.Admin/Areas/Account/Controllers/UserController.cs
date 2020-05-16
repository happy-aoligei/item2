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
    [Permission(EnumBusinessPermission.AccountManage_User)]
    public class UserController : AdminControllerBase
    {
        public ActionResult Index(UserRequest request)
        {
            var result = this.AccountService.GetUserList(request);
            return View(result);
        }
        public ActionResult Create()
        {
            var roles = this.AccountService.GetRoleList();
            this.ViewBag.RoleIds = new SelectList(roles, "ID", "Name");
            var model = new User();
            return View(model);
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            var model = new User();
            this.TryUpdateModel<User>(model);
            model.Password = Encrypt.MD5(model.NewPassword);
            try
            {
                this.AccountService.SaveUser(model);
            }
            catch (BusinessException e)
            {
                this.ModelState.AddModelError(e.Name, e.Message);
                var roles = this.AccountService.GetRoleList();
                this.ViewBag.RoleIds = new SelectList(roles, "ID", "Name");
                return View(model);
            }
            return this.RedirectToAction("Index");
        }
        public ActionResult Edit(int id)
        {
            var model = this.AccountService.GetUser(id);
            var roles = this.AccountService.GetRoleList();
            this.ViewBag.RoleIds = new SelectList(roles, "ID", "Name", string.Join(",", model.Roles.Select(r => r.ID)));
            return View(model);
        }
        [HttpPost]
        public ActionResult Edit(int ID,FormCollection formCollection)
        {
            var model = this.AccountService.GetUser(ID);
            this.TryUpdateModel<User>(model);
            if (!string.IsNullOrEmpty(model.NewPassword_NoRequired))
                model.Password = Encrypt.MD5(model.NewPassword_NoRequired);
            try
            {
                this.AccountService.SaveUser(model);
            }
            catch (BusinessException e)
            {
                this.ModelState.AddModelError(e.Name, e.Message);
                var roles = this.AccountService.GetRoleList();
                this.ViewBag.RoleIds = new SelectList(roles, "ID", "Name", string.Join(",", model.Roles.Select(r => r.ID)));
                return View(model);
            }
            return this.RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult Delete(List<int> ids)
        {
            if (ids != null)
                this.AccountService.DeleteUser(ids);
            return RedirectToAction("Index");
        }
    }
}
