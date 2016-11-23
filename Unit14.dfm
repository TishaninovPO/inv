object Form14: TForm14
  Left = 370
  Top = 229
  Width = 456
  Height = 231
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 79
    Height = 13
    Caption = #1048#1084#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object Label2: TLabel
    Left = 0
    Top = 48
    Width = 142
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 80
    Width = 145
    Height = 41
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 216
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 8
    Width = 265
    Height = 21
    DataField = 'name_doc'
    DataSource = DM.DataSource10
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 40
    Width = 265
    Height = 21
    DataField = 'put'
    DataSource = DM.DataSource10
    Enabled = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 128
    Top = 128
    Width = 145
    Height = 41
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 536
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    Visible = False
    OnClick = Button2Click
  end
  object DBEdit3: TDBEdit
    Left = 20
    Top = 240
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.DataSource10
    TabOrder = 6
    Visible = False
  end
  object Button3: TButton
    Left = 170
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    Visible = False
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 48
    Top = 8
  end
end
