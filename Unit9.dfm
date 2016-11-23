object Form9: TForm9
  Left = 734
  Top = 321
  Width = 692
  Height = 296
  Caption = #1057#1077#1088#1074#1080#1089#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 665
    Height = 177
    DataSource = DM.DataSource8
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_rem'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Neispr'
        Title.Caption = #1047#1072#1103#1074#1083#1077#1085#1085#1072#1103' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inf_po_remont'
        Title.Caption = #1048#1085#1092'-'#1080#1103' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1085#1099#1084' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103#1084
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_doc'
        Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
        Width = -1
        Visible = False
      end>
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 344
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.DataSource8
    TabOrder = 1
    Visible = False
  end
  object Button1: TButton
    Left = 208
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 208
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 208
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 120
    Top = 208
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 296
    Top = 208
    Width = 129
    Height = 25
    Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1076#1086#1082'-'#1090#1099
    TabOrder = 6
    OnClick = Button5Click
  end
end
