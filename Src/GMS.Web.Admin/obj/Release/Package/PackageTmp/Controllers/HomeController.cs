using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GMS.Web.Admin.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return RedirectToAction("Index", "Auth", new { Area = "Account"});
        }
        public ActionResult Test()
        {
            ViewBag.a = Server.MapPath(@"\Content\Images\");
            return View();
        }
        [HttpPost]
        public ActionResult UploadImg(HttpPostedFileBase ImagePath)
        {

            string filename = DateTime.Now.ToString("yyyyMMdd") + DateTime.Now.Ticks + ImagePath.FileName;
            string filepath = Server.MapPath(@"\Temp\")  + filename;
            ImagePath.SaveAs(filepath);
            return Content(@"\Temp\" + filename);
        }
    }
}
