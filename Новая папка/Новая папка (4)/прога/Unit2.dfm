object Form2: TForm2
  Left = 485
  Top = 154
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 559
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 136
    Height = 20
    Caption = #1046#1080#1090#1077#1083#1100' '#1075#1086#1088#1086#1076#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 32
    Width = 52
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label3: TLabel
    Left = 64
    Top = 72
    Width = 25
    Height = 13
    Caption = #1048#1084#1103':'
  end
  object Label4: TLabel
    Left = 64
    Top = 112
    Width = 50
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label5: TLabel
    Left = 64
    Top = 152
    Width = 48
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Label6: TLabel
    Left = 64
    Top = 192
    Width = 34
    Height = 13
    Caption = #1040#1076#1088#1077#1089':'
  end
  object Label7: TLabel
    Left = 56
    Top = 240
    Width = 107
    Height = 20
    Caption = #1056#1086#1076#1089#1090#1074#1080#1085#1080#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 64
    Top = 264
    Width = 52
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label9: TLabel
    Left = 64
    Top = 304
    Width = 25
    Height = 13
    Caption = #1048#1084#1103':'
  end
  object Label10: TLabel
    Left = 64
    Top = 344
    Width = 48
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Label11: TLabel
    Left = 64
    Top = 384
    Width = 34
    Height = 13
    Caption = #1040#1076#1088#1077#1089':'
  end
  object Label12: TLabel
    Left = 56
    Top = 48
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 56
    Top = 88
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 122
    Top = 32
    Width = 5
    Height = 13
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 96
    Top = 72
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 48
    Width = 121
    Height = 21
    DataField = #1060#1072#1084#1080#1083#1080#1103
    DataSource = Form1.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 88
    Width = 121
    Height = 21
    DataField = #1048#1084#1103
    DataSource = Form1.DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 64
    Top = 128
    Width = 121
    Height = 21
    DataField = #1054#1090#1095#1077#1089#1090#1074#1086
    DataSource = Form1.DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 168
    Width = 121
    Height = 21
    DataField = #1058#1077#1083#1077#1092#1086#1085
    DataSource = Form1.DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 64
    Top = 208
    Width = 121
    Height = 21
    DataField = #1040#1076#1088#1077#1089
    DataSource = Form1.DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 64
    Top = 280
    Width = 121
    Height = 21
    DataField = #1055#1060#1072#1084#1080#1083#1080#1103
    DataSource = Form1.DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 64
    Top = 320
    Width = 121
    Height = 21
    DataField = #1055#1048#1084#1103
    DataSource = Form1.DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 64
    Top = 360
    Width = 121
    Height = 21
    DataField = #1055#1058#1077#1083#1077#1092#1086#1085
    DataSource = Form1.DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 64
    Top = 400
    Width = 121
    Height = 21
    DataField = #1055#1040#1076#1088#1077#1089
    DataSource = Form1.DataSource1
    TabOrder = 8
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 440
    Width = 81
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 440
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn2Click
  end
end
