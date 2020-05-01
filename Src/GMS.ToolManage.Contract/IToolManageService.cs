using System;
using System.Collections.Generic;

namespace GMS.ToolManage.Contract
{
    public interface IToolManageService
    {
        IEnumerable<outstorage> GetoutstorageList(outstorageRequest request = null);
        outstorage Getoutstorage(int id);
        void Saveoutstorage(outstorage Data);
        void Deleteoutstorage(List<int> ids);

        IEnumerable<tongs_entity> Gettongs_entityList(tongs_entityRequest request = null);
        tongs_entity Gettongs_entity(int id);
        void Savetongs_entity(tongs_entity Data);
        void Deletetongs_entity(List<int> ids);
    }
}
