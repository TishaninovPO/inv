object DM: TDM
  OldCreateOrder = False
  Left = 64043
  Top = 241
  Height = 749
  Width = 404
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\DB.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 128
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 96
    Top = 80
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'hardware'
    Left = 160
    Top = 80
    object ADOTable1ID: TAutoIncField
      DisplayWidth = 12
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object strngfldADOTable1tips: TStringField
      FieldKind = fkLookup
      FieldName = 'tips'
      LookupDataSet = ADOTable2
      LookupKeyFields = 'ID_tipa_texniki'
      LookupResultField = 'name_texniki'
      KeyFields = 'ID_tipa_texniki'
      Lookup = True
    end
    object ADOTable1ID_tipa_texniki: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_tipa_texniki'
      Visible = False
    end
    object strngfldADOTable1name: TStringField
      FieldKind = fkLookup
      FieldName = 'name'
      LookupDataSet = ADOTable3
      LookupKeyFields = 'ID_name_texniki'
      LookupResultField = 'Name_texniki'
      KeyFields = 'ID_name_texniki'
      Lookup = True
    end
    object ADOTable1ID_name_texniki: TIntegerField
      DisplayWidth = 16
      FieldName = 'ID_name_texniki'
      Visible = False
    end
    object ADOTable1Ser_nomer: TWideStringField
      DisplayWidth = 15
      FieldName = 'Ser_nomer'
      Size = 255
    end
    object ADOTable1inv_nomer: TWideStringField
      DisplayWidth = 15
      FieldName = 'inv_nomer'
      Size = 255
    end
    object ADOTable1data_preobretenia: TDateTimeField
      DisplayWidth = 22
      FieldName = 'data_preobretenia'
    end
    object ADOTable1id_fio: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_fio'
      Visible = False
    end
    object strngfldADOTable1fio: TStringField
      FieldKind = fkLookup
      FieldName = 'fio'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'first_name'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object strngfldADOTable1middle_name: TStringField
      FieldKind = fkLookup
      FieldName = 'middle_name'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'middle_name'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object strngfldADOTable1last_name: TStringField
      FieldKind = fkLookup
      FieldName = 'last_name'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'last_name'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object strngfldADOTable1otdel: TStringField
      FieldKind = fkLookup
      FieldName = 'otdel'
      LookupDataSet = ADOTable5
      LookupKeyFields = 'ID_otdel'
      LookupResultField = 'Name_otdel'
      KeyFields = 'id_otdel'
      Lookup = True
    end
    object ADOTable1id_otdel: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_otdel'
      Visible = False
    end
    object strngfldADOTable1mesto: TStringField
      FieldKind = fkLookup
      FieldName = 'mesto'
      LookupDataSet = ADOTable6
      LookupKeyFields = 'ID_mesto'
      LookupResultField = 'name_mesto'
      KeyFields = 'id_mesto'
      Lookup = True
    end
    object ADOTable1id_mesto: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_mesto'
      Visible = False
    end
    object ADOTable1data_guarantee: TDateTimeField
      DisplayWidth = 22
      FieldName = 'data_guarantee'
    end
    object ADOTable1id_code: TIntegerField
      FieldName = 'id_code'
    end
    object ADOTable1data_cpicania: TDateTimeField
      FieldName = 'data_cpicania'
    end
    object ADOTable1id_rem: TIntegerField
      FieldName = 'id_rem'
    end
    object ADOTable1id_file: TWideStringField
      FieldName = 'id_file'
      Size = 255
    end
    object ADOTable1true_cpicania: TBooleanField
      FieldName = 'true_cpicania'
    end
    object ADOTable1rem_true: TBooleanField
      FieldName = 'rem_true'
    end
    object ADOTable1code: TStringField
      FieldKind = fkLookup
      FieldName = 'code'
      LookupDataSet = ADOTable7
      LookupKeyFields = 'id_code'
      LookupResultField = 'code'
      KeyFields = 'id_code'
      Lookup = True
    end
    object ADOTable1true_code: TStringField
      FieldKind = fkLookup
      FieldName = 'true_code'
      LookupDataSet = ADOTable7
      LookupKeyFields = 'id_code'
      LookupResultField = 'true'
      KeyFields = 'id_code'
      Lookup = True
    end
    object ADOTable1date_rem: TStringField
      FieldKind = fkLookup
      FieldName = 'date_rem'
      LookupDataSet = ADOTable8
      LookupKeyFields = 'id_rem'
      LookupResultField = 'data'
      KeyFields = 'id_rem'
      Lookup = True
    end
    object ADOTable1neispr: TStringField
      FieldKind = fkCalculated
      FieldName = 'neispr'
      Calculated = True
    end
    object ADOTable1kol: TWideStringField
      FieldName = 'kol'
      Size = 255
    end
    object ADOTable1nomenklat_nomer: TWideStringField
      FieldName = 'nomenklat_nomer'
      Size = 255
    end
    object ADOTable1dolj: TStringField
      FieldKind = fkLookup
      FieldName = 'dolj'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'dolj'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object ADOTable1code_id: TStringField
      FieldKind = fkLookup
      FieldName = 'code_id'
      LookupDataSet = ADOTable7
      LookupKeyFields = 'id_code'
      LookupResultField = 'code'
      KeyFields = 'ID'
      Lookup = True
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 48
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 96
    Top = 128
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tip_texniki'
    Left = 160
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 96
    Top = 176
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'name_texniki'
    Left = 160
    Top = 176
    object ADOTable3ID_name_texniki: TAutoIncField
      FieldName = 'ID_name_texniki'
      ReadOnly = True
    end
    object ADOTable3Name_texniki: TWideStringField
      FieldName = 'Name_texniki'
      Size = 255
    end
    object ADOTable3ID_tipa_texniki: TIntegerField
      FieldName = 'ID_tipa_texniki'
      Visible = False
    end
    object strngfldADOTable3tip: TStringField
      FieldKind = fkLookup
      FieldName = 'tip'
      LookupDataSet = ADOTable2
      LookupKeyFields = 'ID_tipa_texniki'
      LookupResultField = 'name_texniki'
      KeyFields = 'ID_tipa_texniki'
      Lookup = True
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 96
    Top = 224
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fio'
    Left = 160
    Top = 224
    object ADOTable4ID_fio: TAutoIncField
      FieldName = 'ID_fio'
      ReadOnly = True
      Visible = False
    end
    object ADOTable4first_name: TWideStringField
      FieldName = 'first_name'
      Size = 255
    end
    object ADOTable4middle_name: TWideStringField
      FieldName = 'middle_name'
      Size = 255
    end
    object ADOTable4last_name: TWideStringField
      FieldName = 'last_name'
      Size = 255
    end
    object ADOTable4dolj: TWideStringField
      FieldName = 'dolj'
      Size = 255
    end
    object ADOTable4id_otdel: TIntegerField
      FieldName = 'id_otdel'
    end
    object ADOTable4name_otdel: TStringField
      FieldKind = fkLookup
      FieldName = 'name_otdel'
      LookupDataSet = ADOTable5
      LookupKeyFields = 'ID_otdel'
      LookupResultField = 'Name_otdel'
      KeyFields = 'id_otdel'
      Lookup = True
    end
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 104
    Top = 272
  end
  object ADOTable5: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'otdel'
    Left = 160
    Top = 272
    object ADOTable5ID_otdel: TAutoIncField
      FieldName = 'ID_otdel'
      ReadOnly = True
    end
    object ADOTable5Name_otdel: TWideStringField
      FieldName = 'Name_otdel'
      Size = 255
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOTable6
    Left = 104
    Top = 328
  end
  object ADOTable6: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'mesto'
    Left = 160
    Top = 328
    object ADOTable6ID_mesto: TAutoIncField
      FieldName = 'ID_mesto'
      ReadOnly = True
      Visible = False
    end
    object ADOTable6name_mesto: TWideStringField
      FieldName = 'name_mesto'
      Size = 255
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOTable7
    Left = 112
    Top = 376
  end
  object ADOTable7: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'code'
    Left = 168
    Top = 376
    object ADOTable7id_code: TAutoIncField
      FieldName = 'id_code'
      ReadOnly = True
    end
    object ADOTable7code: TWideStringField
      FieldName = 'code'
      Size = 255
    end
    object ADOTable7true: TBooleanField
      FieldName = 'true'
    end
  end
  object DataSource8: TDataSource
    DataSet = ADOTable8
    Left = 112
    Top = 424
  end
  object ADOTable8: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'rem'
    Left = 176
    Top = 424
    object ADOTable8id_rem: TAutoIncField
      FieldName = 'id_rem'
      ReadOnly = True
    end
    object ADOTable8id: TIntegerField
      FieldName = 'id'
    end
    object ADOTable8data: TDateTimeField
      FieldName = 'data'
    end
    object ADOTable8Neispr: TWideStringField
      FieldName = 'Neispr'
      Size = 255
    end
    object ADOTable8inf_po_remont: TWideStringField
      FieldName = 'inf_po_remont'
      Size = 255
    end
    object ADOTable8id_doc: TWideStringField
      FieldName = 'id_doc'
      Size = 255
    end
  end
  object DataSource9: TDataSource
    DataSet = ADOTable9
    Left = 112
    Top = 472
  end
  object ADOTable9: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Users'
    Left = 176
    Top = 472
  end
  object DataSource10: TDataSource
    DataSet = ADOTable10
    Left = 112
    Top = 520
  end
  object ADOTable10: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'doc'
    Left = 184
    Top = 520
    object ADOTable10id_doc: TAutoIncField
      FieldName = 'id_doc'
      ReadOnly = True
    end
    object ADOTable10id: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object ADOTable10name_doc: TWideStringField
      FieldName = 'name_doc'
      Size = 255
    end
    object ADOTable10put: TWideStringField
      FieldName = 'put'
      Size = 255
    end
  end
  object DataSource11: TDataSource
    DataSet = ADOTable11
    Left = 112
    Top = 576
  end
  object ADOTable11: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'hardware'
    Left = 184
    Top = 576
    object ADOTable11id_fio: TIntegerField
      FieldName = 'id_fio'
    end
    object ADOTable11id_otdel: TIntegerField
      FieldName = 'id_otdel'
    end
    object ADOTable11id_mesto: TIntegerField
      FieldName = 'id_mesto'
    end
    object ADOTable11f: TStringField
      FieldKind = fkLookup
      FieldName = 'f'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'first_name'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object ADOTable11i: TStringField
      FieldKind = fkLookup
      FieldName = 'i'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'middle_name'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object ADOTable11o: TStringField
      FieldKind = fkLookup
      FieldName = 'o'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'last_name'
      KeyFields = 'id_fio'
      Lookup = True
    end
    object ADOTable11otd: TStringField
      FieldKind = fkLookup
      FieldName = 'otd'
      LookupDataSet = ADOTable5
      LookupKeyFields = 'ID_otdel'
      LookupResultField = 'Name_otdel'
      KeyFields = 'id_otdel'
      Lookup = True
    end
    object ADOTable11mest: TStringField
      FieldKind = fkLookup
      FieldName = 'mest'
      LookupDataSet = ADOTable6
      LookupKeyFields = 'ID_mesto'
      LookupResultField = 'name_mesto'
      KeyFields = 'id_mesto'
      Lookup = True
    end
  end
  object DataSource12: TDataSource
    DataSet = ADOTable12
    Left = 120
    Top = 632
  end
  object ADOTable12: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'perem'
    Left = 192
    Top = 632
    object ADOTable12id_perem: TAutoIncField
      FieldName = 'id_perem'
      ReadOnly = True
    end
    object ADOTable12id: TIntegerField
      FieldName = 'id'
    end
    object ADOTable12data: TDateTimeField
      FieldName = 'data'
    end
    object ADOTable12id_tip: TWideStringField
      FieldName = 'id_tip'
      Size = 255
    end
    object ADOTable12id_user_old: TWideStringField
      FieldName = 'id_user_old'
      Size = 255
    end
    object ADOTable12id_user_new: TWideStringField
      FieldName = 'id_user_new'
      Size = 255
    end
    object ADOTable12zamet: TWideStringField
      FieldName = 'zamet'
      Size = 255
    end
    object ADOTable12user_old: TStringField
      FieldKind = fkLookup
      FieldName = 'user_old'
      LookupDataSet = ADOTable4
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'first_name'
      KeyFields = 'id_user_old'
      Lookup = True
    end
    object ADOTable12user_new: TStringField
      FieldKind = fkLookup
      FieldName = 'user_new'
      LookupDataSet = ADOTable14
      LookupKeyFields = 'ID_fio'
      LookupResultField = 'first_name'
      KeyFields = 'id_user_new'
      Lookup = True
    end
    object strngfldADOTable12TIP: TStringField
      FieldKind = fkLookup
      FieldName = 'TIP'
      LookupDataSet = ADOTable13
      LookupKeyFields = 'id_tip'
      LookupResultField = 'name_tip'
      KeyFields = 'id_tip'
      Lookup = True
    end
  end
  object DataSource13: TDataSource
    DataSet = ADOTable13
    Left = 240
    Top = 80
  end
  object ADOTable13: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tip_oper'
    Left = 312
    Top = 80
  end
  object DataSource14: TDataSource
    DataSet = ADOTable14
    Left = 240
    Top = 136
  end
  object ADOTable14: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fio'
    Left = 312
    Top = 136
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FIO order by id_FIO')
    Left = 264
    Top = 216
    object ADOQuery2ID_fio: TAutoIncField
      FieldName = 'ID_fio'
      ReadOnly = True
    end
    object ADOQuery2first_name: TWideStringField
      FieldName = 'first_name'
      Size = 255
    end
    object ADOQuery2middle_name: TWideStringField
      FieldName = 'middle_name'
      Size = 255
    end
    object ADOQuery2last_name: TWideStringField
      FieldName = 'last_name'
      Size = 255
    end
    object ADOQuery2dolj: TWideStringField
      FieldName = 'dolj'
      Size = 255
    end
    object ADOQuery2id_otdel: TIntegerField
      FieldName = 'id_otdel'
    end
    object ADOQuery2name_otdel: TStringField
      FieldKind = fkLookup
      FieldName = 'name_otdel'
      LookupDataSet = ADOTable5
      LookupKeyFields = 'ID_otdel'
      LookupResultField = 'Name_otdel'
      KeyFields = 'id_otdel'
      Lookup = True
    end
  end
end
