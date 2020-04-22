using System;
using System.Collections.Generic;

namespace GMS.ToolManage.Contract
{
    public interface IToolManageService
    {
        IEnumerable<InTable> GetInTableList(InTableRequest request = null);
        void SaveInTable(InTable Data);
        void DeleteInTable(List<int> ids);
        InTable GetInTable(int id);

        IEnumerable<InManage> GetInManageList(InManageRequest request = null);
        
        /*LoginInfo GetLoginInfo(Guid token);
        LoginInfo Login(string loginName, string password);
        void Logout(Guid token);
        void ModifyPwd(User user);

        User GetUser(int id);
        IEnumerable<User> GetUserList(UserRequest request = null);
        void SaveUser(User user);
        void DeleteUser(List<int> ids);

        Role GetRole(int id);
        IEnumerable<Role> GetRoleList(RoleRequest request = null);
        void SaveRole(Role role);
        void DeleteRole(List<int> ids);

        Guid SaveVerifyCode(string verifyCodeText);
        bool CheckVerifyCode(string verifyCodeText, Guid guid);*/
    }
}
