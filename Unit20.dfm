object Form20: TForm20
  Left = -1158
  Top = 379
  Width = 404
  Height = 347
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 32
    Width = 29
    Height = 13
    Caption = #1044#1072#1090#1072':'
  end
  object Label2: TLabel
    Left = 80
    Top = 72
    Width = 70
    Height = 13
    Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
  end
  object Label3: TLabel
    Left = 64
    Top = 112
    Width = 89
    Height = 13
    Caption = #1057#1090#1072#1088#1099#1081' '#1074#1083#1072#1076#1077#1083#1077#1094
  end
  object Label4: TLabel
    Left = 64
    Top = 144
    Width = 85
    Height = 13
    Caption = #1053#1086#1074#1099#1081' '#1074#1083#1072#1076#1077#1083#1077#1094
  end
  object Label5: TLabel
    Left = 96
    Top = 176
    Width = 44
    Height = 13
    Caption = #1047#1072#1084#1077#1090#1082#1080
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 24
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = DM.DataSource12
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 160
    Top = 104
    Width = 145
    Height = 21
    DataField = 'user_old'
    DataSource = DM.DataSource12
    TabOrder = 1
  end
  object Button1: TButton
    Left = 600
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 272
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 448
    Top = 8
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.DataSource12
    TabOrder = 4
    Visible = False
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 160
    Top = 136
    Width = 145
    Height = 21
    DataField = 'user_new'
    DataSource = DM.DataSource12
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 160
    Top = 64
    Width = 145
    Height = 21
    DataField = 'TIP'
    DataSource = DM.DataSource12
    TabOrder = 6
  end
  object DBMemo1: TDBMemo
    Left = 160
    Top = 168
    Width = 185
    Height = 89
    DataField = 'zamet'
    DataSource = DM.DataSource12
    TabOrder = 7
  end
end
