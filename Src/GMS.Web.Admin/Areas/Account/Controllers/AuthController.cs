﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GMS.Web.Admin.Common;
using GMS.Framework.Utility;
using GMS.Framework.Web;
using GMS.Account.Contract;
using GMS.Framework.Contract;

namespace GMS.Web.Admin.Areas.Account.Controllers
{
    public class AuthController : AdminControllerBase
    {
        [HttpGet]
        [AuthorizeIgnore]
        public System.Web.Mvc.ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [AuthorizeIgnore]
        public ActionResult Login(string username, string password,int Workcell)
        {
            var loginInfo = this.AccountService.Login(username, password,Workcell);
            ViewBag.Workcell = Workcell.ToString();
            ViewBag.username = username;
            ViewBag.password = password;
            if (loginInfo != null && loginInfo.Workcell == 0)
            {
                ModelState.AddModelError("error", "部门选择错误");
                return View();
            }
            else if (loginInfo != null)
            {
                this.CookieContext.UserToken = loginInfo.LoginToken;
                this.CookieContext.UserName = loginInfo.LoginName;
                this.CookieContext.UserId = loginInfo.UserID;
                return RedirectToAction("Index");
            }
            else
            {
                ModelState.AddModelError("error", "用户名或密码错误");
                return View();
            }
        }

        public ActionResult Logout()
        {
            this.AccountService.Logout(this.CookieContext.UserToken);
            this.CookieContext.UserToken = Guid.Empty;
            this.CookieContext.UserName = string.Empty;
            this.CookieContext.UserId = 0;
            return RedirectToAction("Login");
        }

        public ActionResult ModifyPwd()
        {
            var model = this.AccountService.GetUser(this.LoginInfo.UserID);
            return View(model);
        }
        public ActionResult Detail()
        {
            var model = this.AccountService.GetUser(this.LoginInfo.UserID);
            return View(model);
        }
        [HttpPost]
        public ActionResult ModifyPwd(FormCollection collection)
        {
            var model = this.AccountService.GetUser(this.LoginInfo.UserID);
            this.TryUpdateModel<User>(model);
            try
            {
                this.AccountService.ModifyPwd(model);
            }
            catch (BusinessException e)
            {
                this.ModelState.AddModelError(e.Name, e.Message);
                return View(model);
            }

            return this.RefreshParent();
        }

        public ActionResult Index()
        {
            return View();
        }

        [AuthorizeIgnore]
        public ActionResult VerifyImage()
        {
            var s1 = new ValidateCode_Style4();
            string code = "6666";
            byte[] bytes = s1.CreateImage(out code);

            this.CookieContext.VerifyCode = code;

            return File(bytes, @"image/jpeg");

        }

    }
}
