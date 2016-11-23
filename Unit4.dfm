object Form4: TForm4
  Left = 285
  Top = 249
  Width = 957
  Height = 533
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 475
    Align = alLeft
    Color = clActiveCaption
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Top = 24
      Width = 169
      Height = 30
      Caption = #1058#1080#1087#1099' '#1090#1077#1093#1085#1080#1082#1080
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 56
      Width = 169
      Height = 30
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 88
      Width = 169
      Height = 30
      Caption = #1060'.'#1048'.'#1054'. '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 120
      Width = 169
      Height = 30
      Caption = #1054#1090#1076#1077#1083#1099
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 48
      Top = 416
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 4
      Kind = bkCancel
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 152
      Width = 169
      Height = 30
      Caption = #1052#1077#1089#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1086#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      TabOrder = 5
      OnClick = BitBtn6Click
    end
  end
  object PageControl1: TPageControl
    Left = 185
    Top = 0
    Width = 756
    Height = 475
    ActivePage = TabSheet3
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = #1058#1080#1087#1099' '#1090#1077#1093#1085#1080#1082#1080
      object DBNavigator1: TDBNavigator
        Left = 80
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.DataSource2
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 120
        Width = 633
        Height = 257
        DataSource = DM.DataSource2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name_texniki'
            Title.Caption = #1058#1080#1087' '#1090#1077#1093#1085#1080#1082#1080
            Width = 474
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
      ImageIndex = 1
      object DBNavigator2: TDBNavigator
        Left = 184
        Top = 40
        Width = 240
        Height = 25
        DataSource = DM.DataSource3
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 48
        Top = 120
        Width = 633
        Height = 257
        DataSource = DM.DataSource3
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_name_texniki'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Name_texniki'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_tipa_texniki'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tip'
            Title.Caption = #1058#1080#1087' '#1090#1077#1093#1085#1080#1082#1080
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1060'.'#1048'.'#1054'. '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
      ImageIndex = 2
      object DBNavigator3: TDBNavigator
        Left = 184
        Top = 40
        Width = 240
        Height = 25
        DataSource = DM.DataSource4
        TabOrder = 0
      end
      object DBGrid3: TDBGrid
        Left = 24
        Top = 112
        Width = 697
        Height = 273
        DataSource = DM.DataSource4
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'first_name'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'middle_name'
            Title.Caption = #1048#1084#1103
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dolj'
            Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name_otdel'
            Title.Caption = #1054#1090#1076#1077#1083
            Width = 127
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1054#1090#1076#1077#1083#1099
      ImageIndex = 3
      object DBNavigator4: TDBNavigator
        Left = 184
        Top = 40
        Width = 240
        Height = 25
        DataSource = DM.DataSource5
        TabOrder = 0
      end
      object DBGrid4: TDBGrid
        Left = 48
        Top = 120
        Width = 633
        Height = 257
        DataSource = DM.DataSource5
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Name_otdel'
            Title.Caption = #1048#1084#1103' '#1086#1090#1076#1077#1083#1072
            Width = 526
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1052#1077#1089#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1086#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      ImageIndex = 4
      object DBNavigator5: TDBNavigator
        Left = 184
        Top = 40
        Width = 240
        Height = 25
        DataSource = DM.DataSource6
        TabOrder = 0
      end
      object DBGrid5: TDBGrid
        Left = 48
        Top = 120
        Width = 633
        Height = 257
        DataSource = DM.DataSource6
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name_mesto'
            Title.Caption = #1052#1077#1089#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1086#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            Width = 528
            Visible = True
          end>
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 233
    Top = 32
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N4: TMenuItem
        Caption = #1058#1080#1087#1099' '#1090#1077#1093#1085#1080#1082#1080
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
        OnClick = N5Click
      end
      object SN1: TMenuItem
        Caption = #1060'.'#1048'.'#1054'. '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
        OnClick = SN1Click
      end
      object N6: TMenuItem
        Caption = #1054#1090#1076#1077#1083#1099
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1052#1077#1089#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1086#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
        OnClick = N7Click
      end
    end
  end
end
