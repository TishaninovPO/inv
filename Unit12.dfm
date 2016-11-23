object Form12: TForm12
  Left = 1107
  Top = 471
  Width = 371
  Height = 184
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1077#1088#1074#1080#1089#1085#1099#1093' '#1088#1072#1073#1086#1090
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
    Left = 24
    Top = 16
    Width = 89
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 141
    Height = 13
    Caption = #1047#1072#1103#1074#1083#1077#1085#1085#1072#1103' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 192
    Height = 13
    Caption = #1048#1085#1092'-'#1080#1103' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1085#1099#1084' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103#1084
  end
  object DBEdit1: TDBEdit
    Left = 224
    Top = 8
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = DM.DataSource8
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 222
    Top = 40
    Width = 121
    Height = 21
    DataField = 'Neispr'
    DataSource = DM.DataSource8
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 222
    Top = 72
    Width = 121
    Height = 21
    DataField = 'inf_po_remont'
    DataSource = DM.DataSource8
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 412
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
  object DBEdit4: TDBEdit
    Left = 494
    Top = 48
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.DataSource8
    TabOrder = 5
    Visible = False
  end
  object Button3: TButton
    Left = 120
    Top = 104
    Width = 113
    Height = 25
    Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1076#1086#1082'-'#1090#1099
    TabOrder = 6
    OnClick = Button3Click
  end
end
