using System.Web.Mvc;

namespace GMS.Web.Admin.Areas.ToolManage
{
    public class MailAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Mail";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Mail_default",
                "Mail/{controller}/{action}/{id}",
                new { action = "Default", id = UrlParameter.Optional }
            );
        }
    }
}
