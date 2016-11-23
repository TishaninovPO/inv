object Form1: TForm1
  Left = 316
  Top = 180
  Width = 883
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 875
    Height = 353
    Align = alClient
    BorderStyle = bsNone
    DataSource = DataModule2.DataSource1
    FixedColor = clAqua
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_gruppa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Naimenovanie'
        Width = 460
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 81
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 120
      Top = 32
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 224
      Top = 32
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 344
      Top = 32
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 560
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 488
    Top = 24
    object N41: TMenuItem
      Caption = #1060#1086#1088#1084' 4'
      OnClick = N41Click
    end
  end
end
