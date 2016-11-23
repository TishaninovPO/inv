object Form18: TForm18
  Left = 968
  Top = 499
  Width = 234
  Height = 162
  Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1084#1077#1089#1090#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 40
    Top = 24
    Width = 145
    Height = 21
    DataField = 'mest'
    DataSource = DM.DataSource11
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 224
    Top = 24
    Width = 121
    Height = 21
    DataField = 'id_mesto'
    DataSource = DM.DataSource11
    TabOrder = 1
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 56
    Width = 89
    Height = 41
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
