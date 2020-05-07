using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GMS.Audit.Contract;
using GMS.Account.Contract;
using GMS.Web.Admin.Common;

namespace GMS.Web.Admin.Areas.Audit.Controllers
{

    [Permission(EnumBusinessPermission.Audit_Scrap)]
    public class ScrapController : AdminControllerBase
    { 
        //
        // GET: /Audit/Scrap/

        public ActionResult Index(ScrapRequest request)
        {
              var result = this.AuditService.GetScrapList(request);
              return View(result);
        }
        public ActionResult Create(Scrap Data)
        {
            Data.ScrapDate = DateTime.Now;
            Data.AuditState = "未审核";
            this.AuditService.SaveScrap(Data);
            return RedirectToAction("Index");
        }
        public ActionResult Accept(int id)
        {
            var result = this.AuditService.GetScrap(id);
            var permissions = AdminUserContext.Current.LoginInfo.BusinessPermissionList.Select(p => p.ToString());
            if (permissions.Contains("Audit_Scrap_CheckLow") && result.AuditState == "未审核")
            {
                result.AuditState = "初审通过";
            }
            else if (permissions.Contains("Audit_Scrap_CheckHigh") && result.AuditState == "初审通过")
            {
                result.AuditState = "终审通过";
            }
            else if (!permissions.Contains("Audit_Scrap_CheckLow") || !permissions.Contains("Audit_Scrap_CheckHigh"))
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Scrap_CheckLow") && result.AuditState == "未审核")
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Scrap_CheckHigh") && result.AuditState == "初审通过")
            {
                return View("Error");
            }
            this.AuditService.SaveScrap(result);
            return this.RedirectToAction("Index");
        }
        public ActionResult Refuse(int id)
        {
            var result = this.AuditService.GetScrap(id);
            var permissions = AdminUserContext.Current.LoginInfo.BusinessPermissionList.Select(p => p.ToString());
            if (permissions.Contains("Audit_Scrap_CheckLow") && result.AuditState == "未审核")
            {
                result.AuditState = "初审不通过";
            }
            else if (permissions.Contains("Audit_Scrap_CheckHigh") && result.AuditState == "初审通过")
            {
                result.AuditState = "终审不通过";
            }
            else if (!permissions.Contains("Audit_Scrap_CheckLow") || !permissions.Contains("Audit_Scrap_CheckHigh"))
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Scrap_CheckLow") && result.AuditState == "未审核")
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Scrap_CheckHigh") && result.AuditState == "初审通过")
            {
                return View("Error");
            }
            this.AuditService.SaveScrap(result);
            return this.RedirectToAction("Index");
        }
    }
}
