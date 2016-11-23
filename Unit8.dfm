object Form8: TForm8
  Left = 507
  Top = 152
  Width = 652
  Height = 569
  Caption = #1057#1087#1080#1089#1072#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 8
    Width = 92
    Height = 13
    Caption = #1057#1087#1080#1089#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
  end
  object Label2: TLabel
    Left = 48
    Top = 40
    Width = 62
    Height = 13
    Caption = #1058#1080#1087' '#1090#1077#1093#1085#1080#1082#1080
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 119
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
  end
  object Label4: TLabel
    Left = 80
    Top = 120
    Width = 20
    Height = 13
    Caption = 'S/N'
  end
  object Label5: TLabel
    Left = 72
    Top = 152
    Width = 58
    Height = 13
    Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
  end
  object Label6: TLabel
    Left = 24
    Top = 192
    Width = 100
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103
  end
  object Label7: TLabel
    Left = 72
    Top = 264
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label8: TLabel
    Left = 80
    Top = 296
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label9: TLabel
    Left = 72
    Top = 336
    Width = 47
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label10: TLabel
    Left = 72
    Top = 368
    Width = 31
    Height = 13
    Caption = #1054#1090#1076#1077#1083
  end
  object Label11: TLabel
    Left = 56
    Top = 392
    Width = 71
    Height = 39
    Caption = #1052#1077#1089#1090#1086' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
    WordWrap = True
  end
  object Label12: TLabel
    Left = 64
    Top = 440
    Width = 67
    Height = 26
    Caption = #1043#1072#1088#1072#1085#1090#1080#1081#1085#1099#1081' '#1089#1088#1086#1082' '#1076#1086
    WordWrap = True
  end
  object Label13: TLabel
    Left = 64
    Top = 232
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object DBEdit4: TDBEdit
    Left = 408
    Top = 16
    Width = 121
    Height = 21
    DataField = 'id_code'
    DataSource = DM.DataSource1
    Enabled = False
    TabOrder = 0
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 472
    Width = 201
    Height = 49
    Caption = #1057#1087#1080#1089#1072#1090#1100
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Barcode1: TBarcode
    Left = 336
    Top = 80
    Width = 288
    Height = 153
    DataBindings = <>
    TabOrder = 2
    ControlData = {
      00000100C41D0000D00F00001900000000080000FFFFFFFF000F0000000B4541
      4E2F554343203132380D45414E202F205543432031323800000352E30B918FCE
      119DE300AA004BB85101000000900120BF020005417269616C01050005001900
      0000000100}
  end
  object DBLookupComboBox8: TDBLookupComboBox
    Left = 400
    Top = 40
    Width = 145
    Height = 21
    DataField = 'code'
    DataSource = DM.DataSource1
    Enabled = False
    TabOrder = 3
  end
  object DBCheckBox1: TDBCheckBox
    Left = 144
    Top = 472
    Width = 113
    Height = 17
    Caption = #1057#1087#1080#1089#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
    DataField = 'true_cpicania'
    DataSource = DM.DataSource1
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnClick = DBCheckBox1Click
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 496
    Width = 121
    Height = 21
    DataField = 'data_cpicania'
    DataSource = DM.DataSource1
    Enabled = False
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 112
    Width = 145
    Height = 21
    DataField = 'Ser_nomer'
    DataSource = DM.DataSource1
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 144
    Width = 145
    Height = 21
    DataField = 'inv_nomer'
    DataSource = DM.DataSource1
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 184
    Width = 145
    Height = 21
    DataField = 'data_preobretenia'
    DataSource = DM.DataSource1
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 144
    Top = 40
    Width = 145
    Height = 21
    DataField = 'tips'
    DataSource = DM.DataSource1
    TabOrder = 9
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 144
    Top = 72
    Width = 145
    Height = 21
    DataField = 'name'
    DataSource = DM.DataSource1
    TabOrder = 10
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 144
    Top = 256
    Width = 145
    Height = 21
    DataField = 'fio'
    DataSource = DM.DataSource1
    TabOrder = 11
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 144
    Top = 288
    Width = 145
    Height = 21
    DataField = 'middle_name'
    DataSource = DM.DataSource1
    TabOrder = 12
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 144
    Top = 328
    Width = 145
    Height = 21
    DataField = 'last_name'
    DataSource = DM.DataSource1
    TabOrder = 13
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 144
    Top = 360
    Width = 145
    Height = 21
    DataField = 'otdel'
    DataSource = DM.DataSource1
    TabOrder = 14
  end
  object DBLookupComboBox7: TDBLookupComboBox
    Left = 144
    Top = 400
    Width = 145
    Height = 21
    DataField = 'mesto'
    DataSource = DM.DataSource1
    TabOrder = 15
  end
  object DBEdit8: TDBEdit
    Left = 144
    Top = 440
    Width = 145
    Height = 21
    DataField = 'data_guarantee'
    DataSource = DM.DataSource1
    TabOrder = 16
  end
  object DBEdit9: TDBEdit
    Left = 144
    Top = 224
    Width = 145
    Height = 21
    DataField = 'kol'
    DataSource = DM.DataSource1
    TabOrder = 17
  end
  object Button7: TButton
    Left = 304
    Top = 416
    Width = 123
    Height = 41
    Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1076#1086#1082'-'#1090#1099
    TabOrder = 18
    OnClick = Button7Click
  end
end
