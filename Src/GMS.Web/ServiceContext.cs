using System;
using System.Collections.Generic;
using GMS.Account.Contract;
using GMS.Core.Cache;
using GMS.Core.Service;
using GMS.Cms.Contract;
using GMS.Crm.Contract;
using GMS.OA.Contract;
using GMS.Audit.Contract;
using GMS.ToolManage.Contract;
using GMS.Mail.Contract;

namespace GMS.Web
{
    public class ServiceContext
    {
        public static ServiceContext Current
        {
            get
            {
                return CacheHelper.GetItem<ServiceContext>("ServiceContext", () => new ServiceContext());
            }
        }
        
        public IAccountService AccountService
        {
            get
            {
                return ServiceHelper.CreateService<IAccountService>();
            }
        }

        public ICmsService CmsService
        {
            get
            {
                return ServiceHelper.CreateService<ICmsService>();
            }
        }

        public ICrmService CrmService
        {
            get
            {
                return ServiceHelper.CreateService<ICrmService>();
            }
        }

        public IOAService OAService
        {
            get
            {
                return ServiceHelper.CreateService<IOAService>();
            }
        }
        public IToolManageService ToolManageService
        {
            get
            {
                return ServiceHelper.CreateService<IToolManageService>();
            }
        }
        public IAuditService AuditService
        {
            get
            {
                return ServiceHelper.CreateService<IAuditService>();
            }
        }
        public IMailService MailService
        {
            get
            {
                return ServiceHelper.CreateService<IMailService>();
            }
        }
    }
}
