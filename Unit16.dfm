object Form16: TForm16
  Left = 876
  Top = 278
  Width = 503
  Height = 160
  Caption = #1054#1090#1095#1105#1090' '#1052#1041'-2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 24
    Top = 16
    Width = 145
    Height = 21
    DataField = 'f'
    DataSource = DM.DataSource11
    TabOrder = 0
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 176
    Top = 16
    Width = 145
    Height = 21
    DataField = 'i'
    DataSource = DM.DataSource11
    TabOrder = 1
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 328
    Top = 16
    Width = 145
    Height = 21
    DataField = 'o'
    DataSource = DM.DataSource11
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 56
    Width = 97
    Height = 33
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object DBEdit1: TDBEdit
    Left = 344
    Top = 56
    Width = 121
    Height = 21
    DataField = 'id_fio'
    DataSource = DM.DataSource11
    TabOrder = 4
    Visible = False
  end
end
