object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 220
  Width = 297
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 120
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 144
    Top = 40
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      
        'Database=C:\Users\0101tgf\Documents\Code\Delphi\Fontes\Datapar\W' +
        'in32\Debug\config.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 120
  end
end
