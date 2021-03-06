﻿using System;
using System.Linq;
using System.Web.Mvc;
using System.Collections.Generic;
using GMS.Account.Contract;
using GMS.Framework.Web;
using GMS.Framework.Contract;
using GMS.Core.Log;
using GMS.Cms.Contract;
using GMS.Crm.Contract;
using GMS.Audit.Contract;
using GMS.OA.Contract;
using GMS.ToolManage.Contract;
using GMS.Mail.Contract;

namespace GMS.Web
{
    public abstract class ControllerBase : GMS.Framework.Web.ControllerBase
    {
        public virtual IAccountService AccountService
        {
            get
            {
                return ServiceContext.Current.AccountService;
            }
        }

        public virtual ICmsService CmsService
        {
            get
            {
                return ServiceContext.Current.CmsService;
            }
        }

        public virtual ICrmService CrmService
        {
            get
            {
                return ServiceContext.Current.CrmService;
            }
        }

        public virtual IOAService OAService
        {
            get
            {
                return ServiceContext.Current.OAService;
            }
        }

        public virtual IToolManageService ToolManageService
        {
            get
            {
                return ServiceContext.Current.ToolManageService;
            }
        }

        public virtual IAuditService AuditService
        {
            get
            {
                return ServiceContext.Current.AuditService;
            }
        }
        public virtual IMailService MailService
        {
            get
            {
                return ServiceContext.Current.MailService;
            }
        }

        protected override void LogException(Exception exception, 
            WebExceptionContext exceptionContext = null)
        {
            base.LogException(exception);

            var message = new
            {
                exception = exception.Message,
                exceptionContext = exceptionContext,
            };

            Log4NetHelper.Error(LoggerType.WebExceptionLog, message, exception);
        }

        public IDictionary<string, object> CurrentActionParameters { get; set; }

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
        }
    }
}
