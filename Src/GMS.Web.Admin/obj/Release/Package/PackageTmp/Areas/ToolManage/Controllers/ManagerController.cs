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
    
    public class ManagerController : AdminControllerBase
    {
        //
        // GET: /ToolManage/Manage/
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult Out(outstorageRequest request)//出库管理
        {
            var result = this.ToolManageService.GetoutstorageList(request);
            return View(result);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult Out_Create()
        {
            var model = new outstorage();
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult Out_Edit(int id)
        {
            var model = this.ToolManageService.Getoutstorage(id);
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult Out_Create(object message)
        {
            var model = new outstorage();
            this.TryUpdateModel<outstorage>(model);
            model.OutstorageDate = DateTime.Now;
            this.ToolManageService.Saveoutstorage(model);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult Out_Edit(outstorage Data)
        {
            this.ToolManageService.Saveoutstorage(Data);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult Out_Delete(List<int> ids)
        {
            this.ToolManageService.Deleteoutstorage(ids);
            return this.RedirectToAction("Out");
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult In(tongs_entityRequest request)//入库管理
        {
            var result = this.ToolManageService.Gettongs_entityList(request);
            return View(result);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult In_Create()
        {
            var model = new tongs_entity();
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult In_Edit(int id)
        {
            var model = this.ToolManageService.Gettongs_entity(id);
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult In_Create(object message)
        {
            var model = new tongs_entity();
            this.TryUpdateModel<tongs_entity>(model);
            model.RegDate = DateTime.Now;
            this.ToolManageService.Savetongs_entity(model);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult In_Edit(tongs_entity Data)
        {
            this.ToolManageService.Savetongs_entity(Data);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult In_Delete(List<int> ids)
        {
            this.ToolManageService.Deletetongs_entity(ids);
            return this.RedirectToAction("In");
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult Repair(tongs_entityRequest request)//报修管理
        {
            var result = this.ToolManageService.Gettongs_entityList(request);
            return View(result);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult Repair_Create()
        {
            var model = new tongs_entity();
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        public ActionResult Repair_Edit(int id)
        {
            var model = this.ToolManageService.Gettongs_entity(id);
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult Repair_Create(object message)
        {
            var model = new tongs_entity();
            this.TryUpdateModel<tongs_entity>(model);
            model.RegDate = DateTime.Now;
            this.ToolManageService.Savetongs_entity(model);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult Repair_Edit(tongs_entity Data)
        {
            this.ToolManageService.Savetongs_entity(Data);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Manager)]
        [HttpPost]
        public ActionResult Repair_Delete(List<int> ids)
        {
            this.ToolManageService.Deletetongs_entity(ids);
            return this.RedirectToAction("Repair");
        }
        [Permission(EnumBusinessPermission.ToolManage_Information)]
        public ActionResult Information(tongs_entityRequest request)//信息查询
        {
            request.Workcell = LoginInfo.Workcell;
            var result = this.ToolManageService.Gettongs_entityList(request);
            return View(result);
        }
        [Permission(EnumBusinessPermission.ToolManage_Information)]
        public ActionResult Information_Create()
        {
            var model = new tongs_entity();
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Information)]
        public ActionResult Information_Edit(int id)
        {
            var model = this.ToolManageService.Gettongs_entity(id);
            return View(model);
        }
        [Permission(EnumBusinessPermission.ToolManage_Information)]
        [HttpPost]
        public ActionResult Information_Create(object message)
        {
            var model = new tongs_entity();
            this.TryUpdateModel<tongs_entity>(model);
            model.RegDate = DateTime.Now;
            model.Workcell = LoginInfo.Workcell;
            this.ToolManageService.Savetongs_entity(model);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Information)]
        [HttpPost]
        public ActionResult Information_Edit(tongs_entity Data)
        {
            var ImagePath = Data.ImagePath;
            if (ImagePath != null)
            {
                string filename = DateTime.Now.Ticks + ImagePath.FileName;
                string truepath = Server.MapPath(@"/Upload/");
                string filepath = truepath + filename;
                string urlfilepath = @"/Upload/" + filename;
                ImagePath.SaveAs(filepath);
                Data.Photo = urlfilepath;
            }
            else
            {
                Data.Photo = ToolManageService.Gettongs_entity(Data.ID).Photo;
            }
            this.ToolManageService.Savetongs_entity(Data);
            return this.RefreshParent();
        }
        [Permission(EnumBusinessPermission.ToolManage_Information)]
        [HttpPost]
        public ActionResult Information_Delete(List<int> ids)
        {
            this.ToolManageService.Deletetongs_entity(ids);
            return this.RedirectToAction("Information");
        }
    }
}
