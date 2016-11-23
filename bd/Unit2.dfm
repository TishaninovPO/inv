object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 963
  Top = 151
  Height = 380
  Width = 366
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=bd.md' +
      'b;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sys' +
      'tem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pa' +
      'ssword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mod' +
      'e=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tr' +
      'ansactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create' +
      ' System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLED' +
      'B:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without R' +
      'eplica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 136
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Gruppa'
    Left = 192
    Top = 120
    object ADOTable1ID_gruppa: TAutoIncField
      DisplayLabel = #8470
      DisplayWidth = 2
      FieldName = 'ID_gruppa'
      ReadOnly = True
    end
    object ADOTable1Naimenovanie: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
      DisplayWidth = 10
      FieldName = 'Naimenovanie'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 72
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 56
    Top = 216
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Student'
    Left = 184
    Top = 224
    object ADOTable2ID_student: TAutoIncField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'ID_student'
      ReadOnly = True
    end
    object ADOTable2FIO: TWideStringField
      Alignment = taCenter
      DisplayWidth = 23
      FieldName = 'FIO'
      Size = 255
    end
    object ADOTable2Mob: TIntegerField
      Alignment = taCenter
      DisplayWidth = 12
      FieldName = 'Mob'
    end
    object ADOTable2Pol: TWideStringField
      Alignment = taCenter
      DisplayWidth = 25
      FieldName = 'Pol'
      Size = 255
    end
    object ADOTable2Gr: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'Gr'
      LookupDataSet = ADOTable1
      LookupKeyFields = 'ID_gruppa'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'Gruppa'
      LookupCache = True
      Size = 60
      Lookup = True
    end
    object ADOTable2Gruppa: TIntegerField
      Alignment = taCenter
      FieldName = 'Gruppa'
    end
  end
end
