using System;
using System.Collections.Generic;

namespace GMS.ToolManage.Contract
{
    public interface IToolManageService
    {
        IEnumerable<tongs_entity> Gettongs_entityList(tongs_entityRequest request = null);
        tongs_entity Gettongs_entity(int id);
        void Savetongs_entity(tongs_entity Data);
        void Deletetongs_entity(List<int> ids);

        IEnumerable<InTable> GetInTableList(InTableRequest request = null);
        InTable GetInTable(int id);
        void SaveInTable(InTable Data);
        void DeleteInTable(List<int> ids);

        IEnumerable<OutTable> GetOutTableList(OutTableRequest request = null);
        OutTable GetOutTable(int id);
        void SaveOutTable(OutTable Data);
        void DeleteOutTable(List<int> ids);

        FullLifeModel GetFullLife(int id,FullLifeIndex pageIndex);
    }
}
