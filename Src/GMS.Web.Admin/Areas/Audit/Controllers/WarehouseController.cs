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
    [Permission(EnumBusinessPermission.Audit_Warehouse)]
    public class WarehouseController : AdminControllerBase
    {
        //
        // GET: /Audit/Warehouse/
        public ActionResult Index(WarehouseRequest request)
        {
            var result = this.AuditService.GetWarehouseList(request);
            ViewBag.AuditStateOption = "0";
            if (request.AuditState == "未审核") ViewBag.AuditStateOption = "1";
            else if (request.AuditState == "初审通过") ViewBag.AuditStateOption = "2";
            else if (request.AuditState == "初审不通过") ViewBag.AuditStateOption = "3";
            else if (request.AuditState == "终审通过") ViewBag.AuditStateOption = "4";
            else if (request.AuditState == "终审不通过") ViewBag.AuditStateOption = "5";
            return View(result);
        }
        public ActionResult Create()
        {
            var model = new Warehouse();
            return View(model);
        }
        [HttpPost]
        public ActionResult Create(object message)
        {
            var model = new Warehouse();
            this.TryUpdateModel<Warehouse>(model);
            model.jbuyoff = DateTime.Now;
            model.AuditState = "未审核";
            this.AuditService.SaveWarehouse(model);
            return this.RefreshParent();
        }
        public ActionResult Edit(int id)
        {
            var model = this.AuditService.GetWarehouse(id);
            return View(model);
        }
        public ActionResult Detail(int id)
        {
            var model = this.AuditService.GetWarehouse(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Edit(Warehouse Data)
        {
            this.AuditService.SaveWarehouse(Data);
            return this.RefreshParent();
        }
        [HttpPost]
        public ActionResult Delete(List<int> ids)
        {
            this.AuditService.DeleteWarehouse(ids);
            return this.RedirectToAction("Index");
        }
        public ActionResult Accept(int id)
        {
            var result = this.AuditService.GetWarehouse(id);
            var permissions = AdminUserContext.Current.LoginInfo.BusinessPermissionList.Select(p => p.ToString());
            if (permissions.Contains("Audit_Warehouse_CheckLow") &&result.AuditState=="未审核")
            {
                result.AuditState = "初审通过";
            }
            else if (permissions.Contains("Audit_Warehouse_CheckHigh") && result.AuditState == "初审通过")
            {
                result.AuditState = "终审通过";
            }
            else if (!permissions.Contains("Audit_Warehouse_CheckLow") || !permissions.Contains("Audit_Warehouse_CheckHigh"))
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Warehouse_CheckLow") && result.AuditState == "未审核")
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Warehouse_CheckHigh") && result.AuditState == "初审通过")
            {
                return View("Error");
            }
            this.AuditService.SaveWarehouse(result);
            return this.RedirectToAction("Index");
        }
        public ActionResult Refuse(int id)
        {
            var result = this.AuditService.GetWarehouse(id);
            var permissions = AdminUserContext.Current.LoginInfo.BusinessPermissionList.Select(p => p.ToString());
            if (permissions.Contains("Audit_Warehouse_CheckLow") && result.AuditState == "未审核")
            {
                result.AuditState = "初审不通过";
            }
            else if (permissions.Contains("Audit_Warehouse_CheckHigh") && result.AuditState == "初审通过")
            {
                result.AuditState = "终审不通过";
            }
            else if (!permissions.Contains("Audit_Warehouse_CheckLow") || !permissions.Contains("Audit_Warehouse_CheckHigh"))
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Warehouse_CheckLow") && result.AuditState == "未审核")
            {
                return View("Error");
            }
            else if (!permissions.Contains("Audit_Warehouse_CheckHigh") && result.AuditState == "初审通过")
            {
                return View("Error");
            }
            this.AuditService.SaveWarehouse(result);
            return this.RedirectToAction("Index");
        }
    }
}
