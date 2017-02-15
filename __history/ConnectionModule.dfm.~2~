object DataConnection: TDataConnection
  OldCreateOrder = False
  Height = 326
  Width = 478
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Lach;Data Source=JASIEECKI\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 352
    Top = 208
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 256
    Top = 208
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 264
    Top = 144
  end
  object ADODataSet: TADODataSet
    Connection = ADOConnection
    DataSource = DataSource
    Parameters = <>
    Left = 176
    Top = 208
  end
end
