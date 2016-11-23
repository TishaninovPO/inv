object Form10: TForm10
  Left = 556
  Top = 486
  Width = 616
  Height = 298
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 577
    Height = 193
    DataSource = DM.DataSource9
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_user'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'login'
        Title.Caption = #1051#1086#1075#1080#1085
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passwd'
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Family'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = #1048#1084#1103
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Firsname'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'active'
        Visible = False
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 176
    Top = 8
    Width = 240
    Height = 25
    DataSource = DM.DataSource9
    TabOrder = 1
  end
end
