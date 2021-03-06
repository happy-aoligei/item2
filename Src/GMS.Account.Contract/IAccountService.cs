﻿using System;
using System.Collections.Generic;

namespace GMS.Account.Contract
{
    public interface IAccountService
    {
        LoginInfo GetLoginInfo(Guid token);
        LoginInfo Login(string loginName, string password,int Workcell);
        void Logout(Guid token);
        void ModifyPwd(User user);

        User GetUser(int id);
        User GetUser(string LoginName,int Workcell);
        IEnumerable<User> GetUserList(UserRequest request = null);
        void SaveUser(User user);
        void DeleteUser(List<int> ids);

        Role GetRole(int id);
        IEnumerable<Role> GetRoleList(RoleRequest request = null);
        void SaveRole(Role role);
        void DeleteRole(List<int> ids);

        Guid SaveVerifyCode(string verifyCodeText);
        bool CheckVerifyCode(string verifyCodeText, Guid guid);


    }
}
