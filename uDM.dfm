object DM: TDM
  OldCreateOrder = False
  Height = 377
  Width = 474
  object conMysql: TFDConnection
    Params.Strings = (
      'User_Name=daflis'
      'Password=bruribume'
      'Database=pzzdb'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 56
  end
  object drvMysql: TFDPhysMySQLDriverLink
    VendorLib = 'libmysql.dll'
    Left = 216
    Top = 64
  end
end
