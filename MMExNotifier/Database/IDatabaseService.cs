﻿using MMExNotifier.DataModel;
using System.Collections.Generic;

namespace MMExNotifier.Database
{
    internal interface IDatabaseService
    {
        List<ExpiringBill>? ExpiringBills { get; }
    }
}