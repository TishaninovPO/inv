object Form17: TForm17
  Left = 695
  Top = 575
  Width = 231
  Height = 151
  Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1086#1090#1076#1077#1083#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 24
    Width = 145
    Height = 21
    DataField = 'otd'
    DataSource = DM.DataSource11
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 24
    Width = 121
    Height = 21
    DataField = 'id_otdel'
    DataSource = DM.DataSource11
    TabOrder = 1
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 64
    Width = 105
    Height = 33
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
