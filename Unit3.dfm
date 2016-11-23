object Form2: TForm2
  Left = 482
  Top = 198
  Width = 1149
  Height = 689
  Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 631
    Align = alLeft
    Color = clActiveCaption
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 168
      Width = 32
      Height = 13
      Caption = 'Label2'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 24
      Width = 200
      Height = 30
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1073#1086#1088#1091#1073#1086#1074#1072#1085#1080#1103
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 56
      Width = 200
      Height = 30
      Caption = #1057#1077#1088#1074#1080#1089#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 16
      Top = 88
      Width = 200
      Height = 30
      Caption = #1057#1087#1080#1089#1072#1085#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 16
      Top = 120
      Width = 200
      Height = 30
      Caption = #1054#1090#1095#1077#1090#1099
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 56
      Top = 584
      Width = 99
      Height = 41
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 4
      OnClick = BitBtn5Click
      Kind = bkCancel
    end
    object Button7: TButton
      Left = 104
      Top = 560
      Width = 123
      Height = 41
      Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1076#1086#1082'-'#1090#1099
      TabOrder = 5
      Visible = False
      OnClick = Button7Click
    end
    object NetTree: TTreeView
      Left = 16
      Top = 232
      Width = 201
      Height = 345
      Indent = 19
      TabOrder = 6
      OnClick = NetTreeClick
    end
    object Button12: TButton
      Left = 144
      Top = 192
      Width = 75
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 7
      OnClick = Button12Click
    end
    object Edit3: TEdit
      Left = 8
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 8
    end
  end
  object PageControl1: TPageControl
    Left = 225
    Top = 0
    Width = 908
    Height = 631
    ActivePage = TabSheet4
    Align = alClient
    BiDiMode = bdLeftToRight
    MultiLine = True
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TabPosition = tpBottom
    TabStop = False
    OnChange = PageControl1Change
    OnEnter = PageControl1Enter
    OnMouseDown = PageControl1MouseDown
    OnStartDock = PageControl1StartDock
    object TabSheet1: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1073#1086#1088#1091#1073#1086#1074#1072#1085#1080#1103
      object Label1: TLabel
        Left = 24
        Top = 0
        Width = 211
        Height = 13
        Caption = #1057#1087#1080#1089#1086#1082' '#1086#1073#1086#1088#1091#1073#1086#1074#1072#1085#1080#1103' '#1054#1054#1054' "'#1057#1080#1073#1101#1083#1077#1082#1090#1088#1086'"'
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 72
        Width = 889
        Height = 457
        DataSource = DM.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        OnKeyUp = DBGrid1KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'tips'
            Title.Caption = #1058#1080#1087' '#1090#1077#1093#1085#1080#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ser_nomer'
            Title.Caption = 'S/N'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inv_nomer'
            Title.Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_preobretenia'
            Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fio'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'middle_name'
            Title.Caption = #1048#1084#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'otdel'
            Title.Caption = #1054#1090#1076#1077#1083
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesto'
            Title.Caption = #1052#1077#1089#1090#1086' '#1091#1089#1090#1072#1085#1086#1074#1085#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_guarantee'
            Title.Caption = #1043#1072#1088#1072#1085#1090#1080#1081#1085#1099#1081' '#1088#1077#1084#1086#1085#1090' '#1076#1086':'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kol'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'nomenklat_nomer'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'code'
            Visible = False
          end>
      end
      object Button1: TButton
        Left = 56
        Top = 552
        Width = 91
        Height = 41
        Caption = #1053#1086#1074#1072#1103' '#1090#1077#1093#1085#1080#1082#1072
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 168
        Top = 552
        Width = 121
        Height = 41
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 312
        Top = 552
        Width = 137
        Height = 41
        Caption = #1059#1076#1072#1083#1077#1085#1080#1077
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 464
        Top = 552
        Width = 121
        Height = 41
        Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1077#1088#1074#1080#1089#1085#1099#1093' '#1088#1072#1073#1086#1090
        TabOrder = 4
        WordWrap = True
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 592
        Top = 552
        Width = 121
        Height = 41
        Caption = #1057#1087#1080#1089#1072#1085#1080#1077
        TabOrder = 5
        OnClick = Button5Click
      end
      object Button8: TButton
        Left = 728
        Top = 560
        Width = 75
        Height = 25
        Caption = 'Button8'
        TabOrder = 6
        Visible = False
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 576
        Top = -24
        Width = 113
        Height = 49
        Caption = 'Button9'
        TabOrder = 7
        Visible = False
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 688
        Top = -32
        Width = 145
        Height = 49
        Caption = 'Button10'
        TabOrder = 8
        Visible = False
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 808
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Button11'
        TabOrder = 9
        Visible = False
        OnClick = Button11Click
      end
      object Edit1: TEdit
        Left = 248
        Top = 0
        Width = 121
        Height = 21
        TabOrder = 10
        Visible = False
      end
      object Edit2: TEdit
        Left = 384
        Top = 0
        Width = 121
        Height = 21
        TabOrder = 11
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1077#1088#1074#1080#1089#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 1
      object Label4: TLabel
        Left = 24
        Top = 0
        Width = 197
        Height = 13
        Caption = #1057#1077#1088#1074#1080#1089#1085#1099#1077' '#1088#1072#1073#1086#1090#1099' '#1054#1054#1054' "'#1057#1080#1073#1101#1083#1077#1082#1090#1088#1086'"'
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 24
        Width = 937
        Height = 497
        DataSource = DM.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid4DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tips'
            Title.Caption = #1058#1080#1087' '#1090#1077#1093#1085#1080#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ser_nomer'
            Title.Caption = 'S/N'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inv_nomer'
            Title.Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_preobretenia'
            Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fio'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'middle_name'
            Title.Caption = #1048#1084#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'otdel'
            Title.Caption = #1054#1090#1076#1077#1083
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesto'
            Title.Caption = #1052#1077#1089#1090#1086' '#1091#1089#1090#1072#1085#1086#1074#1085#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_guarantee'
            Title.Caption = #1043#1072#1088#1072#1085#1090#1080#1081#1085#1099#1081' '#1088#1077#1084#1086#1085#1090' '#1076#1086':'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rem_true'
            Width = 64
            Visible = True
          end>
      end
      object Button6: TButton
        Left = 56
        Top = 544
        Width = 177
        Height = 41
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1077#1088#1074#1080#1089#1085#1099#1093' '#1088#1072#1073#1086#1090
        TabOrder = 1
        WordWrap = True
        OnClick = Button6Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1087#1080#1089#1072#1085#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      ImageIndex = 2
      object Label3: TLabel
        Left = 24
        Top = 0
        Width = 223
        Height = 13
        Caption = #1057#1087#1080#1089#1072#1085#1086#1077' '#1086#1073#1086#1088#1091#1073#1086#1074#1072#1085#1080#1077' '#1054#1054#1054' "'#1057#1080#1073#1101#1083#1077#1082#1090#1088#1086'"'
      end
      object DBGrid3: TDBGrid
        Left = 136
        Top = 176
        Width = 320
        Height = 120
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 40
        Width = 937
        Height = 545
        DataSource = DM.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tips'
            Title.Caption = #1058#1080#1087' '#1090#1077#1093#1085#1080#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1077#1093#1085#1080#1082#1080
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ser_nomer'
            Title.Caption = 'S/N'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inv_nomer'
            Title.Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_preobretenia'
            Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_cpicania'
            Title.Caption = #1044#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'true_cpicania'
            Visible = False
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1054#1090#1095#1077#1090#1099
      ImageIndex = 3
      object BitBtn6: TBitBtn
        Left = 16
        Top = 24
        Width = 153
        Height = 65
        Caption = #1060#1086#1088#1084#1072' '#1052#1041'-2'
        TabOrder = 0
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 184
        Top = 24
        Width = 153
        Height = 65
        Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1086#1090#1076#1077#1083#1091
        TabOrder = 1
        OnClick = BitBtn7Click
      end
      object BitBtn8: TBitBtn
        Left = 352
        Top = 24
        Width = 153
        Height = 65
        Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1084#1077#1089#1090#1091
        TabOrder = 2
        OnClick = BitBtn7Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 777
    Top = 64
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
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
    object N8: TMenuItem
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
      object N9: TMenuItem
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = N9Click
      end
    end
  end
end
