object Form5student: TForm5student
  Left = 424
  Top = 213
  Width = 362
  Height = 410
  Caption = #1057#1090#1091#1076#1077#1085#1090#1099
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
    Left = 56
    Top = 40
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 45
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label3: TLabel
    Left = 56
    Top = 88
    Width = 20
    Height = 13
    Caption = #1055#1086#1083
  end
  object Label4: TLabel
    Left = 48
    Top = 184
    Width = 35
    Height = 13
    Caption = #1043#1088#1091#1087#1087#1072
  end
  object Button1: TButton
    Left = 64
    Top = 256
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 256
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    DataField = 'FIO'
    DataSource = DataModule2.DataSource2
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 64
    Width = 121
    Height = 21
    DataField = 'Mob'
    DataSource = DataModule2.DataSource2
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 120
    Top = 184
    Width = 145
    Height = 21
    DataField = 'Gr'
    DataSource = DataModule2.DataSource2
    TabOrder = 4
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 120
    Top = 88
    Width = 153
    Height = 65
    Caption = 'DBRadioGroup1'
    DataField = 'Pol'
    DataSource = DataModule2.DataSource2
    Items.Strings = (
      #1052#1091#1078
      #1046#1077#1085)
    TabOrder = 5
  end
end
