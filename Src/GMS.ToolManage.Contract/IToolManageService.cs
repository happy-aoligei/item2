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

        IEnumerable<outstorage> GetoutstorageList(outstorageRequest request = null);
        outstorage Getoutstorage(int id);
        void Saveoutstorage(outstorage Data);
        void Deleteoutstorage(List<int> ids);

        IEnumerable<InManage> GetInManageList(InManageRequest request = null);

        IEnumerable<tongs_entity> Gettongs_entityList(tongs_entityRequest request = null);
        tongs_entity Gettongs_entity(int id);
        void Savetongs_entity(tongs_entity Data);
        void Deletetongs_entity(List<int> ids);
    }
}
