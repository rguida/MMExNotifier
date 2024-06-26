﻿using MMExNotifier.Database;
using MMExNotifier.DataModel;
using MMExNotifier.Helpers;
using MMExNotifier.MVVM;
using System;

namespace MMExNotifier.ViewModels
{
    internal class MainViewModel : ViewModelBase
    {
        private readonly INotificationService _notificationService;
        private readonly IDatabaseService _database; 

        public RangeObservableCollection<ExpiringBill> ExpiringBills { get; set; } = new RangeObservableCollection<ExpiringBill>();
        public IAppConfiguration AppSettings { get; private set; }
        public RelayCommand SaveSettingsCommand { get; private set; }

        public MainViewModel(IAppConfiguration appSettings, INotificationService notificationService, IDatabaseService databaseService)
        {
            _notificationService = notificationService;
            _database = databaseService;

            AppSettings = appSettings;
            OnPropertyChanged(nameof(AppSettings));

            SaveSettingsCommand = new(() => SaveSettings());
        }

        public override void Activate()
        {
            if (string.IsNullOrEmpty(AppSettings.MMExDatabasePath))
            {
                Open();
                return;
            }

            LoadExpiringBills();

            if (ExpiringBills.Count == 0)
            {
                Close();
            }

            const int ConversationId = 9813;
            _notificationService.ShowToastNotification("viewTransactions", ConversationId, "MMExNotifier", "One or more recurring transaction are about to expire.", () => Open());
        }

        private void LoadExpiringBills()
        {
            try
            {
                ExpiringBills.Clear();
                var expiringBills = _database.ExpiringBills;
                if (expiringBills != null)
                {
                    ExpiringBills.AddRange(expiringBills);
                }
            }
            catch (Exception)
            {
                _notificationService.ShowErrorNotification("An error has occurred while loading the recurring transactions.\nMake sure that the database version matches the supported version.");
            }
        }

        private void SaveSettings()
        {
            AppSettings.Save();

            LoadExpiringBills();
        }

    }
}

