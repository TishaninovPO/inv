object Form13: TForm13
  Left = 380
  Top = 441
  Width = 600
  Height = 339
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
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
  object Button1: TButton
    Left = 136
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 704
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 561
    Height = 169
    DataSource = DM.DataSource10
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_doc'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'name_doc'
        Title.Caption = #1048#1084#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'put'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 199
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 32
    Top = 232
    Width = 113
    Height = 41
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 664
    Top = 248
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.DataSource8
    TabOrder = 4
    Visible = False
  end
  object Button3: TButton
    Left = 720
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 232
    Width = 113
    Height = 41
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 704
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 7
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 288
    Top = 232
    Width = 113
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 8
    OnClick = Button6Click
  end
  object OpenDialog1: TOpenDialog
    Left = 32
  end
end
