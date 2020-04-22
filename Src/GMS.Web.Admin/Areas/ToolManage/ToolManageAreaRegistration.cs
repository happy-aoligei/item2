using System.Web.Mvc;

namespace GMS.Web.Admin.Areas.ToolManage
{
    public class ToolManageAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "ToolManage";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "ToolManage_default",
                "ToolManage/{controller}/{action}/{id}",
                new { action = "Default", id = UrlParameter.Optional }
            );
        }
    }
}
