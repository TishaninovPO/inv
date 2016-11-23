object Form3: TForm3
  Left = 518
  Top = 302
  Width = 263
  Height = 101
  Caption = 'Form3'
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    DataField = 'Naimenovanie'
    DataSource = DataModule2.DataSource1
    TabOrder = 0
  end
  object Button1: TButton
    Left = 168
    Top = 24
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
end
