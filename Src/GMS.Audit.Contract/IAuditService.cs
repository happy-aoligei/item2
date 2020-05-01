using System;
using System.Collections.Generic;

namespace GMS.Audit.Contract
{
    public interface IAuditService
    {
        IEnumerable<Warehouse> GetWarehouseList(WarehouseRequest request = null);
        Warehouse GetWarehouse(int id);
        void SaveWarehouse(Warehouse Data);
        void DeleteWarehouse(List<int> ids);

        IEnumerable<Scrap> GetScrapList(ScrapRequest request = null);
        Scrap GetScrap(int id);
        void SaveScrap(Scrap Data);
        void DeleteScrap(List<int> ids);
    }
}
