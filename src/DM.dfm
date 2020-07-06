object Data: TData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object SQLite: TSQLiteUniProvider
    Left = 80
    Top = 56
  end
  object DTCon: TUniConnection
    ProviderName = 'SQLite'
    Database = 'C:\Develop\Inv\Bin\pos.db'
    LoginPrompt = False
    Left = 48
    Top = 56
  end
end
