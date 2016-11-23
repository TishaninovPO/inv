object Form19: TForm19
  Left = 173
  Top = 231
  Width = 670
  Height = 294
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
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
    Left = 16
    Top = 24
    Width = 617
    Height = 177
    DataSource = DM.DataSource12
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIP'
        Title.Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_old'
        Title.Caption = #1057#1090#1072#1088#1099#1081' '#1074#1083#1072#1076#1077#1083#1080#1094
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_new'
        Title.Caption = #1053#1086#1074#1099#1081' '#1074#1083#1072#1076#1077#1083#1077#1094
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zamet'
        Title.Caption = #1047#1072#1084#1077#1090#1082#1080
        Width = 82
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 32
    Top = 216
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 216
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 120
    Top = 216
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBEdit2: TDBEdit
    Left = 312
    Top = 219
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.DataSource12
    TabOrder = 4
    Visible = False
  end
end
