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

    }
}
