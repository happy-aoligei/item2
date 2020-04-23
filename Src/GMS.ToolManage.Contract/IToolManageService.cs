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
        IEnumerable<TongsEntity> GetTongsEntityList(TongsEntityRequest request = null);

    }
}
